/********************************************************************
 *
 *            Brojac automatskog podmazivanja za ILLIG RDM70K
 *
 *                    Firmware version 1.02
 *
 *********************************************************************
 *  Ime fajla:      main.c
 *
 *  Procesor:       PIC12F675
 *
 *  Kompajler:      Hi Tech  PIC10/12/16 MCU family V9.70 PRO
 *
 *  IDE:            MPLAB X IDE v1.85 (java 1.7.0_17)
 *
 *  Datum:          4. septembar 2013.
 *
 *  Autor:          eldar6776@hotmail.com
 *
 * Napomena:        flash verzija pic microkontrolera kori?tena za
 *                  debug koda
 *
 ******************************************************************************/
//
/** U K L J U C E N I  ********************************************************/
//
#include <htc.h>
#include "typedefs.h"
//
/** K O N F I G U R A C I J A    P R O C E S O R A  ***************************/
//
    __CONFIG(MCLRDIS & WDTDIS & INTIO & UNPROTECT);

    __IDLOC(5913);   // 5. septembar 2013.
//
//---------------------- P R I S T U P   R A M   V A R I J A B L A M A
//
#define  TestBit(var,bitno)((var) & (1 <<(bitno)))
#define  SetBit(var, bitno)((var)|=1UL<<(bitno))
#define  ClearBit(var, bitno)((var)&=~(1UL<<(bitno)))
//
/** V A R I J A B L E  ********************************************************/
//
unsigned char   tmp1;
unsigned char   output_tmr;
unsigned char   led_tmr;
unsigned char   dip_sw_pcnt;
unsigned int    counter;
unsigned int    dip_sw_value;
//
/** K O N S T A N T E *********************************************************/
//
#define _XTAL_FREQ          4000000     // for delay macro
#define OUTPUT_ACTIV_TIME   40          // x 50ms = 2s output activ time
#define LED_FLASH_TIME      2           // x 50ms = 100ms led flash time
//
/** M A R K E R I  ************************************************************/
//
BYTE sys_flags;
#define OLD_RST     sys_flags.b0
#define OLD_CNT     sys_flags.b1
#define OUT_EN_FL   sys_flags.b2
#define DIP_SW_FL   sys_flags.b3
#define LED_FL      sys_flags.b4
#define SHIFT_FL    sys_flags.b5

