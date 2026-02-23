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
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"

#define PPM_BASE XPAR_AXI_PPM4_0_S00_AXI_BASEADDR

#define REG0   0x00
#define REG1   0x04
#define REG4   0x10
#define REG5   0x14
#define REG6   0x18
#define REG7   0x1C
#define REG8   0x20
#define REG9   0x24
#define REG10  0x28
#define REG11  0x2C
#define REG12  0x30
#define REG13  0x34
#define REG14  0x38
#define REG15  0x3C
#define CAPTURE_COUNT 6U
#define MAX_SAVED_FRAMES 256U

static u32 saved_frames[MAX_SAVED_FRAMES][CAPTURE_COUNT];
static u32 saved_count = 0U;
static int max_frames_reported = 0;
static u32 record_index = 0U;
static u32 play_index = 0U;

static void save_register_snapshot(u32 frame_idx)
{
    saved_frames[frame_idx][0] = Xil_In32(PPM_BASE + REG10);
    saved_frames[frame_idx][1] = Xil_In32(PPM_BASE + REG11);
    saved_frames[frame_idx][2] = Xil_In32(PPM_BASE + REG12);
    saved_frames[frame_idx][3] = Xil_In32(PPM_BASE + REG13);
    saved_frames[frame_idx][4] = Xil_In32(PPM_BASE + REG14);
    saved_frames[frame_idx][5] = Xil_In32(PPM_BASE + REG15);
}

static void load_most_recent_frame(void)
{
    /* Copy the latest captured frame (r10..r15) into generator regs (r4..r9). */
    Xil_Out32(PPM_BASE + REG4, Xil_In32(PPM_BASE + REG10));
    Xil_Out32(PPM_BASE + REG5, Xil_In32(PPM_BASE + REG11));
    Xil_Out32(PPM_BASE + REG6, Xil_In32(PPM_BASE + REG12));
    Xil_Out32(PPM_BASE + REG7, Xil_In32(PPM_BASE + REG13));
    Xil_Out32(PPM_BASE + REG8, Xil_In32(PPM_BASE + REG14));
    Xil_Out32(PPM_BASE + REG9, Xil_In32(PPM_BASE + REG15));
}

/* SW0 comes from AXI GPIO channel 1, bit 0. */
#define SW0_MASK 0x1U
/* SW1 enables software debug UART prints. */
#define SW1_MASK 0x2U
/* SW2 is bit 2 on the same switch GPIO input. */
#define SW2_MASK 0x4U
/* SW3 is bit 3 on the same switch GPIO input. */
#define SW3_MASK 0x8U
/* Button bit mapping: bit4=BTNU, bit3=BTNR, bit2=BTNL, bit1=BTND, bit0=BTNC */
#define BTNC_MASK 0x1U
#define BTND_MASK 0x2U
#define BTNL_MASK 0x4U
#define BTNR_MASK 0x8U
#define BTNU_MASK 0x10U

#if defined(XPAR_AXI_GPIO_1_BASEADDR)
#define SW_GPIO_BASEADDR XPAR_AXI_GPIO_1_BASEADDR
#elif defined(XPAR_GPIO_1_BASEADDR)
#define SW_GPIO_BASEADDR XPAR_GPIO_1_BASEADDR
#elif defined(XPAR_AXI_GPIO_0_BASEADDR)
#define SW_GPIO_BASEADDR XPAR_AXI_GPIO_0_BASEADDR
#elif defined(XPAR_GPIO_0_BASEADDR)
#define SW_GPIO_BASEADDR XPAR_GPIO_0_BASEADDR
#else
/* Matches your previous MP-0 style if BSP macro is missing. */
#define SW_GPIO_BASEADDR 0x41210000U
#endif

