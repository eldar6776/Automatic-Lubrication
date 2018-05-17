/******************************************************************************
 *
 *             Brojac za automatsko podmazivanje ILLIG RDM70K
 *
 *                     Zaglavlje glavnog programa
 *
 *******************************************************************************
 * Ime fajla:       main.h
 *
 * Procesor:        PIC16F628
 *
 * Kompajler:       HI-TECH PIC10/12/16 MCUs PRO  V9.70
 *
 * Autor:           <mailto> eldar6776@hotmail.com
 *
 ******************************************************************************/

#ifndef MAIN_H
#define MAIN_H

#include "typedefs.h"

/** K O N F I G U R A C I J A    P R O C E S O R A  **************************/

	__CONFIG(MCLREN & WDTDIS & INTIO & UNPROTECT);
/*

/**  D E F I N I C I J E *****************************************************/
/**/
#define PIC_CLK 4000000
#define _XTAL_FREQ  4000000
#define BITNUM(adr, bit)	((unsigned)(&adr)*8+(bit))
//---------------------- P R I S T U P   R A M   V A R I J A B L A M A
#define  TestBit(var,bitno)((var) & (1 <<(bitno)))
#define  SetBit(var, bitno)((var)|=1UL<<(bitno))
#define  ClearBit(var, bitno)((var)&=~(1UL<<(bitno)))

//---------------------- P R I S T U P   R E G I S T R I M A
#define BITNUM(adr, bitno)	((unsigned)(&adr)*8+(bitno))


/** T I M E R *****************************************************************/

#define	TMR0_Init()     (OPTION = 0b10000111) //1:256

/** V A R I J A B L E  *******************************************************/
/*
unsigned char tmp1;
unsigned char output_tmr;
unsigned char led_tmr;
unsigned int counter;
unsigned int dip_sw_value;
*/

/** K O N S T A N T E ********************************************************/


/** M A R K E R I  ***********************************************************/
/*
BYTE sys_flags;
#define OLD_RST     sys_flags.b0
#define OLD_CNT     sys_flags.b1
#define OUT_EN_FL   sys_flags.b2
#define DIP_SW_FL   sys_flags.b3
#define LED_FL      sys_flags.b4

BYTE hc164_shift;
#define OUT0        hc164_shift.b7
#define LED0        hc164_shift.b6
#define CNT_3200    hc164_shift.b5
#define CNT_1600    hc164_shift.b4
#define CNT_800     hc164_shift.b3
#define CNT_400     hc164_shift.b2
#define CNT_200     hc164_shift.b1
#define CNT_100     hc164_shift.b0
*/
/** D E F I N I C I J E  ***********************************************/
/*
#define OutputEnable()      (OUT_EN_FL = TRUE)
#define OutputDisable()     (OUT_EN_FL = FALSE)
#define IsOutputEnabled()   (OUT_EN_FL == TRUE)
#define Output_On()         (OUT0 = LOW)
#define Output_Off()        (OUT0 = HIGH)
#define IsOutput_On()       (OUT0 == LOW)
#define LED_On()            (LED0 = HIGH)
#define LED_Off()           (LED0 = LOW)
#define IsLED_On()          (LED0 == HIGH)
#define SetDIP_SW_100()     (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11111110)
#define SetDIP_SW_200()     (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11111101)
#define SetDIP_SW_400()     (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11111011)
#define SetDIP_SW_800()     (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11110111)
#define SetDIP_SW_1600()    (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11101111)
#define SetDIP_SW_3200()    (hc164_shift._byte |= 0b00111111, hc164_shift._byte &= 0b11011111)
#define ResetDIP_SW()       (hc164_shift._byte |= 0b00111111)
*/
/** P R O T O T I P I   F U N K C I J A  *************************************/

//void HC164_Shift(void);

#endif	/* MAIN_H */

