/******************************************************************************
 *
 *             Brojac za automatsko podmazivanje ILLIG RDM70K
 *
 *                Hardverska konfiguracija mikrokontrolera
 *
 *******************************************************************************
 * Ime fajla:       io_cfg.h
 *
 * Procesor:        PIC12F675
 *
 * Kompajler:       HI-TECH PIC10/12/16 MCUs PRO  V9.70
 *
 * IDE:             MPLAB X IDE v1.85 (java 1.7.0_17)
 *
 * Autor:           <mailto> eldar6776@hotmail.com
 *
 ******************************************************************************/

#ifndef IO_CFG_H
#define IO_CFG_H

//
//----------------------------------------------- GPIO
//
#define SER_DATA    GPIO0
#define SER_CLK     GPIO1
#define SER_RST     GPIO2
#define CNT_RST     GPIO3
#define CNT_INC     GPIO4
#define DIP_SW      GPIO5

#define InitGPIO() (CMCON = 0x07, ANSEL = 0x00, TRISIO = 0b00111000, GPIO = 0x00)

#endif	//	IO_CFG_H



