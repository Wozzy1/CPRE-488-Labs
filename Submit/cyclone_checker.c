/*****************************************************************************
 * Joseph Zambreno
 * Phillip Jones
 * Department of Electrical and Computer Engineering
 * Iowa State University
 *****************************************************************************/

/*****************************************************************************
 * vga_test.c - example VGA out using a v_tc timing controller and vdma
 * module.
 *
 *
 * NOTES:
 * 10/11/13 by JAZ::Design created.
 * 1/15/2018 by PHJ: Update XVtc_Enable, new function that take only one arg
 * 1/16/2018 by PHJ: Upaded to provide students with an option for directly
                     accessing registers via pointers.
 *****************************************************************************/

#include "platform.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xvtc.h"
#include "xaxivdma.h"


u16 test_image[480][640];

int colorSelection(int sel, int row) {
	if (row % 2 == 0) {
		sel = !sel;
	}
	if(sel) {
		return 0x031C;
	} else {
		return 0x04BF;
	}
}

int main() {

	XVtc Vtc;
    XVtc_Config *VtcCfgPtr;

    int i, j;


    // Enable VTC module: Using high-level functions provided by Vendor
    VtcCfgPtr = XVtc_LookupConfig(XPAR_AXI_VDMA_0_DEVICE_ID);
    XVtc_CfgInitialize(&Vtc, VtcCfgPtr, VtcCfgPtr->BaseAddress);
    XVtc_EnableGenerator(&Vtc);

    // Challenge: Can you rewrite the Enable VTC module code by directly accessing
    // the VTC registers using pointers?  (See VTC data sheet, and xparameters.h)

    // VTC_CR[0]   |=  ENABLE_VTC;    // You: Declare VTC_CR and ENABLE_VTC appropriately (before main() )



    // Initialize Test image for VDMA transfer to VGA monitor
    int sel = 0, row = 0;
    for (i = 0; i < 480; i++) { //Vertical lines
      for (j = 0; j < 640; j++) { //Horizontal pixels per line
        if (j > 80 && j < (480+81)) {
        	if ((j - 81) % 60 == 0) {
        		sel = !sel;
        	}
        	test_image[i][j] = colorSelection(sel, row);
        }
        else {
		  test_image[i][j] = 0x0000; // green pixels
		}
      }
      if (i % 60 == 0) {
    	  if (i == 0) continue;
    	  row += 1;
      }
    }

	// Make sure Display information gets flushed from cache to DDR Memory
    Xil_DCacheFlush();
//    Xil_DCacheFlushRange((UINTPTR)test_image, sizeof(test_image));

    // Set up VDMA config registers

    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_CR_OFFSET,  0x03);  // Read Channel: VDMA MM2S Circular Mode and Start bits set, VDMA MM2S Control
    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_HI_FRMBUF_OFFSET, 0x00);  // Read Channel: VDMA MM2S Reg_Index
    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_START_ADDR_OFFSET, test_image);  // Read Channel: VDMA MM2S Frame buffer Start Addr 1
    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_STRD_FRMDLY_OFFSET, 0x0500);  // Read Channel: VDMA MM2S FRM_Delay, and Stride
    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_HSIZE_OFFSET, 0x0500);  // Read Channel: VDMA MM2S HSIZE
    XAxiVdma_WriteReg(XPAR_AXI_VDMA_0_BASEADDR, XAXIVDMA_MM2S_ADDR_OFFSET + XAXIVDMA_VSIZE_OFFSET, 0x01E0);  // Read Channel: VDMA MM2S VSIZE  (Note: Also Starts VDMA transaction)

    // Low-level register acess using pointers
    // Alternative approach for configuring VDMA registers: Instead of using the abstracted functions can you configure and start the VDMA using pointers to directly configure VDMA registers
    // YOU: Declare VDMA_MM2S_XXX (before main) and set values "CHANGE_ME" appropriately, before main()

    // VDMA_MM2S_CR[0]             = CHANGE_ME; // Read Channel: VDMA MM2S Circular/Park Mode and enable the channel
    // VDMA_MM2S_REG_INDEX[0]      = CHANGE_ME; // Read Channel: VDMA MM2S Reg_Index
    // VDMA_MM2S_START_ADDRESS1[0] = CHANGE_ME; // Read channel: VDMA MM2S Frame buffer Start Add 1
    // VDMA_MM2S_FRMDLY_STRIDE[0]  = CHANGE_ME; // Read channel: VDMA MM2S FRM_Delay, and Stride
    // VDMA_MM2S_HSIZE[0]          = CHANGE_ME; // Read channel: VDMA MM2S HSIZE
    // VDMA_MM2S_VSIZE[0]          = CHANGE_ME; // Read channel: VDMA MM2S VSIZE  (Note: Also Starts VDMA transaction)

	
	
	
	
	
    ////////////////////////////////////////////////////////////////
    // Xilinx clean up function
    ////////////////////////////////////////////////////////////////
    cleanup_platform();
	
    return 0;
}