#if defined(XPAR_AXI_GPIO_2_BASEADDR)
#define BTN_GPIO_BASEADDR XPAR_AXI_GPIO_2_BASEADDR
#elif defined(XPAR_GPIO_2_BASEADDR)
#define BTN_GPIO_BASEADDR XPAR_GPIO_2_BASEADDR
#elif defined(XPAR_AXI_GPIO_0_BASEADDR)
#define BTN_GPIO_BASEADDR XPAR_AXI_GPIO_0_BASEADDR
#elif defined(XPAR_GPIO_0_BASEADDR)
#define BTN_GPIO_BASEADDR XPAR_GPIO_0_BASEADDR
#else
/* Update this fallback if your buttons are on another AXI GPIO base. */
#define BTN_GPIO_BASEADDR 0x41200000U
#endif

static inline u32 access_switches(void)
{
    return Xil_In32((UINTPTR)SW_GPIO_BASEADDR);
}

static inline u32 access_buttons(void)
{
    return Xil_In32((UINTPTR)BTN_GPIO_BASEADDR);
}

int main()
{
    int last_sw0 = -1;
    int last_sw1 = -1;
    int last_sw2 = -1;
    int last_sw3 = -1;
    int prev_btnc = 0;
    int prev_btnd = 0;
    int prev_btnl = 0;
    int prev_btnr = 0;
    int prev_btnu = 0;
    u32 prev_reg1 = Xil_In32(PPM_BASE + REG1);

    init_platform();

    print("AXI PPM relay mode by SW0\r\n");

    while (1) {
        u32 sw_data = access_switches();
        u32 btn_data = access_buttons();
        int sw0 = ((sw_data & SW0_MASK) != 0U) ? 1 : 0;
        int sw1 = ((sw_data & SW1_MASK) != 0U) ? 1 : 0;
        int sw2 = ((sw_data & SW2_MASK) != 0U) ? 1 : 0;
        int sw3 = ((sw_data & SW3_MASK) != 0U) ? 1 : 0;
        int btnc = ((btn_data & BTNC_MASK) != 0U) ? 1 : 0;
        int btnd = ((btn_data & BTND_MASK) != 0U) ? 1 : 0;
        int btnl = ((btn_data & BTNL_MASK) != 0U) ? 1 : 0;
        int btnr = ((btn_data & BTNR_MASK) != 0U) ? 1 : 0;
        int btnu = ((btn_data & BTNU_MASK) != 0U) ? 1 : 0;
        int btnc_rise = (btnc == 1 && prev_btnc == 0);
        int btnd_rise = (btnd == 1 && prev_btnd == 0);
        int btnl_rise = (btnl == 1 && prev_btnl == 0);
        int btnr_rise = (btnr == 1 && prev_btnr == 0);
        int btnu_rise = (btnu == 1 && prev_btnu == 0);

        if (btnc_rise) {
            xil_printf("BTNC pressed -> exiting application\r\n");
            break;
        }

        if (sw0 != last_sw0) {
            if (sw0 == 0) {
                Xil_Out32(PPM_BASE + REG0, 0U);  /* hardware relay */
                xil_printf("SW0=0 -> hardware relay (REG0=%u)\r\n",
                           (u32)Xil_In32(PPM_BASE + REG0));
            } else {
                Xil_Out32(PPM_BASE + REG0, 1U);  /* software relay */
                load_most_recent_frame();

                xil_printf("SW0=1 -> software relay (REG0=%u)\r\n",
                           (u32)Xil_In32(PPM_BASE + REG0));
            }
            last_sw0 = sw0;
        }

        if (sw0 == 1) {
            load_most_recent_frame();
        }

        if (sw1 != last_sw1) {
            if (sw1 == 1) {
                xil_printf("SW1=1 -> debug mode enabled\r\n");
            } else {
                xil_printf("SW1=0 -> debug mode disabled\r\n");
            }
            last_sw1 = sw1;
        }

        if (sw2 != last_sw2) {
            if (sw2 == 1) {
                prev_reg1 = Xil_In32(PPM_BASE + REG1);
                xil_printf("SW2=1 -> record mode enabled\r\n");
            } else {
                xil_printf("SW2=0 -> record mode disabled\r\n");
            }
            last_sw2 = sw2;
        }

        if (sw3 != last_sw3) {
            if (sw3 == 1) {
                xil_printf("SW3=1 -> play mode enabled\r\n");
            } else {
                xil_printf("SW3=0 -> play mode disabled\r\n");
            }
            last_sw3 = sw3;
        }

        if (sw2 == 1) {
            if (btnd_rise) {
                xil_printf("BTND held -> continuous recording enabled\r\n");
            }

            if (btnu_rise) {
                xil_printf("BTNU held -> continuous rewind enabled\r\n");
            }

            u32 reg1_now = Xil_In32(PPM_BASE + REG1);
            if (reg1_now != prev_reg1) {
                if (btnu == 1) {
                    if (record_index > 0U) {
                        record_index--;
                        xil_printf("Rewind step -> record index %u\r\n", record_index);
                    }
                } else if (btnd == 1) {
                    if (record_index < MAX_SAVED_FRAMES) {
                        save_register_snapshot(record_index);
                        xil_printf(
                            "Saved frame %u: r10=%u r11=%u r12=%u r13=%u r14=%u r15=%u\r\n",
                            record_index,
                            saved_frames[record_index][0],
                            saved_frames[record_index][1],
                            saved_frames[record_index][2],
                            saved_frames[record_index][3],
                            saved_frames[record_index][4],
                            saved_frames[record_index][5]
                        );
                        record_index++;
                        if (record_index > saved_count) {
                            saved_count = record_index;
                        }
                        if (record_index == MAX_SAVED_FRAMES && !max_frames_reported) {
                            xil_printf("Max frames saved (%u). Further frames will not be stored.\r\n",
                                       (u32)MAX_SAVED_FRAMES);
                            max_frames_reported = 1;
                        }
                    } else if (!max_frames_reported) {
                        xil_printf("Max frames saved (%u). Further frames will not be stored.\r\n",
                                   (u32)MAX_SAVED_FRAMES);
                        max_frames_reported = 1;
                    }
                }
                prev_reg1 = reg1_now;
            }
        }

        if (sw3 == 1) {
            if (btnl == 1) {
                if (play_index > 0U) {
                    play_index--;
                }
                xil_printf("BTNL held -> play index %u\r\n", play_index);
            }

            if (btnr == 1) {
                if (saved_count == 0U) {
                    xil_printf("BTNR held -> no saved frames to play\r\n");
                } else {
                    Xil_Out32(PPM_BASE + REG0, 1U); /* force software relay mode for playback */
                    Xil_Out32(PPM_BASE + REG4, saved_frames[play_index][0]);
                    Xil_Out32(PPM_BASE + REG5, saved_frames[play_index][1]);
                    Xil_Out32(PPM_BASE + REG6, saved_frames[play_index][2]);
                    Xil_Out32(PPM_BASE + REG7, saved_frames[play_index][3]);
                    Xil_Out32(PPM_BASE + REG8, saved_frames[play_index][4]);
                    Xil_Out32(PPM_BASE + REG9, saved_frames[play_index][5]);

                    xil_printf("BTNR played frame %u: r4=%u r5=%u r6=%u r7=%u r8=%u r9=%u\r\n",
                               play_index,
                               saved_frames[play_index][0],
                               saved_frames[play_index][1],
                               saved_frames[play_index][2],
                               saved_frames[play_index][3],
                               saved_frames[play_index][4],
                               saved_frames[play_index][5]);

                    if (play_index + 1U < saved_count) {
                        play_index++;
                    }
                }
            }
        }

        if (sw1 == 1) {
            xil_printf("DBG: r10=%u r11=%u r12=%u r13=%u r14=%u r15=%u\r\n",
                       (u32)Xil_In32(PPM_BASE + REG10),
                       (u32)Xil_In32(PPM_BASE + REG11),
                       (u32)Xil_In32(PPM_BASE + REG12),
                       (u32)Xil_In32(PPM_BASE + REG13),
                       (u32)Xil_In32(PPM_BASE + REG14),
                       (u32)Xil_In32(PPM_BASE + REG15));
        }

        prev_btnc = btnc;
        prev_btnd = btnd;
        prev_btnl = btnl;
        prev_btnr = btnr;
        prev_btnu = btnu;
        usleep(100000);
    }

    cleanup_platform();
    return 0;
}
