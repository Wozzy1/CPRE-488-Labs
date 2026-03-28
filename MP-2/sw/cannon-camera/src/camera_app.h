#ifndef CAMERA_APP_H
#define CAMERA_APP_H

#include "xparameters.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xgpiops.h"
#include "xiicps.h"
#include "xaxivdma.h"

#define OV5640_CFG_ONLY
#include "cam/OV5640.h"
#undef OV5640_CFG_ONLY

/* Hardware profile */
#define VDMA_A_DEVID            XPAR_AXI_VDMA_A_DEVICE_ID
#define GPIO_DEVID              XPAR_PS7_GPIO_0_DEVICE_ID
#define CAM_I2C_DEVID           XPAR_PS7_I2C_0_DEVICE_ID

constexpr unsigned int frame_width = 1920U;
constexpr unsigned int frame_height = 1080U;
constexpr uintptr_t frame_baseaddr = 0x0A000000U;

#if defined(XPAR_CSISS_0_BASEADDR)
constexpr uintptr_t csi_baseaddr_tmp = XPAR_CSISS_0_BASEADDR;
#elif defined(XPAR_MIPI_CSI2_RX_SUBSYST_0_BASEADDR)
constexpr uintptr_t csi_baseaddr_tmp = XPAR_MIPI_CSI2_RX_SUBSYST_0_BASEADDR;
#else
constexpr uintptr_t csi_baseaddr_tmp = 0U;
#endif

extern "C" int camera_main(void);

#endif