BYTE hc164_shift;
#define OUT0        hc164_shift.b7
#define LED0        hc164_shift.b6
#define CNT_3200    hc164_shift.b5
#define CNT_1600    hc164_shift.b4
#define CNT_800     hc164_shift.b3
#define CNT_400     hc164_shift.b2
#define CNT_200     hc164_shift.b1
#define CNT_100     hc164_shift.b0
//
/** D E F I N I C I J E  ******************************************************/
//
#define OutputEnable()      (OUT_EN_FL = TRUE)
#define OutputDisable()     (OUT_EN_FL = FALSE)
#define IsOutputEnabled()   (OUT_EN_FL == TRUE)
#define Output_On()         (OUT0 = LOW)
#define Output_Off()        (OUT0 = HIGH)
#define IsOutput_On()       (OUT0 == LOW)
#define LED_On()            (LED0 = HIGH)
#define LED_Off()           (LED0 = LOW)
#define IsLED_On()          (LED0 == HIGH)
#define SetDipSW_Update()   (DIP_SW_FL = TRUE, dip_sw_pcnt = 0)
#define ResetDipSW_Update() (DIP_SW_FL = FALSE)
#define IsDipSwitchUpdate_Pending()(DIP_SW_FL == TRUE)
#define SetShift_Pending()  (SHIFT_FL = TRUE)
#define ResetShift_Pending()(SHIFT_FL = FALSE)
#define IsShift_Pending()   (SHIFT_FL == TRUE)
#define ResetDIP_SW()       (hc164_shift._byte |= 0b00111111)
#define SetDIP_SW_100()     (ResetDIP_SW(), CNT_100 = LOW)
#define SetDIP_SW_200()     (ResetDIP_SW(), CNT_200 = LOW)
#define SetDIP_SW_400()     (ResetDIP_SW(), CNT_400 = LOW)
#define SetDIP_SW_800()     (ResetDIP_SW(), CNT_800 = LOW)
#define SetDIP_SW_1600()    (ResetDIP_SW(), CNT_1600 = LOW)
#define SetDIP_SW_3200()    (ResetDIP_SW(), CNT_3200 = LOW)
//
//-------------------------------- GPIO
//
#define OUT_DATA    GPIO0
#define OUT_CLK     GPIO1
#define OUT_RST     GPIO2
#define IN_RST      GPIO3
#define IN_CNT      GPIO4
#define DIP_SW      GPIO5
//
#define GPIO_Init() (CMCON = 0x07, ANSEL = 0x00, TRISIO = 0b00111000, GPIO = 0x00)
//
//-------------------------------- TIMER
//
#define	TMR0_Init() (OPTION_REG = 0b10000111, TMR0 = 61)
//
/******************************************************************************/
/***                                                                ***********/
/**  P R O G R A M  A U T O M A T S K O G  P O D M A Z I V A N J A   **********/
/***                                                                ***********/
/******************************************************************************/
//
void main(void){
    //---------------------------- sys init
    GPIO_Init();
    TMR0_Init();
    //---------------------------- ram init
    OLD_RST = IN_RST;
    OLD_CNT = IN_CNT;
    OUT_CLK = LOW;
    OUT_RST = LOW;
    OUT_RST = HIGH;
    dip_sw_pcnt = 0;
    led_tmr = OUTPUT_ACTIV_TIME;
    output_tmr = OUTPUT_ACTIV_TIME;
    //---------------------------- startup config
    LED_On();    
    Output_On();
    ResetDIP_SW();
    SetDipSW_Update();
    SetShift_Pending();
    //---------------------------- loop
    while (1) {
        //------------------------ 50 ms timer
        if (TMR0 == 0xff) {
            TMR0 = 61; // 50ms
            //-------------------- output timer
            if (output_tmr) --output_tmr;
            else if (IsOutput_On()) {
                Output_Off();
                SetShift_Pending();
            }// End of else...
            //-------------------- LED timer
            if (led_tmr) --led_tmr;
            else if (IsLED_On()) {
                LED_Off();
                SetShift_Pending();
            }// End of else ...
        }// End of if tmr0
        //------------------------ check reset input
        if (OLD_RST != IN_RST) {
            OLD_RST = IN_RST;
            if (IN_RST) {
                if (IsOutputEnabled()) {
                    led_tmr = OUTPUT_ACTIV_TIME;
                    LED_On();
                    output_tmr = OUTPUT_ACTIV_TIME;
                    Output_On();
                } else {
                    Output_Off();
                    led_tmr = LED_FLASH_TIME;
                    LED_On();
                }// End of else...
                SetShift_Pending();
                SetDipSW_Update();
            }// End of if...
        }// End of if...
        //------------------------ check machine cycle clock input
        if (OLD_CNT != IN_CNT) {
            OLD_CNT = IN_CNT;
            if (IN_CNT) {
                if (counter) {
                    --counter;
                    if (!led_tmr) led_tmr = LED_FLASH_TIME;
                    LED_On();
                    SetShift_Pending();
                }// End of if...
                if (!counter) {
                    if (IsOutputEnabled()) {
                        led_tmr = OUTPUT_ACTIV_TIME;
                        LED_On();
                        output_tmr = OUTPUT_ACTIV_TIME;
                        Output_On();
                        SetDipSW_Update();
                    } else {
                        Output_Off();
                        LED_Off();
                    }// End of else...
                    SetShift_Pending();
                }// End of else...
            }// End of if...
        }// End of if...
        //------------------------ check dip switch setting
        if (IsDipSwitchUpdate_Pending()) {
            if (dip_sw_pcnt == 0) {
                dip_sw_value = 0;
                SetDIP_SW_100();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if (dip_sw_pcnt == 1) {
                if (DIP_SW == LOW) dip_sw_value += 100;
                SetDIP_SW_200();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if (dip_sw_pcnt == 2) {
                if (DIP_SW == LOW) dip_sw_value += 200;
                SetDIP_SW_400();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if (dip_sw_pcnt == 3) {
                if (DIP_SW == LOW) dip_sw_value += 400;
                SetDIP_SW_800();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if (dip_sw_pcnt == 4) {
                if (DIP_SW == LOW) dip_sw_value += 800;
                SetDIP_SW_1600();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if(dip_sw_pcnt == 5){
                if (DIP_SW == LOW) dip_sw_value += 1600;
                SetDIP_SW_3200();
                SetShift_Pending();
                ++dip_sw_pcnt;
            } else if (dip_sw_pcnt == 6) {
                if (DIP_SW == LOW) dip_sw_value += 3200;
                ResetDIP_SW();
                counter = dip_sw_value;
                if (dip_sw_value == 0) OutputDisable();
                else OutputEnable();
                SetShift_Pending();
                ResetDipSW_Update();
                ++dip_sw_pcnt;
            }// End of else if...
        }// End of if...
        //------------------------ send data to SN74LS164 serial shift register
        if (IsShift_Pending()) {
            tmp1 = 8;
            while (tmp1) {
                if (TestBit(hc164_shift._byte, (tmp1 - 1))) OUT_DATA = HIGH;
                else OUT_DATA = LOW;
                OUT_CLK = HIGH;
                OUT_CLK = LOW;
                tmp1--;
            }// End of while
            ResetShift_Pending();
        }// End of if....
    }// End of while
}// End of main

