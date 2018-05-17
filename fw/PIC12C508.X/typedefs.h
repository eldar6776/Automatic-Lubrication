/******************************************************************************
 *
 *             Brojac za automatsko podmazivanje ILLIG RDM70K
 *
 *                      Definicije tipova
 *
 *******************************************************************************
 * Ime fajla:       typedefs.h
 *
 * Procesor:        PIC16F628
 *
 * Kompajler:       HI-TECH PIC10/12/16 MCUs PRO  V9.70
 *
 * Firma:           Proven d.o.o. Sarajevo
 *
 * Autor:           <mailto> eldar6776@hotmail.com
 *
 ******************************************************************************/
#ifndef TYPEDEFS_H
#define TYPEDEFS_H

typedef unsigned char byte; // 8-bit
typedef unsigned int word; // 16-bit
typedef unsigned long dword; // 32-bit

typedef union _BYTE {
    byte _byte;

    struct {
        unsigned b0 : 1;
        unsigned b1 : 1;
        unsigned b2 : 1;
        unsigned b3 : 1;
        unsigned b4 : 1;
        unsigned b5 : 1;
        unsigned b6 : 1;
        unsigned b7 : 1;
    }; //	end of struct
} BYTE; // end of typedefs union _BYTE

typedef union _WORD {
    word _word;

    struct {
        byte byte0;
        byte byte1;
    }; // End of struct

    struct {
        BYTE Byte0;
        BYTE Byte1;
    }; // End of struct

    struct {
        BYTE low_byte;
        BYTE high_byte;
    };// End of struct
    struct {
        unsigned char lsb;
        unsigned char msb;
    }; // End of struct

    struct {
        byte v[2];
    }; // End of struct
} WORD; // End of typedefs _WORD
#define LSB(a)      ((a).v[0])
#define MSB(a)      ((a).v[1])

typedef enum _BOOL {
    FALSE = 0, TRUE
} BOOL;


/******* D E F I N I C I J E  ************************************************/

#define	HIGH		1
#define	LOW		0
#define	IN		1
#define	OUT		0
#define	INPUT 		1
#define	OUTPUT		0
#define INPUT_PIN	1
#define OUTPUT_PIN	0
#define PIN_HIGH        1
#define PIN_LOW         0
#define	YES		1
#define NOT		0
#define	TRUE            1
#define	FALSE           0



#endif //TYPEDEFS_H
