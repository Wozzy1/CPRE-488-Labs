#include "camera_app.h"

#include "sleep.h"

namespace {

constexpr unsigned int cam_pwup_pin = 54U;
constexpr int i2c_busy_timeout_polls = 1000000;
constexpr unsigned char mux_addr_candidates[] = {0x70U, 0x71U, 0x72U, 0x73U, 0x74U, 0x75U, 0x76U, 0x77U};
constexpr unsigned char mux_addr = (0xE0U >> 1);
constexpr unsigned char mux_channel_0 = 0x01U;
constexpr unsigned char ov5640_addr = (0x78U >> 1);
constexpr unsigned char ov5640_id_high = 0x56U;
constexpr unsigned char ov5640_id_low = 0x40U;
constexpr unsigned short ov5640_reg_id_high = 0x300AU;
constexpr unsigned short ov5640_reg_id_low = 0x300BU;

XGpioPs gpio_inst;
XIicPs iic_inst;
XAxiVdma vdma_inst;

int wait_for_i2c_idle(const char *stage)
{
  int polls = i2c_busy_timeout_polls;

  while (XIicPs_BusIsBusy(&iic_inst) && polls-- > 0) {
  }

  if (polls <= 0) {
    xil_printf("ERROR: I2C bus busy timeout at %s\r\n", stage);
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

int init_gpio(void)
{
  XGpioPs_Config *gpio_cfg = XGpioPs_LookupConfig(GPIO_DEVID);
  if (gpio_cfg == nullptr) {
    xil_printf("ERROR: GPIO config not found\r\n");
    return XST_FAILURE;
  }

  if (XGpioPs_CfgInitialize(&gpio_inst, gpio_cfg, gpio_cfg->BaseAddr) != XST_SUCCESS) {
    xil_printf("ERROR: GPIO init failed\r\n");
    return XST_FAILURE;
  }

  XGpioPs_SetDirectionPin(&gpio_inst, cam_pwup_pin, 1U);
  XGpioPs_SetOutputEnablePin(&gpio_inst, cam_pwup_pin, 1U);
  return XST_SUCCESS;
}

int init_i2c(void)
{
  XIicPs_Config *iic_cfg = XIicPs_LookupConfig(CAM_I2C_DEVID);
  if (iic_cfg == nullptr) {
    xil_printf("ERROR: I2C config not found\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_CfgInitialize(&iic_inst, iic_cfg, iic_cfg->BaseAddress) != XST_SUCCESS) {
    xil_printf("ERROR: I2C init failed\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_SelfTest(&iic_inst) != XST_SUCCESS) {
    xil_printf("ERROR: I2C self-test failed\r\n");
    return XST_FAILURE;
  }

  if (XIicPs_SetSClk(&iic_inst, 100000U) != XST_SUCCESS) {
    xil_printf("ERROR: I2C clock setup failed\r\n");
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

int i2c_write_bytes(unsigned char dev_addr, unsigned char *buf, int len)
{
  if (XIicPs_MasterSendPolled(&iic_inst, buf, len, dev_addr) != XST_SUCCESS) {
    xil_printf("ERROR: I2C send failed addr=0x%02x len=%d\r\n", dev_addr, len);
    return XST_FAILURE;
  }

  return wait_for_i2c_idle("MasterSendPolled");
}

int try_select_i2c_mux(void)
{
  unsigned char mux_sel = mux_channel_0;

  for (unsigned int i = 0; i < sizeof(mux_addr_candidates) / sizeof(mux_addr_candidates[0]); ++i) {
    unsigned char addr = mux_addr_candidates[i];
    xil_printf("camera_main: trying I2C mux addr 0x%02x\r\n", addr);
    if (i2c_write_bytes(addr, &mux_sel, 1) == XST_SUCCESS) {
      xil_printf("camera_main: I2C mux selected at 0x%02x\r\n", addr);
      return XST_SUCCESS;
    }
  }

  xil_printf("camera_main: no I2C mux responded, trying direct camera access\r\n");
  return XST_FAILURE;
}

int ov5640_write_reg(unsigned short reg_addr, unsigned char reg_data)
{
  unsigned char buf[3];
  buf[0] = static_cast<unsigned char>((reg_addr >> 8) & 0xFFU);
  buf[1] = static_cast<unsigned char>(reg_addr & 0xFFU);
  buf[2] = reg_data;
  return i2c_write_bytes(ov5640_addr, buf, 3);
}

int ov5640_read_reg(unsigned short reg_addr, unsigned char *reg_data)
{
  unsigned char addr_buf[2];
  addr_buf[0] = static_cast<unsigned char>((reg_addr >> 8) & 0xFFU);
  addr_buf[1] = static_cast<unsigned char>(reg_addr & 0xFFU);

  XIicPs_SetOptions(&iic_inst, XIICPS_REP_START_OPTION);
  if (XIicPs_MasterSendPolled(&iic_inst, addr_buf, 2, ov5640_addr) != XST_SUCCESS) {
    XIicPs_ClearOptions(&iic_inst, XIICPS_REP_START_OPTION);
    xil_printf("ERROR: I2C reg address write failed reg=0x%04x\r\n", reg_addr);
    return XST_FAILURE;
  }

  if (XIicPs_MasterRecvPolled(&iic_inst, reg_data, 1, ov5640_addr) != XST_SUCCESS) {
    XIicPs_ClearOptions(&iic_inst, XIICPS_REP_START_OPTION);
    xil_printf("ERROR: I2C reg read failed reg=0x%04x\r\n", reg_addr);
    return XST_FAILURE;
  }
  if (wait_for_i2c_idle("ReadRegData") != XST_SUCCESS) {
    XIicPs_ClearOptions(&iic_inst, XIICPS_REP_START_OPTION);
    return XST_FAILURE;
  }
  XIicPs_ClearOptions(&iic_inst, XIICPS_REP_START_OPTION);

  return XST_SUCCESS;
}

int ov5640_write_config(const digilent::OV5640_cfg::config_word_t *cfg, size_t cfg_size)
{
  for (size_t i = 0; i < cfg_size; ++i) {
    if (ov5640_write_reg(cfg[i].addr, cfg[i].data) != XST_SUCCESS) {
      xil_printf("ERROR: camera reg write failed at 0x%04x\r\n", cfg[i].addr);
      return XST_FAILURE;
    }
  }
  return XST_SUCCESS;
}

int init_camera_sensor(void)
{
  unsigned char id_h = 0U;
  unsigned char id_l = 0U;

  xil_printf("camera_main: power cycling camera\r\n");
  XGpioPs_WritePin(&gpio_inst, cam_pwup_pin, 0U);
  usleep(1000000U);
  XGpioPs_WritePin(&gpio_inst, cam_pwup_pin, 1U);
  usleep(1000000U);

  xil_printf("camera_main: selecting I2C mux\r\n");
  (void)try_select_i2c_mux();

  xil_printf("camera_main: reading camera ID\r\n");
  if (ov5640_read_reg(ov5640_reg_id_high, &id_h) != XST_SUCCESS ||
      ov5640_read_reg(ov5640_reg_id_low, &id_l) != XST_SUCCESS) {
    xil_printf("ERROR: camera ID read failed\r\n");
    return XST_FAILURE;
  }

  if (id_h != ov5640_id_high || id_l != ov5640_id_low) {
    xil_printf("ERROR: camera ID mismatch got %02x %02x\r\n", id_h, id_l);
    return XST_FAILURE;
  }

  xil_printf("camera_main: camera ID ok %02x %02x\r\n", id_h, id_l);

  if (ov5640_write_reg(0x3103U, 0x11U) != XST_SUCCESS ||
      ov5640_write_reg(0x3008U, 0x82U) != XST_SUCCESS) {
    xil_printf("ERROR: camera soft reset failed\r\n");
    return XST_FAILURE;
  }
  usleep(1000000U);

  xil_printf("camera_main: writing init config\r\n");
  if (ov5640_write_config(digilent::OV5640_cfg::cfg_init_,
                          sizeof(digilent::OV5640_cfg::cfg_init_) / sizeof(digilent::OV5640_cfg::cfg_init_[0])) != XST_SUCCESS) {
    return XST_FAILURE;
  }

  xil_printf("camera_main: writing mode config\r\n");
  if (ov5640_write_config(digilent::OV5640_cfg::cfg_1080p_30fps_336M_mipi_,
                          sizeof(digilent::OV5640_cfg::cfg_1080p_30fps_336M_mipi_) /
                          sizeof(digilent::OV5640_cfg::cfg_1080p_30fps_336M_mipi_[0])) != XST_SUCCESS) {
    return XST_FAILURE;
  }

  xil_printf("camera_main: writing AWB config\r\n");
  if (ov5640_write_config(digilent::OV5640_cfg::cfg_advanced_awb_,
                          sizeof(digilent::OV5640_cfg::cfg_advanced_awb_) /
                          sizeof(digilent::OV5640_cfg::cfg_advanced_awb_[0])) != XST_SUCCESS) {
    return XST_FAILURE;
  }

  if (ov5640_write_reg(0x3008U, 0x02U) != XST_SUCCESS) {
    xil_printf("ERROR: camera power-up failed\r\n");
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

int init_vdma_write_path(void)
{
  XAxiVdma_Config *vdma_cfg = XAxiVdma_LookupConfig(VDMA_A_DEVID);
  XAxiVdma_DmaSetup write_cfg;
  unsigned int frame_store_addrs[XAXIVDMA_MAX_FRAMESTORE];
  unsigned int addr = static_cast<unsigned int>(frame_baseaddr);
  unsigned int i = 0U;
  int polls = 1000;

  if (vdma_cfg == nullptr) {
    xil_printf("ERROR: VDMA config not found\r\n");
    return XST_FAILURE;
  }

  xil_printf("camera_main: VDMA cfg base=0x%08lx\r\n", (unsigned long)vdma_cfg->BaseAddress);

  if (XAxiVdma_CfgInitialize(&vdma_inst, vdma_cfg, vdma_cfg->BaseAddress) != XST_SUCCESS) {
    xil_printf("ERROR: VDMA init failed\r\n");
    return XST_FAILURE;
  }

  XAxiVdma_ChannelReset(&vdma_inst.WriteChannel);
  while (polls-- > 0 && XAxiVdma_ChannelResetNotDone(&vdma_inst.WriteChannel)) {
  }
  if (polls <= 0) {
    xil_printf("ERROR: VDMA write reset timed out\r\n");
    return XST_FAILURE;
  }

  write_cfg.VertSizeInput = frame_height;
  write_cfg.HoriSizeInput = frame_width * vdma_inst.WriteChannel.StreamWidth;
  write_cfg.Stride = frame_width * vdma_inst.WriteChannel.StreamWidth;
  write_cfg.FrameDelay = 0U;
  write_cfg.EnableCircularBuf = 1U;
  write_cfg.EnableSync = 1U;
  write_cfg.PointNum = 0U;
  write_cfg.EnableFrameCounter = 0U;
  write_cfg.FixedFrameStoreAddr = 0U;
  write_cfg.GenLockRepeat = 1U;

  if (XAxiVdma_DmaConfig(&vdma_inst, XAXIVDMA_WRITE, &write_cfg) != XST_SUCCESS) {
    xil_printf("ERROR: VDMA write config failed\r\n");
    return XST_FAILURE;
  }

  for (i = 0U; i < static_cast<unsigned int>(vdma_inst.MaxNumFrames); ++i) {
    frame_store_addrs[i] = addr;
    addr += write_cfg.Stride * frame_height;
  }

  if (XAxiVdma_DmaSetBufferAddr(&vdma_inst, XAXIVDMA_WRITE, frame_store_addrs) != XST_SUCCESS) {
    xil_printf("ERROR: VDMA buffer address setup failed\r\n");
    return XST_FAILURE;
  }

  XAxiVdma_SetFrmStore(&vdma_inst, vdma_inst.MaxNumFrames, XAXIVDMA_WRITE);
  XAxiVdma_ClearChannelErrors(&vdma_inst.WriteChannel, XAXIVDMA_SR_ERR_ALL_MASK);

  if (XAxiVdma_DmaStart(&vdma_inst, XAXIVDMA_WRITE) != XST_SUCCESS) {
    xil_printf("ERROR: VDMA write start failed\r\n");
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}

} // namespace

extern "C" int camera_main(void)
{
  xil_printf("camera_main: FSBL camera bring-up start\r\n");

  if (init_gpio() != XST_SUCCESS) {
    return XST_FAILURE;
  }
  xil_printf("camera_main: GPIO init ok\r\n");

  if (init_i2c() != XST_SUCCESS) {
    return XST_FAILURE;
  }
  xil_printf("camera_main: I2C init ok\r\n");

  if (init_vdma_write_path() != XST_SUCCESS) {
    return XST_FAILURE;
  }
  xil_printf("camera_main: VDMA init ok\r\n");

  if (csi_baseaddr_tmp != 0U) {
    xil_printf("camera_main: CSI base detected at 0x%08lx\r\n", (unsigned long)csi_baseaddr_tmp);
  }

  if (init_camera_sensor() != XST_SUCCESS) {
    return XST_FAILURE;
  }

  if (csi_baseaddr_tmp != 0U) {
    xil_printf("camera_main: leaving CSI control to hardware defaults\r\n");
  }

  xil_printf("camera_main: FSBL camera bring-up done\r\n");
  return XST_SUCCESS;
}
