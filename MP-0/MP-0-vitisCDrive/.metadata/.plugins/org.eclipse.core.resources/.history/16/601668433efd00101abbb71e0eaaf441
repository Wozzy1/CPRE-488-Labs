/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

void print_switches(void) {
	unsigned int data = (unsigned int)Xil_In32((UINTPTR)0x41220000);
	printf("%u %u %u %u %u %u %u %u\n\r",
			(data >> 7) & 0x1,
			(data >> 6) & 0x1,
			(data >> 5) & 0x1,
			(data >> 4) & 0x1,
			(data >> 3) & 0x1,
			(data >> 2) & 0x1,
			(data >> 1) & 0x1,
			data & 0x1);
}

/**
 * Bit 4 BTNU
 * Bit 3 BTNR
 * Bit 2 BTNL
 * Bit 1 BTND
 * Bit 0 BTNC
 */
u32 access_buttons() {
	u32 buttons = Xil_In32((UINTPTR)0x41210000);
	return buttons;
}


void write_leds(u32 value) {
	u32 current_leds = Xil_In32((UINTPTR)0x41200000);
	Xil_Out32((UINTPTR)0x41200000, current_leds | value);
}

void clear_leds(void) {
	Xil_Out32((UINTPTR)0x41200000, 0x00);
}

volatile unsigned int buttons;
volatile unsigned int prevButtons = 0;
int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n\r");


    for (;;) {
    	buttons = (unsigned int)access_buttons();
//    	if (buttons != prevButtons) {
//			printf("%u %u %u %u %u\n\r",
//					(buttons >> 4) & 0x1,
//					(buttons >> 3) & 0x1,
//					(buttons >> 2) & 0x1,
//					(buttons >> 1) & 0x1,
//					buttons & 0x1);


			// if there is any change between buttons and prevButtons, act accordingly
			if ((buttons & 0b1) ^ (prevButtons & 0b1)) {
				printf("Center pressed\n\r");
				write_leds((u32)0x1);
			}
			if ((buttons & 0b10) ^ (prevButtons & 0b10)) {
				printf("Down pressed\n\r");
				write_leds((u32)0b10);
			}
			if ((buttons & 0b100) ^ (prevButtons & 0b100)) {
				printf("Left pressed\n\r");
				write_leds((u32)0b100);
			}
			if ((buttons & 0b1000) ^ (prevButtons & 0b1000)) {
				printf("Right pressed\n\r");
				write_leds((u32)0b10000);
			}
			if ((buttons & 0b10000) ^ (prevButtons & 0b10000)) {
				printf("Up pressed\n\r");
				write_leds((u32)0b1000000);
			}
			if (!buttons) {
				clear_leds();
			}
//    	}

    	prevButtons = buttons;
    }

    cleanup_platform();
    return 0;
}
