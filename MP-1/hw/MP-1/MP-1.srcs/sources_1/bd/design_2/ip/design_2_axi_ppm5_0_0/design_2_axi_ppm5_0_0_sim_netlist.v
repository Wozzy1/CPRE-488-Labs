// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Feb 23 00:06:31 2026
// Host        : CO2041-11 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cihem/CPRE-488-Labs/MP-1/hw/MP-1/MP-1.srcs/sources_1/bd/design_2/ip/design_2_axi_ppm5_0_0/design_2_axi_ppm5_0_0_sim_netlist.v
// Design      : design_2_axi_ppm5_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_axi_ppm5_0_0,axi_ppm5_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_ppm5_v1_0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_2_axi_ppm5_0_0
   (s00_ppm_in,
    s00_ppm_out,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input s00_ppm_in;
  output s00_ppm_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_ppm_in;
  wire s00_ppm_out;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_2_axi_ppm5_0_0_axi_ppm5_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_ppm_in(s00_ppm_in),
        .s00_ppm_out(s00_ppm_out));
endmodule

(* ORIG_REF_NAME = "axi_ppm5_v1_0" *) 
module design_2_axi_ppm5_0_0_axi_ppm5_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_ppm_out,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_ppm_in,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_ppm_out;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_ppm_in;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_ppm5_v1_0_S00_AXI_inst_n_4;
  wire axi_rvalid_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_ppm_in;
  wire s00_ppm_out;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(axi_ppm5_v1_0_S00_AXI_inst_n_4),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  design_2_axi_ppm5_0_0_axi_ppm5_v1_0_S00_AXI axi_ppm5_v1_0_S00_AXI_inst
       (.aw_en_reg_0(axi_ppm5_v1_0_S00_AXI_inst_n_4),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_ppm_in(s00_ppm_in),
        .s00_ppm_out(s00_ppm_out));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "axi_ppm5_v1_0_S00_AXI" *) 
module design_2_axi_ppm5_0_0_axi_ppm5_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    aw_en_reg_0,
    s00_axi_rvalid,
    s00_axi_rdata,
    s00_ppm_out,
    s00_axi_aclk,
    s00_ppm_in,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_arvalid);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  output s00_ppm_out;
  input s00_axi_aclk;
  input s00_ppm_in;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_arvalid;

  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [31:0]c0_u;
  wire \c0_u[0]_i_1_n_0 ;
  wire \c0_u[10]_i_1_n_0 ;
  wire \c0_u[11]_i_1_n_0 ;
  wire \c0_u[12]_i_1_n_0 ;
  wire \c0_u[13]_i_1_n_0 ;
  wire \c0_u[14]_i_1_n_0 ;
  wire \c0_u[15]_i_1_n_0 ;
  wire \c0_u[16]_i_1_n_0 ;
  wire \c0_u[17]_i_1_n_0 ;
  wire \c0_u[18]_i_1_n_0 ;
  wire \c0_u[19]_i_1_n_0 ;
  wire \c0_u[1]_i_1_n_0 ;
  wire \c0_u[20]_i_1_n_0 ;
  wire \c0_u[21]_i_1_n_0 ;
  wire \c0_u[22]_i_1_n_0 ;
  wire \c0_u[23]_i_1_n_0 ;
  wire \c0_u[24]_i_1_n_0 ;
  wire \c0_u[25]_i_1_n_0 ;
  wire \c0_u[26]_i_1_n_0 ;
  wire \c0_u[27]_i_1_n_0 ;
  wire \c0_u[28]_i_1_n_0 ;
  wire \c0_u[29]_i_1_n_0 ;
  wire \c0_u[2]_i_1_n_0 ;
  wire \c0_u[30]_i_1_n_0 ;
  wire \c0_u[31]_i_1_n_0 ;
  wire \c0_u[31]_i_2_n_0 ;
  wire \c0_u[3]_i_1_n_0 ;
  wire \c0_u[4]_i_1_n_0 ;
  wire \c0_u[5]_i_1_n_0 ;
  wire \c0_u[6]_i_1_n_0 ;
  wire \c0_u[7]_i_1_n_0 ;
  wire \c0_u[8]_i_1_n_0 ;
  wire \c0_u[9]_i_1_n_0 ;
  wire c1_u;
  wire \c1_u[0]_i_1_n_0 ;
  wire \c1_u[10]_i_1_n_0 ;
  wire \c1_u[11]_i_1_n_0 ;
  wire \c1_u[12]_i_1_n_0 ;
  wire \c1_u[13]_i_1_n_0 ;
  wire \c1_u[14]_i_1_n_0 ;
  wire \c1_u[15]_i_1_n_0 ;
  wire \c1_u[16]_i_1_n_0 ;
  wire \c1_u[17]_i_1_n_0 ;
  wire \c1_u[18]_i_1_n_0 ;
  wire \c1_u[19]_i_1_n_0 ;
  wire \c1_u[1]_i_1_n_0 ;
  wire \c1_u[20]_i_1_n_0 ;
  wire \c1_u[21]_i_1_n_0 ;
  wire \c1_u[22]_i_1_n_0 ;
  wire \c1_u[23]_i_1_n_0 ;
  wire \c1_u[24]_i_1_n_0 ;
  wire \c1_u[25]_i_1_n_0 ;
  wire \c1_u[26]_i_1_n_0 ;
  wire \c1_u[27]_i_1_n_0 ;
  wire \c1_u[28]_i_1_n_0 ;
  wire \c1_u[29]_i_1_n_0 ;
  wire \c1_u[2]_i_1_n_0 ;
  wire \c1_u[30]_i_1_n_0 ;
  wire \c1_u[31]_i_2_n_0 ;
  wire \c1_u[31]_i_3_n_0 ;
  wire \c1_u[31]_i_4_n_0 ;
  wire \c1_u[31]_i_5_n_0 ;
  wire \c1_u[3]_i_1_n_0 ;
  wire \c1_u[4]_i_1_n_0 ;
  wire \c1_u[5]_i_1_n_0 ;
  wire \c1_u[6]_i_1_n_0 ;
  wire \c1_u[7]_i_1_n_0 ;
  wire \c1_u[8]_i_1_n_0 ;
  wire \c1_u[9]_i_1_n_0 ;
  wire \c1_u_reg_n_0_[0] ;
  wire \c1_u_reg_n_0_[10] ;
  wire \c1_u_reg_n_0_[11] ;
  wire \c1_u_reg_n_0_[12] ;
  wire \c1_u_reg_n_0_[13] ;
  wire \c1_u_reg_n_0_[14] ;
  wire \c1_u_reg_n_0_[15] ;
  wire \c1_u_reg_n_0_[16] ;
  wire \c1_u_reg_n_0_[17] ;
  wire \c1_u_reg_n_0_[18] ;
  wire \c1_u_reg_n_0_[19] ;
  wire \c1_u_reg_n_0_[1] ;
  wire \c1_u_reg_n_0_[20] ;
  wire \c1_u_reg_n_0_[21] ;
  wire \c1_u_reg_n_0_[22] ;
  wire \c1_u_reg_n_0_[23] ;
  wire \c1_u_reg_n_0_[24] ;
  wire \c1_u_reg_n_0_[25] ;
  wire \c1_u_reg_n_0_[26] ;
  wire \c1_u_reg_n_0_[27] ;
  wire \c1_u_reg_n_0_[28] ;
  wire \c1_u_reg_n_0_[29] ;
  wire \c1_u_reg_n_0_[2] ;
  wire \c1_u_reg_n_0_[30] ;
  wire \c1_u_reg_n_0_[31] ;
  wire \c1_u_reg_n_0_[3] ;
  wire \c1_u_reg_n_0_[4] ;
  wire \c1_u_reg_n_0_[5] ;
  wire \c1_u_reg_n_0_[6] ;
  wire \c1_u_reg_n_0_[7] ;
  wire \c1_u_reg_n_0_[8] ;
  wire \c1_u_reg_n_0_[9] ;
  wire c2_u;
  wire \c2_u[0]_i_1_n_0 ;
  wire \c2_u[10]_i_1_n_0 ;
  wire \c2_u[11]_i_1_n_0 ;
  wire \c2_u[12]_i_1_n_0 ;
  wire \c2_u[13]_i_1_n_0 ;
  wire \c2_u[14]_i_1_n_0 ;
  wire \c2_u[15]_i_1_n_0 ;
  wire \c2_u[16]_i_1_n_0 ;
  wire \c2_u[17]_i_1_n_0 ;
  wire \c2_u[18]_i_1_n_0 ;
  wire \c2_u[19]_i_1_n_0 ;
  wire \c2_u[1]_i_1_n_0 ;
  wire \c2_u[20]_i_1_n_0 ;
  wire \c2_u[21]_i_1_n_0 ;
  wire \c2_u[22]_i_1_n_0 ;
  wire \c2_u[23]_i_1_n_0 ;
  wire \c2_u[24]_i_1_n_0 ;
  wire \c2_u[25]_i_1_n_0 ;
  wire \c2_u[26]_i_1_n_0 ;
  wire \c2_u[27]_i_1_n_0 ;
  wire \c2_u[28]_i_1_n_0 ;
  wire \c2_u[29]_i_1_n_0 ;
  wire \c2_u[2]_i_1_n_0 ;
  wire \c2_u[30]_i_1_n_0 ;
  wire \c2_u[31]_i_2_n_0 ;
  wire \c2_u[3]_i_1_n_0 ;
  wire \c2_u[4]_i_1_n_0 ;
  wire \c2_u[5]_i_1_n_0 ;
  wire \c2_u[6]_i_1_n_0 ;
  wire \c2_u[7]_i_1_n_0 ;
  wire \c2_u[8]_i_1_n_0 ;
  wire \c2_u[9]_i_1_n_0 ;
  wire \c2_u_reg_n_0_[0] ;
  wire \c2_u_reg_n_0_[10] ;
  wire \c2_u_reg_n_0_[11] ;
  wire \c2_u_reg_n_0_[12] ;
  wire \c2_u_reg_n_0_[13] ;
  wire \c2_u_reg_n_0_[14] ;
  wire \c2_u_reg_n_0_[15] ;
  wire \c2_u_reg_n_0_[16] ;
  wire \c2_u_reg_n_0_[17] ;
  wire \c2_u_reg_n_0_[18] ;
  wire \c2_u_reg_n_0_[19] ;
  wire \c2_u_reg_n_0_[1] ;
  wire \c2_u_reg_n_0_[20] ;
  wire \c2_u_reg_n_0_[21] ;
  wire \c2_u_reg_n_0_[22] ;
  wire \c2_u_reg_n_0_[23] ;
  wire \c2_u_reg_n_0_[24] ;
  wire \c2_u_reg_n_0_[25] ;
  wire \c2_u_reg_n_0_[26] ;
  wire \c2_u_reg_n_0_[27] ;
  wire \c2_u_reg_n_0_[28] ;
  wire \c2_u_reg_n_0_[29] ;
  wire \c2_u_reg_n_0_[2] ;
  wire \c2_u_reg_n_0_[30] ;
  wire \c2_u_reg_n_0_[31] ;
  wire \c2_u_reg_n_0_[3] ;
  wire \c2_u_reg_n_0_[4] ;
  wire \c2_u_reg_n_0_[5] ;
  wire \c2_u_reg_n_0_[6] ;
  wire \c2_u_reg_n_0_[7] ;
  wire \c2_u_reg_n_0_[8] ;
  wire \c2_u_reg_n_0_[9] ;
  wire c3_u;
  wire \c3_u[0]_i_1_n_0 ;
  wire \c3_u[10]_i_1_n_0 ;
  wire \c3_u[11]_i_1_n_0 ;
  wire \c3_u[12]_i_1_n_0 ;
  wire \c3_u[13]_i_1_n_0 ;
  wire \c3_u[14]_i_1_n_0 ;
  wire \c3_u[15]_i_1_n_0 ;
  wire \c3_u[16]_i_1_n_0 ;
  wire \c3_u[17]_i_1_n_0 ;
  wire \c3_u[18]_i_1_n_0 ;
  wire \c3_u[19]_i_1_n_0 ;
  wire \c3_u[1]_i_1_n_0 ;
  wire \c3_u[20]_i_1_n_0 ;
  wire \c3_u[21]_i_1_n_0 ;
  wire \c3_u[22]_i_1_n_0 ;
  wire \c3_u[23]_i_1_n_0 ;
  wire \c3_u[24]_i_1_n_0 ;
  wire \c3_u[25]_i_1_n_0 ;
  wire \c3_u[26]_i_1_n_0 ;
  wire \c3_u[27]_i_1_n_0 ;
  wire \c3_u[28]_i_1_n_0 ;
  wire \c3_u[29]_i_1_n_0 ;
  wire \c3_u[2]_i_1_n_0 ;
  wire \c3_u[30]_i_1_n_0 ;
  wire \c3_u[31]_i_2_n_0 ;
  wire \c3_u[3]_i_1_n_0 ;
  wire \c3_u[4]_i_1_n_0 ;
  wire \c3_u[5]_i_1_n_0 ;
  wire \c3_u[6]_i_1_n_0 ;
  wire \c3_u[7]_i_1_n_0 ;
  wire \c3_u[8]_i_1_n_0 ;
  wire \c3_u[9]_i_1_n_0 ;
  wire \c3_u_reg_n_0_[0] ;
  wire \c3_u_reg_n_0_[10] ;
  wire \c3_u_reg_n_0_[11] ;
  wire \c3_u_reg_n_0_[12] ;
  wire \c3_u_reg_n_0_[13] ;
  wire \c3_u_reg_n_0_[14] ;
  wire \c3_u_reg_n_0_[15] ;
  wire \c3_u_reg_n_0_[16] ;
  wire \c3_u_reg_n_0_[17] ;
  wire \c3_u_reg_n_0_[18] ;
  wire \c3_u_reg_n_0_[19] ;
  wire \c3_u_reg_n_0_[1] ;
  wire \c3_u_reg_n_0_[20] ;
  wire \c3_u_reg_n_0_[21] ;
  wire \c3_u_reg_n_0_[22] ;
  wire \c3_u_reg_n_0_[23] ;
  wire \c3_u_reg_n_0_[24] ;
  wire \c3_u_reg_n_0_[25] ;
  wire \c3_u_reg_n_0_[26] ;
  wire \c3_u_reg_n_0_[27] ;
  wire \c3_u_reg_n_0_[28] ;
  wire \c3_u_reg_n_0_[29] ;
  wire \c3_u_reg_n_0_[2] ;
  wire \c3_u_reg_n_0_[30] ;
  wire \c3_u_reg_n_0_[31] ;
  wire \c3_u_reg_n_0_[3] ;
  wire \c3_u_reg_n_0_[4] ;
  wire \c3_u_reg_n_0_[5] ;
  wire \c3_u_reg_n_0_[6] ;
  wire \c3_u_reg_n_0_[7] ;
  wire \c3_u_reg_n_0_[8] ;
  wire \c3_u_reg_n_0_[9] ;
  wire c4_u;
  wire \c4_u[0]_i_1_n_0 ;
  wire \c4_u[10]_i_1_n_0 ;
  wire \c4_u[11]_i_1_n_0 ;
  wire \c4_u[12]_i_1_n_0 ;
  wire \c4_u[13]_i_1_n_0 ;
  wire \c4_u[14]_i_1_n_0 ;
  wire \c4_u[15]_i_1_n_0 ;
  wire \c4_u[16]_i_1_n_0 ;
  wire \c4_u[17]_i_1_n_0 ;
  wire \c4_u[18]_i_1_n_0 ;
  wire \c4_u[19]_i_1_n_0 ;
  wire \c4_u[1]_i_1_n_0 ;
  wire \c4_u[20]_i_1_n_0 ;
  wire \c4_u[21]_i_1_n_0 ;
  wire \c4_u[22]_i_1_n_0 ;
  wire \c4_u[23]_i_1_n_0 ;
  wire \c4_u[24]_i_1_n_0 ;
  wire \c4_u[25]_i_1_n_0 ;
  wire \c4_u[26]_i_1_n_0 ;
  wire \c4_u[27]_i_1_n_0 ;
  wire \c4_u[28]_i_1_n_0 ;
  wire \c4_u[29]_i_1_n_0 ;
  wire \c4_u[2]_i_1_n_0 ;
  wire \c4_u[30]_i_1_n_0 ;
  wire \c4_u[31]_i_2_n_0 ;
  wire \c4_u[3]_i_1_n_0 ;
  wire \c4_u[4]_i_1_n_0 ;
  wire \c4_u[5]_i_1_n_0 ;
  wire \c4_u[6]_i_1_n_0 ;
  wire \c4_u[7]_i_1_n_0 ;
  wire \c4_u[8]_i_1_n_0 ;
  wire \c4_u[9]_i_1_n_0 ;
  wire \c4_u_reg_n_0_[0] ;
  wire \c4_u_reg_n_0_[10] ;
  wire \c4_u_reg_n_0_[11] ;
  wire \c4_u_reg_n_0_[12] ;
  wire \c4_u_reg_n_0_[13] ;
  wire \c4_u_reg_n_0_[14] ;
  wire \c4_u_reg_n_0_[15] ;
  wire \c4_u_reg_n_0_[16] ;
  wire \c4_u_reg_n_0_[17] ;
  wire \c4_u_reg_n_0_[18] ;
  wire \c4_u_reg_n_0_[19] ;
  wire \c4_u_reg_n_0_[1] ;
  wire \c4_u_reg_n_0_[20] ;
  wire \c4_u_reg_n_0_[21] ;
  wire \c4_u_reg_n_0_[22] ;
  wire \c4_u_reg_n_0_[23] ;
  wire \c4_u_reg_n_0_[24] ;
  wire \c4_u_reg_n_0_[25] ;
  wire \c4_u_reg_n_0_[26] ;
  wire \c4_u_reg_n_0_[27] ;
  wire \c4_u_reg_n_0_[28] ;
  wire \c4_u_reg_n_0_[29] ;
  wire \c4_u_reg_n_0_[2] ;
  wire \c4_u_reg_n_0_[30] ;
  wire \c4_u_reg_n_0_[31] ;
  wire \c4_u_reg_n_0_[3] ;
  wire \c4_u_reg_n_0_[4] ;
  wire \c4_u_reg_n_0_[5] ;
  wire \c4_u_reg_n_0_[6] ;
  wire \c4_u_reg_n_0_[7] ;
  wire \c4_u_reg_n_0_[8] ;
  wire \c4_u_reg_n_0_[9] ;
  wire c5_u;
  wire \c5_u[0]_i_1_n_0 ;
  wire \c5_u[10]_i_1_n_0 ;
  wire \c5_u[11]_i_1_n_0 ;
  wire \c5_u[12]_i_1_n_0 ;
  wire \c5_u[13]_i_1_n_0 ;
  wire \c5_u[14]_i_1_n_0 ;
  wire \c5_u[15]_i_1_n_0 ;
  wire \c5_u[16]_i_1_n_0 ;
  wire \c5_u[17]_i_1_n_0 ;
  wire \c5_u[18]_i_1_n_0 ;
  wire \c5_u[19]_i_1_n_0 ;
  wire \c5_u[1]_i_1_n_0 ;
  wire \c5_u[20]_i_1_n_0 ;
  wire \c5_u[21]_i_1_n_0 ;
  wire \c5_u[22]_i_1_n_0 ;
  wire \c5_u[23]_i_1_n_0 ;
  wire \c5_u[24]_i_1_n_0 ;
  wire \c5_u[25]_i_1_n_0 ;
  wire \c5_u[26]_i_1_n_0 ;
  wire \c5_u[27]_i_1_n_0 ;
  wire \c5_u[28]_i_1_n_0 ;
  wire \c5_u[29]_i_1_n_0 ;
  wire \c5_u[2]_i_1_n_0 ;
  wire \c5_u[30]_i_1_n_0 ;
  wire \c5_u[31]_i_2_n_0 ;
  wire \c5_u[3]_i_1_n_0 ;
  wire \c5_u[4]_i_1_n_0 ;
  wire \c5_u[5]_i_1_n_0 ;
  wire \c5_u[6]_i_1_n_0 ;
  wire \c5_u[7]_i_1_n_0 ;
  wire \c5_u[8]_i_1_n_0 ;
  wire \c5_u[9]_i_1_n_0 ;
  wire \c5_u_reg_n_0_[0] ;
  wire \c5_u_reg_n_0_[10] ;
  wire \c5_u_reg_n_0_[11] ;
  wire \c5_u_reg_n_0_[12] ;
  wire \c5_u_reg_n_0_[13] ;
  wire \c5_u_reg_n_0_[14] ;
  wire \c5_u_reg_n_0_[15] ;
  wire \c5_u_reg_n_0_[16] ;
  wire \c5_u_reg_n_0_[17] ;
  wire \c5_u_reg_n_0_[18] ;
  wire \c5_u_reg_n_0_[19] ;
  wire \c5_u_reg_n_0_[1] ;
  wire \c5_u_reg_n_0_[20] ;
  wire \c5_u_reg_n_0_[21] ;
  wire \c5_u_reg_n_0_[22] ;
  wire \c5_u_reg_n_0_[23] ;
  wire \c5_u_reg_n_0_[24] ;
  wire \c5_u_reg_n_0_[25] ;
  wire \c5_u_reg_n_0_[26] ;
  wire \c5_u_reg_n_0_[27] ;
  wire \c5_u_reg_n_0_[28] ;
  wire \c5_u_reg_n_0_[29] ;
  wire \c5_u_reg_n_0_[2] ;
  wire \c5_u_reg_n_0_[30] ;
  wire \c5_u_reg_n_0_[31] ;
  wire \c5_u_reg_n_0_[3] ;
  wire \c5_u_reg_n_0_[4] ;
  wire \c5_u_reg_n_0_[5] ;
  wire \c5_u_reg_n_0_[6] ;
  wire \c5_u_reg_n_0_[7] ;
  wire \c5_u_reg_n_0_[8] ;
  wire \c5_u_reg_n_0_[9] ;
  wire c6_u;
  wire \c6_u[0]_i_1_n_0 ;
  wire \c6_u[10]_i_1_n_0 ;
  wire \c6_u[11]_i_1_n_0 ;
  wire \c6_u[12]_i_1_n_0 ;
  wire \c6_u[13]_i_1_n_0 ;
  wire \c6_u[14]_i_1_n_0 ;
  wire \c6_u[15]_i_1_n_0 ;
  wire \c6_u[16]_i_1_n_0 ;
  wire \c6_u[17]_i_1_n_0 ;
  wire \c6_u[18]_i_1_n_0 ;
  wire \c6_u[19]_i_1_n_0 ;
  wire \c6_u[1]_i_1_n_0 ;
  wire \c6_u[20]_i_1_n_0 ;
  wire \c6_u[21]_i_1_n_0 ;
  wire \c6_u[22]_i_1_n_0 ;
  wire \c6_u[23]_i_1_n_0 ;
  wire \c6_u[24]_i_1_n_0 ;
  wire \c6_u[25]_i_1_n_0 ;
  wire \c6_u[26]_i_1_n_0 ;
  wire \c6_u[27]_i_1_n_0 ;
  wire \c6_u[28]_i_1_n_0 ;
  wire \c6_u[29]_i_1_n_0 ;
  wire \c6_u[2]_i_1_n_0 ;
  wire \c6_u[30]_i_1_n_0 ;
  wire \c6_u[31]_i_2_n_0 ;
  wire \c6_u[3]_i_1_n_0 ;
  wire \c6_u[4]_i_1_n_0 ;
  wire \c6_u[5]_i_1_n_0 ;
  wire \c6_u[6]_i_1_n_0 ;
  wire \c6_u[7]_i_1_n_0 ;
  wire \c6_u[8]_i_1_n_0 ;
  wire \c6_u[9]_i_1_n_0 ;
  wire \c6_u_reg_n_0_[0] ;
  wire \c6_u_reg_n_0_[10] ;
  wire \c6_u_reg_n_0_[11] ;
  wire \c6_u_reg_n_0_[12] ;
  wire \c6_u_reg_n_0_[13] ;
  wire \c6_u_reg_n_0_[14] ;
  wire \c6_u_reg_n_0_[15] ;
  wire \c6_u_reg_n_0_[16] ;
  wire \c6_u_reg_n_0_[17] ;
  wire \c6_u_reg_n_0_[18] ;
  wire \c6_u_reg_n_0_[19] ;
  wire \c6_u_reg_n_0_[1] ;
  wire \c6_u_reg_n_0_[20] ;
  wire \c6_u_reg_n_0_[21] ;
  wire \c6_u_reg_n_0_[22] ;
  wire \c6_u_reg_n_0_[23] ;
  wire \c6_u_reg_n_0_[24] ;
  wire \c6_u_reg_n_0_[25] ;
  wire \c6_u_reg_n_0_[26] ;
  wire \c6_u_reg_n_0_[27] ;
  wire \c6_u_reg_n_0_[28] ;
  wire \c6_u_reg_n_0_[29] ;
  wire \c6_u_reg_n_0_[2] ;
  wire \c6_u_reg_n_0_[30] ;
  wire \c6_u_reg_n_0_[31] ;
  wire \c6_u_reg_n_0_[3] ;
  wire \c6_u_reg_n_0_[4] ;
  wire \c6_u_reg_n_0_[5] ;
  wire \c6_u_reg_n_0_[6] ;
  wire \c6_u_reg_n_0_[7] ;
  wire \c6_u_reg_n_0_[8] ;
  wire \c6_u_reg_n_0_[9] ;
  wire [3:0]cap_ns;
  wire [3:0]cap_ps;
  wire \cap_ps[3]_i_2_n_0 ;
  wire \cap_ps[3]_i_3_n_0 ;
  wire \cap_ps[3]_i_4_n_0 ;
  wire \cap_ps[3]_i_5_n_0 ;
  wire \cap_ps[3]_i_6_n_0 ;
  wire \cap_ps[3]_i_7_n_0 ;
  wire \cap_ps[3]_i_8_n_0 ;
  wire \cap_ps[3]_i_9_n_0 ;
  wire cap_reg10;
  wire \cap_reg10_reg_n_0_[0] ;
  wire \cap_reg10_reg_n_0_[10] ;
  wire \cap_reg10_reg_n_0_[11] ;
  wire \cap_reg10_reg_n_0_[12] ;
  wire \cap_reg10_reg_n_0_[13] ;
  wire \cap_reg10_reg_n_0_[14] ;
  wire \cap_reg10_reg_n_0_[15] ;
  wire \cap_reg10_reg_n_0_[16] ;
  wire \cap_reg10_reg_n_0_[17] ;
  wire \cap_reg10_reg_n_0_[18] ;
  wire \cap_reg10_reg_n_0_[19] ;
  wire \cap_reg10_reg_n_0_[1] ;
  wire \cap_reg10_reg_n_0_[20] ;
  wire \cap_reg10_reg_n_0_[21] ;
  wire \cap_reg10_reg_n_0_[22] ;
  wire \cap_reg10_reg_n_0_[23] ;
  wire \cap_reg10_reg_n_0_[24] ;
  wire \cap_reg10_reg_n_0_[25] ;
  wire \cap_reg10_reg_n_0_[26] ;
  wire \cap_reg10_reg_n_0_[27] ;
  wire \cap_reg10_reg_n_0_[28] ;
  wire \cap_reg10_reg_n_0_[29] ;
  wire \cap_reg10_reg_n_0_[2] ;
  wire \cap_reg10_reg_n_0_[30] ;
  wire \cap_reg10_reg_n_0_[31] ;
  wire \cap_reg10_reg_n_0_[3] ;
  wire \cap_reg10_reg_n_0_[4] ;
  wire \cap_reg10_reg_n_0_[5] ;
  wire \cap_reg10_reg_n_0_[6] ;
  wire \cap_reg10_reg_n_0_[7] ;
  wire \cap_reg10_reg_n_0_[8] ;
  wire \cap_reg10_reg_n_0_[9] ;
  wire [31:0]cap_reg11;
  wire [31:0]cap_reg12;
  wire [31:0]cap_reg13;
  wire [31:0]cap_reg14;
  wire [31:0]cap_reg15;
  wire clear;
  wire data5;
  wire \frame_counter[0]_i_2_n_0 ;
  wire [31:0]frame_counter_reg;
  wire \frame_counter_reg[0]_i_1_n_0 ;
  wire \frame_counter_reg[0]_i_1_n_1 ;
  wire \frame_counter_reg[0]_i_1_n_2 ;
  wire \frame_counter_reg[0]_i_1_n_3 ;
  wire \frame_counter_reg[0]_i_1_n_4 ;
  wire \frame_counter_reg[0]_i_1_n_5 ;
  wire \frame_counter_reg[0]_i_1_n_6 ;
  wire \frame_counter_reg[0]_i_1_n_7 ;
  wire \frame_counter_reg[12]_i_1_n_0 ;
  wire \frame_counter_reg[12]_i_1_n_1 ;
  wire \frame_counter_reg[12]_i_1_n_2 ;
  wire \frame_counter_reg[12]_i_1_n_3 ;
  wire \frame_counter_reg[12]_i_1_n_4 ;
  wire \frame_counter_reg[12]_i_1_n_5 ;
  wire \frame_counter_reg[12]_i_1_n_6 ;
  wire \frame_counter_reg[12]_i_1_n_7 ;
  wire \frame_counter_reg[16]_i_1_n_0 ;
  wire \frame_counter_reg[16]_i_1_n_1 ;
  wire \frame_counter_reg[16]_i_1_n_2 ;
  wire \frame_counter_reg[16]_i_1_n_3 ;
  wire \frame_counter_reg[16]_i_1_n_4 ;
  wire \frame_counter_reg[16]_i_1_n_5 ;
  wire \frame_counter_reg[16]_i_1_n_6 ;
  wire \frame_counter_reg[16]_i_1_n_7 ;
  wire \frame_counter_reg[20]_i_1_n_0 ;
  wire \frame_counter_reg[20]_i_1_n_1 ;
  wire \frame_counter_reg[20]_i_1_n_2 ;
  wire \frame_counter_reg[20]_i_1_n_3 ;
  wire \frame_counter_reg[20]_i_1_n_4 ;
  wire \frame_counter_reg[20]_i_1_n_5 ;
  wire \frame_counter_reg[20]_i_1_n_6 ;
  wire \frame_counter_reg[20]_i_1_n_7 ;
  wire \frame_counter_reg[24]_i_1_n_0 ;
  wire \frame_counter_reg[24]_i_1_n_1 ;
  wire \frame_counter_reg[24]_i_1_n_2 ;
  wire \frame_counter_reg[24]_i_1_n_3 ;
  wire \frame_counter_reg[24]_i_1_n_4 ;
  wire \frame_counter_reg[24]_i_1_n_5 ;
  wire \frame_counter_reg[24]_i_1_n_6 ;
  wire \frame_counter_reg[24]_i_1_n_7 ;
  wire \frame_counter_reg[28]_i_1_n_1 ;
  wire \frame_counter_reg[28]_i_1_n_2 ;
  wire \frame_counter_reg[28]_i_1_n_3 ;
  wire \frame_counter_reg[28]_i_1_n_4 ;
  wire \frame_counter_reg[28]_i_1_n_5 ;
  wire \frame_counter_reg[28]_i_1_n_6 ;
  wire \frame_counter_reg[28]_i_1_n_7 ;
  wire \frame_counter_reg[4]_i_1_n_0 ;
  wire \frame_counter_reg[4]_i_1_n_1 ;
  wire \frame_counter_reg[4]_i_1_n_2 ;
  wire \frame_counter_reg[4]_i_1_n_3 ;
  wire \frame_counter_reg[4]_i_1_n_4 ;
  wire \frame_counter_reg[4]_i_1_n_5 ;
  wire \frame_counter_reg[4]_i_1_n_6 ;
  wire \frame_counter_reg[4]_i_1_n_7 ;
  wire \frame_counter_reg[8]_i_1_n_0 ;
  wire \frame_counter_reg[8]_i_1_n_1 ;
  wire \frame_counter_reg[8]_i_1_n_2 ;
  wire \frame_counter_reg[8]_i_1_n_3 ;
  wire \frame_counter_reg[8]_i_1_n_4 ;
  wire \frame_counter_reg[8]_i_1_n_5 ;
  wire \frame_counter_reg[8]_i_1_n_6 ;
  wire \frame_counter_reg[8]_i_1_n_7 ;
  wire \gen_current_clk[0]_i_1_n_0 ;
  wire \gen_current_clk[0]_i_3_n_0 ;
  wire [31:0]gen_current_clk_reg;
  wire \gen_current_clk_reg[0]_i_2_n_0 ;
  wire \gen_current_clk_reg[0]_i_2_n_1 ;
  wire \gen_current_clk_reg[0]_i_2_n_2 ;
  wire \gen_current_clk_reg[0]_i_2_n_3 ;
  wire \gen_current_clk_reg[0]_i_2_n_4 ;
  wire \gen_current_clk_reg[0]_i_2_n_5 ;
  wire \gen_current_clk_reg[0]_i_2_n_6 ;
  wire \gen_current_clk_reg[0]_i_2_n_7 ;
  wire \gen_current_clk_reg[12]_i_1_n_0 ;
  wire \gen_current_clk_reg[12]_i_1_n_1 ;
  wire \gen_current_clk_reg[12]_i_1_n_2 ;
  wire \gen_current_clk_reg[12]_i_1_n_3 ;
  wire \gen_current_clk_reg[12]_i_1_n_4 ;
  wire \gen_current_clk_reg[12]_i_1_n_5 ;
  wire \gen_current_clk_reg[12]_i_1_n_6 ;
  wire \gen_current_clk_reg[12]_i_1_n_7 ;
  wire \gen_current_clk_reg[16]_i_1_n_0 ;
  wire \gen_current_clk_reg[16]_i_1_n_1 ;
  wire \gen_current_clk_reg[16]_i_1_n_2 ;
  wire \gen_current_clk_reg[16]_i_1_n_3 ;
  wire \gen_current_clk_reg[16]_i_1_n_4 ;
  wire \gen_current_clk_reg[16]_i_1_n_5 ;
  wire \gen_current_clk_reg[16]_i_1_n_6 ;
  wire \gen_current_clk_reg[16]_i_1_n_7 ;
  wire \gen_current_clk_reg[20]_i_1_n_0 ;
  wire \gen_current_clk_reg[20]_i_1_n_1 ;
  wire \gen_current_clk_reg[20]_i_1_n_2 ;
  wire \gen_current_clk_reg[20]_i_1_n_3 ;
  wire \gen_current_clk_reg[20]_i_1_n_4 ;
  wire \gen_current_clk_reg[20]_i_1_n_5 ;
  wire \gen_current_clk_reg[20]_i_1_n_6 ;
  wire \gen_current_clk_reg[20]_i_1_n_7 ;
  wire \gen_current_clk_reg[24]_i_1_n_0 ;
  wire \gen_current_clk_reg[24]_i_1_n_1 ;
  wire \gen_current_clk_reg[24]_i_1_n_2 ;
  wire \gen_current_clk_reg[24]_i_1_n_3 ;
  wire \gen_current_clk_reg[24]_i_1_n_4 ;
  wire \gen_current_clk_reg[24]_i_1_n_5 ;
  wire \gen_current_clk_reg[24]_i_1_n_6 ;
  wire \gen_current_clk_reg[24]_i_1_n_7 ;
  wire \gen_current_clk_reg[28]_i_1_n_1 ;
  wire \gen_current_clk_reg[28]_i_1_n_2 ;
  wire \gen_current_clk_reg[28]_i_1_n_3 ;
  wire \gen_current_clk_reg[28]_i_1_n_4 ;
  wire \gen_current_clk_reg[28]_i_1_n_5 ;
  wire \gen_current_clk_reg[28]_i_1_n_6 ;
  wire \gen_current_clk_reg[28]_i_1_n_7 ;
  wire \gen_current_clk_reg[4]_i_1_n_0 ;
  wire \gen_current_clk_reg[4]_i_1_n_1 ;
  wire \gen_current_clk_reg[4]_i_1_n_2 ;
  wire \gen_current_clk_reg[4]_i_1_n_3 ;
  wire \gen_current_clk_reg[4]_i_1_n_4 ;
  wire \gen_current_clk_reg[4]_i_1_n_5 ;
  wire \gen_current_clk_reg[4]_i_1_n_6 ;
  wire \gen_current_clk_reg[4]_i_1_n_7 ;
  wire \gen_current_clk_reg[8]_i_1_n_0 ;
  wire \gen_current_clk_reg[8]_i_1_n_1 ;
  wire \gen_current_clk_reg[8]_i_1_n_2 ;
  wire \gen_current_clk_reg[8]_i_1_n_3 ;
  wire \gen_current_clk_reg[8]_i_1_n_4 ;
  wire \gen_current_clk_reg[8]_i_1_n_5 ;
  wire \gen_current_clk_reg[8]_i_1_n_6 ;
  wire \gen_current_clk_reg[8]_i_1_n_7 ;
  wire [31:1]gen_idle_clks0;
  wire gen_idle_clks2__0_carry__0_i_1_n_0;
  wire gen_idle_clks2__0_carry__0_i_2_n_0;
  wire gen_idle_clks2__0_carry__0_i_3_n_0;
  wire gen_idle_clks2__0_carry__0_i_4_n_0;
  wire gen_idle_clks2__0_carry__0_i_5_n_0;
  wire gen_idle_clks2__0_carry__0_i_6_n_0;
  wire gen_idle_clks2__0_carry__0_i_7_n_0;
  wire gen_idle_clks2__0_carry__0_i_8_n_0;
  wire gen_idle_clks2__0_carry__0_n_0;
  wire gen_idle_clks2__0_carry__0_n_1;
  wire gen_idle_clks2__0_carry__0_n_2;
  wire gen_idle_clks2__0_carry__0_n_3;
  wire gen_idle_clks2__0_carry__0_n_4;
  wire gen_idle_clks2__0_carry__0_n_5;
  wire gen_idle_clks2__0_carry__0_n_6;
  wire gen_idle_clks2__0_carry__0_n_7;
  wire gen_idle_clks2__0_carry__1_i_1_n_0;
  wire gen_idle_clks2__0_carry__1_i_2_n_0;
  wire gen_idle_clks2__0_carry__1_i_3_n_0;
  wire gen_idle_clks2__0_carry__1_i_4_n_0;
  wire gen_idle_clks2__0_carry__1_i_5_n_0;
  wire gen_idle_clks2__0_carry__1_i_6_n_0;
  wire gen_idle_clks2__0_carry__1_i_7_n_0;
  wire gen_idle_clks2__0_carry__1_i_8_n_0;
  wire gen_idle_clks2__0_carry__1_n_0;
  wire gen_idle_clks2__0_carry__1_n_1;
  wire gen_idle_clks2__0_carry__1_n_2;
  wire gen_idle_clks2__0_carry__1_n_3;
  wire gen_idle_clks2__0_carry__1_n_4;
  wire gen_idle_clks2__0_carry__1_n_5;
  wire gen_idle_clks2__0_carry__1_n_6;
  wire gen_idle_clks2__0_carry__1_n_7;
  wire gen_idle_clks2__0_carry__2_i_1_n_0;
  wire gen_idle_clks2__0_carry__2_i_2_n_0;
  wire gen_idle_clks2__0_carry__2_i_3_n_0;
  wire gen_idle_clks2__0_carry__2_i_4_n_0;
  wire gen_idle_clks2__0_carry__2_i_5_n_0;
  wire gen_idle_clks2__0_carry__2_i_6_n_0;
  wire gen_idle_clks2__0_carry__2_i_7_n_0;
  wire gen_idle_clks2__0_carry__2_i_8_n_0;
  wire gen_idle_clks2__0_carry__2_n_0;
  wire gen_idle_clks2__0_carry__2_n_1;
  wire gen_idle_clks2__0_carry__2_n_2;
  wire gen_idle_clks2__0_carry__2_n_3;
  wire gen_idle_clks2__0_carry__2_n_4;
  wire gen_idle_clks2__0_carry__2_n_5;
  wire gen_idle_clks2__0_carry__2_n_6;
  wire gen_idle_clks2__0_carry__2_n_7;
  wire gen_idle_clks2__0_carry__3_i_1_n_0;
  wire gen_idle_clks2__0_carry__3_i_2_n_0;
  wire gen_idle_clks2__0_carry__3_i_3_n_0;
  wire gen_idle_clks2__0_carry__3_i_4_n_0;
  wire gen_idle_clks2__0_carry__3_i_5_n_0;
  wire gen_idle_clks2__0_carry__3_i_6_n_0;
  wire gen_idle_clks2__0_carry__3_i_7_n_0;
  wire gen_idle_clks2__0_carry__3_i_8_n_0;
  wire gen_idle_clks2__0_carry__3_n_0;
  wire gen_idle_clks2__0_carry__3_n_1;
  wire gen_idle_clks2__0_carry__3_n_2;
  wire gen_idle_clks2__0_carry__3_n_3;
  wire gen_idle_clks2__0_carry__3_n_4;
  wire gen_idle_clks2__0_carry__3_n_5;
  wire gen_idle_clks2__0_carry__3_n_6;
  wire gen_idle_clks2__0_carry__3_n_7;
  wire gen_idle_clks2__0_carry__4_i_1_n_0;
  wire gen_idle_clks2__0_carry__4_i_2_n_0;
  wire gen_idle_clks2__0_carry__4_i_3_n_0;
  wire gen_idle_clks2__0_carry__4_i_4_n_0;
  wire gen_idle_clks2__0_carry__4_i_5_n_0;
  wire gen_idle_clks2__0_carry__4_i_6_n_0;
  wire gen_idle_clks2__0_carry__4_i_7_n_0;
  wire gen_idle_clks2__0_carry__4_i_8_n_0;
  wire gen_idle_clks2__0_carry__4_n_0;
  wire gen_idle_clks2__0_carry__4_n_1;
  wire gen_idle_clks2__0_carry__4_n_2;
  wire gen_idle_clks2__0_carry__4_n_3;
  wire gen_idle_clks2__0_carry__4_n_4;
  wire gen_idle_clks2__0_carry__4_n_5;
  wire gen_idle_clks2__0_carry__4_n_6;
  wire gen_idle_clks2__0_carry__4_n_7;
  wire gen_idle_clks2__0_carry__5_i_1_n_0;
  wire gen_idle_clks2__0_carry__5_i_2_n_0;
  wire gen_idle_clks2__0_carry__5_i_3_n_0;
  wire gen_idle_clks2__0_carry__5_i_4_n_0;
  wire gen_idle_clks2__0_carry__5_i_5_n_0;
  wire gen_idle_clks2__0_carry__5_i_6_n_0;
  wire gen_idle_clks2__0_carry__5_i_7_n_0;
  wire gen_idle_clks2__0_carry__5_i_8_n_0;
  wire gen_idle_clks2__0_carry__5_n_0;
  wire gen_idle_clks2__0_carry__5_n_1;
  wire gen_idle_clks2__0_carry__5_n_2;
  wire gen_idle_clks2__0_carry__5_n_3;
  wire gen_idle_clks2__0_carry__5_n_4;
  wire gen_idle_clks2__0_carry__5_n_5;
  wire gen_idle_clks2__0_carry__5_n_6;
  wire gen_idle_clks2__0_carry__5_n_7;
  wire gen_idle_clks2__0_carry__6_i_1_n_0;
  wire gen_idle_clks2__0_carry__6_i_2_n_0;
  wire gen_idle_clks2__0_carry__6_i_3_n_0;
  wire gen_idle_clks2__0_carry__6_i_4_n_0;
  wire gen_idle_clks2__0_carry__6_i_5_n_0;
  wire gen_idle_clks2__0_carry__6_i_6_n_0;
  wire gen_idle_clks2__0_carry__6_i_7_n_0;
  wire gen_idle_clks2__0_carry__6_n_1;
  wire gen_idle_clks2__0_carry__6_n_2;
  wire gen_idle_clks2__0_carry__6_n_3;
  wire gen_idle_clks2__0_carry__6_n_4;
  wire gen_idle_clks2__0_carry__6_n_5;
  wire gen_idle_clks2__0_carry__6_n_6;
  wire gen_idle_clks2__0_carry__6_n_7;
  wire gen_idle_clks2__0_carry_i_1_n_0;
  wire gen_idle_clks2__0_carry_i_2_n_0;
  wire gen_idle_clks2__0_carry_i_3_n_0;
  wire gen_idle_clks2__0_carry_i_4_n_0;
  wire gen_idle_clks2__0_carry_i_5_n_0;
  wire gen_idle_clks2__0_carry_i_6_n_0;
  wire gen_idle_clks2__0_carry_i_7_n_0;
  wire gen_idle_clks2__0_carry_n_0;
  wire gen_idle_clks2__0_carry_n_1;
  wire gen_idle_clks2__0_carry_n_2;
  wire gen_idle_clks2__0_carry_n_3;
  wire gen_idle_clks2__0_carry_n_4;
  wire gen_idle_clks2__0_carry_n_5;
  wire gen_idle_clks2__0_carry_n_6;
  wire gen_idle_clks2__0_carry_n_7;
  wire gen_idle_clks2__97_carry__0_i_10_n_0;
  wire gen_idle_clks2__97_carry__0_i_11_n_0;
  wire gen_idle_clks2__97_carry__0_i_12_n_0;
  wire gen_idle_clks2__97_carry__0_i_13_n_0;
  wire gen_idle_clks2__97_carry__0_i_14_n_0;
  wire gen_idle_clks2__97_carry__0_i_15_n_0;
  wire gen_idle_clks2__97_carry__0_i_16_n_0;
  wire gen_idle_clks2__97_carry__0_i_1_n_0;
  wire gen_idle_clks2__97_carry__0_i_2_n_0;
  wire gen_idle_clks2__97_carry__0_i_3_n_0;
  wire gen_idle_clks2__97_carry__0_i_4_n_0;
  wire gen_idle_clks2__97_carry__0_i_5_n_0;
  wire gen_idle_clks2__97_carry__0_i_6_n_0;
  wire gen_idle_clks2__97_carry__0_i_7_n_0;
  wire gen_idle_clks2__97_carry__0_i_8_n_0;
  wire gen_idle_clks2__97_carry__0_i_9_n_0;
  wire gen_idle_clks2__97_carry__0_n_0;
  wire gen_idle_clks2__97_carry__0_n_1;
  wire gen_idle_clks2__97_carry__0_n_2;
  wire gen_idle_clks2__97_carry__0_n_3;
  wire gen_idle_clks2__97_carry__0_n_4;
  wire gen_idle_clks2__97_carry__0_n_5;
  wire gen_idle_clks2__97_carry__0_n_6;
  wire gen_idle_clks2__97_carry__0_n_7;
  wire gen_idle_clks2__97_carry__1_i_10_n_0;
  wire gen_idle_clks2__97_carry__1_i_11_n_0;
  wire gen_idle_clks2__97_carry__1_i_12_n_0;
  wire gen_idle_clks2__97_carry__1_i_13_n_0;
  wire gen_idle_clks2__97_carry__1_i_14_n_0;
  wire gen_idle_clks2__97_carry__1_i_15_n_0;
  wire gen_idle_clks2__97_carry__1_i_1_n_0;
  wire gen_idle_clks2__97_carry__1_i_2_n_0;
  wire gen_idle_clks2__97_carry__1_i_3_n_0;
  wire gen_idle_clks2__97_carry__1_i_4_n_0;
  wire gen_idle_clks2__97_carry__1_i_5_n_0;
  wire gen_idle_clks2__97_carry__1_i_6_n_0;
  wire gen_idle_clks2__97_carry__1_i_7_n_0;
  wire gen_idle_clks2__97_carry__1_i_8_n_0;
  wire gen_idle_clks2__97_carry__1_i_9_n_0;
  wire gen_idle_clks2__97_carry__1_n_0;
  wire gen_idle_clks2__97_carry__1_n_1;
  wire gen_idle_clks2__97_carry__1_n_2;
  wire gen_idle_clks2__97_carry__1_n_3;
  wire gen_idle_clks2__97_carry__1_n_4;
  wire gen_idle_clks2__97_carry__1_n_5;
  wire gen_idle_clks2__97_carry__1_n_6;
  wire gen_idle_clks2__97_carry__1_n_7;
  wire gen_idle_clks2__97_carry__2_i_10_n_0;
  wire gen_idle_clks2__97_carry__2_i_11_n_0;
  wire gen_idle_clks2__97_carry__2_i_12_n_0;
  wire gen_idle_clks2__97_carry__2_i_13_n_0;
  wire gen_idle_clks2__97_carry__2_i_14_n_0;
  wire gen_idle_clks2__97_carry__2_i_15_n_0;
  wire gen_idle_clks2__97_carry__2_i_16_n_0;
  wire gen_idle_clks2__97_carry__2_i_17_n_0;
  wire gen_idle_clks2__97_carry__2_i_18_n_0;
  wire gen_idle_clks2__97_carry__2_i_19_n_0;
  wire gen_idle_clks2__97_carry__2_i_1_n_0;
  wire gen_idle_clks2__97_carry__2_i_20_n_0;
  wire gen_idle_clks2__97_carry__2_i_2_n_0;
  wire gen_idle_clks2__97_carry__2_i_3_n_0;
  wire gen_idle_clks2__97_carry__2_i_4_n_0;
  wire gen_idle_clks2__97_carry__2_i_5_n_0;
  wire gen_idle_clks2__97_carry__2_i_6_n_0;
  wire gen_idle_clks2__97_carry__2_i_7_n_0;
  wire gen_idle_clks2__97_carry__2_i_8_n_0;
  wire gen_idle_clks2__97_carry__2_i_9_n_0;
  wire gen_idle_clks2__97_carry__2_n_0;
  wire gen_idle_clks2__97_carry__2_n_1;
  wire gen_idle_clks2__97_carry__2_n_2;
  wire gen_idle_clks2__97_carry__2_n_3;
  wire gen_idle_clks2__97_carry__2_n_4;
  wire gen_idle_clks2__97_carry__2_n_5;
  wire gen_idle_clks2__97_carry__2_n_6;
  wire gen_idle_clks2__97_carry__2_n_7;
  wire gen_idle_clks2__97_carry__3_i_10_n_0;
  wire gen_idle_clks2__97_carry__3_i_11_n_0;
  wire gen_idle_clks2__97_carry__3_i_12_n_0;
  wire gen_idle_clks2__97_carry__3_i_13_n_0;
  wire gen_idle_clks2__97_carry__3_i_14_n_0;
  wire gen_idle_clks2__97_carry__3_i_15_n_0;
  wire gen_idle_clks2__97_carry__3_i_16_n_0;
  wire gen_idle_clks2__97_carry__3_i_17_n_0;
  wire gen_idle_clks2__97_carry__3_i_18_n_0;
  wire gen_idle_clks2__97_carry__3_i_19_n_0;
  wire gen_idle_clks2__97_carry__3_i_1_n_0;
  wire gen_idle_clks2__97_carry__3_i_20_n_0;
  wire gen_idle_clks2__97_carry__3_i_2_n_0;
  wire gen_idle_clks2__97_carry__3_i_3_n_0;
  wire gen_idle_clks2__97_carry__3_i_4_n_0;
  wire gen_idle_clks2__97_carry__3_i_5_n_0;
  wire gen_idle_clks2__97_carry__3_i_6_n_0;
  wire gen_idle_clks2__97_carry__3_i_7_n_0;
  wire gen_idle_clks2__97_carry__3_i_8_n_0;
  wire gen_idle_clks2__97_carry__3_i_9_n_0;
  wire gen_idle_clks2__97_carry__3_n_0;
  wire gen_idle_clks2__97_carry__3_n_1;
  wire gen_idle_clks2__97_carry__3_n_2;
  wire gen_idle_clks2__97_carry__3_n_3;
  wire gen_idle_clks2__97_carry__3_n_4;
  wire gen_idle_clks2__97_carry__3_n_5;
  wire gen_idle_clks2__97_carry__3_n_6;
  wire gen_idle_clks2__97_carry__3_n_7;
  wire gen_idle_clks2__97_carry__4_i_10_n_0;
  wire gen_idle_clks2__97_carry__4_i_11_n_0;
  wire gen_idle_clks2__97_carry__4_i_12_n_0;
  wire gen_idle_clks2__97_carry__4_i_13_n_0;
  wire gen_idle_clks2__97_carry__4_i_14_n_0;
  wire gen_idle_clks2__97_carry__4_i_15_n_0;
  wire gen_idle_clks2__97_carry__4_i_16_n_0;
  wire gen_idle_clks2__97_carry__4_i_17_n_0;
  wire gen_idle_clks2__97_carry__4_i_18_n_0;
  wire gen_idle_clks2__97_carry__4_i_19_n_0;
  wire gen_idle_clks2__97_carry__4_i_1_n_0;
  wire gen_idle_clks2__97_carry__4_i_20_n_0;
  wire gen_idle_clks2__97_carry__4_i_21_n_0;
  wire gen_idle_clks2__97_carry__4_i_22_n_0;
  wire gen_idle_clks2__97_carry__4_i_23_n_0;
  wire gen_idle_clks2__97_carry__4_i_2_n_0;
  wire gen_idle_clks2__97_carry__4_i_3_n_0;
  wire gen_idle_clks2__97_carry__4_i_4_n_0;
  wire gen_idle_clks2__97_carry__4_i_5_n_0;
  wire gen_idle_clks2__97_carry__4_i_6_n_0;
  wire gen_idle_clks2__97_carry__4_i_7_n_0;
  wire gen_idle_clks2__97_carry__4_i_8_n_0;
  wire gen_idle_clks2__97_carry__4_i_9_n_0;
  wire gen_idle_clks2__97_carry__4_n_0;
  wire gen_idle_clks2__97_carry__4_n_1;
  wire gen_idle_clks2__97_carry__4_n_2;
  wire gen_idle_clks2__97_carry__4_n_3;
  wire gen_idle_clks2__97_carry__4_n_4;
  wire gen_idle_clks2__97_carry__4_n_5;
  wire gen_idle_clks2__97_carry__4_n_6;
  wire gen_idle_clks2__97_carry__4_n_7;
  wire gen_idle_clks2__97_carry__5_i_10_n_0;
  wire gen_idle_clks2__97_carry__5_i_11_n_0;
  wire gen_idle_clks2__97_carry__5_i_12_n_0;
  wire gen_idle_clks2__97_carry__5_i_13_n_0;
  wire gen_idle_clks2__97_carry__5_i_14_n_0;
  wire gen_idle_clks2__97_carry__5_i_15_n_0;
  wire gen_idle_clks2__97_carry__5_i_16_n_0;
  wire gen_idle_clks2__97_carry__5_i_17_n_0;
  wire gen_idle_clks2__97_carry__5_i_18_n_0;
  wire gen_idle_clks2__97_carry__5_i_19_n_0;
  wire gen_idle_clks2__97_carry__5_i_1_n_0;
  wire gen_idle_clks2__97_carry__5_i_20_n_0;
  wire gen_idle_clks2__97_carry__5_i_21_n_0;
  wire gen_idle_clks2__97_carry__5_i_22_n_0;
  wire gen_idle_clks2__97_carry__5_i_2_n_0;
  wire gen_idle_clks2__97_carry__5_i_3_n_0;
  wire gen_idle_clks2__97_carry__5_i_4_n_0;
  wire gen_idle_clks2__97_carry__5_i_5_n_0;
  wire gen_idle_clks2__97_carry__5_i_6_n_0;
  wire gen_idle_clks2__97_carry__5_i_7_n_0;
  wire gen_idle_clks2__97_carry__5_i_8_n_0;
  wire gen_idle_clks2__97_carry__5_i_9_n_0;
  wire gen_idle_clks2__97_carry__5_n_0;
  wire gen_idle_clks2__97_carry__5_n_1;
  wire gen_idle_clks2__97_carry__5_n_2;
  wire gen_idle_clks2__97_carry__5_n_3;
  wire gen_idle_clks2__97_carry__5_n_4;
  wire gen_idle_clks2__97_carry__5_n_5;
  wire gen_idle_clks2__97_carry__5_n_6;
  wire gen_idle_clks2__97_carry__5_n_7;
  wire gen_idle_clks2__97_carry__6_i_10_n_0;
  wire gen_idle_clks2__97_carry__6_i_11_n_0;
  wire gen_idle_clks2__97_carry__6_i_12_n_0;
  wire gen_idle_clks2__97_carry__6_i_13_n_0;
  wire gen_idle_clks2__97_carry__6_i_14_n_0;
  wire gen_idle_clks2__97_carry__6_i_15_n_0;
  wire gen_idle_clks2__97_carry__6_i_16_n_0;
  wire gen_idle_clks2__97_carry__6_i_17_n_0;
  wire gen_idle_clks2__97_carry__6_i_18_n_0;
  wire gen_idle_clks2__97_carry__6_i_19_n_0;
  wire gen_idle_clks2__97_carry__6_i_1_n_0;
  wire gen_idle_clks2__97_carry__6_i_20_n_0;
  wire gen_idle_clks2__97_carry__6_i_21_n_0;
  wire gen_idle_clks2__97_carry__6_i_22_n_0;
  wire gen_idle_clks2__97_carry__6_i_2_n_0;
  wire gen_idle_clks2__97_carry__6_i_3_n_0;
  wire gen_idle_clks2__97_carry__6_i_4_n_0;
  wire gen_idle_clks2__97_carry__6_i_5_n_0;
  wire gen_idle_clks2__97_carry__6_i_6_n_0;
  wire gen_idle_clks2__97_carry__6_i_7_n_0;
  wire gen_idle_clks2__97_carry__6_i_8_n_0;
  wire gen_idle_clks2__97_carry__6_i_9_n_0;
  wire gen_idle_clks2__97_carry__6_n_1;
  wire gen_idle_clks2__97_carry__6_n_2;
  wire gen_idle_clks2__97_carry__6_n_3;
  wire gen_idle_clks2__97_carry__6_n_4;
  wire gen_idle_clks2__97_carry__6_n_5;
  wire gen_idle_clks2__97_carry__6_n_6;
  wire gen_idle_clks2__97_carry__6_n_7;
  wire gen_idle_clks2__97_carry_i_1_n_0;
  wire gen_idle_clks2__97_carry_i_2_n_0;
  wire gen_idle_clks2__97_carry_i_3_n_0;
  wire gen_idle_clks2__97_carry_i_4_n_0;
  wire gen_idle_clks2__97_carry_i_5_n_0;
  wire gen_idle_clks2__97_carry_i_6_n_0;
  wire gen_idle_clks2__97_carry_i_7_n_0;
  wire gen_idle_clks2__97_carry_i_8_n_0;
  wire gen_idle_clks2__97_carry_i_9_n_0;
  wire gen_idle_clks2__97_carry_n_0;
  wire gen_idle_clks2__97_carry_n_1;
  wire gen_idle_clks2__97_carry_n_2;
  wire gen_idle_clks2__97_carry_n_3;
  wire gen_idle_clks2__97_carry_n_4;
  wire gen_idle_clks2__97_carry_n_5;
  wire gen_idle_clks2__97_carry_n_6;
  wire gen_idle_clks2__97_carry_n_7;
  wire [3:0]gen_ns;
  wire \gen_ns1_inferred__0/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__0/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__0/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__0/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__0/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__0/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__0/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__0/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__0/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__0/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__0/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__0/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__0/i__carry_n_0 ;
  wire \gen_ns1_inferred__0/i__carry_n_1 ;
  wire \gen_ns1_inferred__0/i__carry_n_2 ;
  wire \gen_ns1_inferred__0/i__carry_n_3 ;
  wire \gen_ns1_inferred__1/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__1/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__1/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__1/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__1/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__1/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__1/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__1/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__1/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__1/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__1/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__1/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__1/i__carry_n_0 ;
  wire \gen_ns1_inferred__1/i__carry_n_1 ;
  wire \gen_ns1_inferred__1/i__carry_n_2 ;
  wire \gen_ns1_inferred__1/i__carry_n_3 ;
  wire \gen_ns1_inferred__2/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__2/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__2/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__2/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__2/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__2/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__2/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__2/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__2/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__2/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__2/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__2/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__2/i__carry_n_0 ;
  wire \gen_ns1_inferred__2/i__carry_n_1 ;
  wire \gen_ns1_inferred__2/i__carry_n_2 ;
  wire \gen_ns1_inferred__2/i__carry_n_3 ;
  wire \gen_ns1_inferred__3/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__3/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__3/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__3/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__3/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__3/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__3/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__3/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__3/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__3/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__3/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__3/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__3/i__carry_n_0 ;
  wire \gen_ns1_inferred__3/i__carry_n_1 ;
  wire \gen_ns1_inferred__3/i__carry_n_2 ;
  wire \gen_ns1_inferred__3/i__carry_n_3 ;
  wire \gen_ns1_inferred__4/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__4/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__4/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__4/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__4/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__4/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__4/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__4/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__4/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__4/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__4/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__4/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__4/i__carry_n_0 ;
  wire \gen_ns1_inferred__4/i__carry_n_1 ;
  wire \gen_ns1_inferred__4/i__carry_n_2 ;
  wire \gen_ns1_inferred__4/i__carry_n_3 ;
  wire \gen_ns1_inferred__5/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__5/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__5/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__5/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__5/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__5/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__5/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__5/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__5/i__carry__2_n_0 ;
  wire \gen_ns1_inferred__5/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__5/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__5/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__5/i__carry_n_0 ;
  wire \gen_ns1_inferred__5/i__carry_n_1 ;
  wire \gen_ns1_inferred__5/i__carry_n_2 ;
  wire \gen_ns1_inferred__5/i__carry_n_3 ;
  wire \gen_ns1_inferred__6/i__carry__0_n_0 ;
  wire \gen_ns1_inferred__6/i__carry__0_n_1 ;
  wire \gen_ns1_inferred__6/i__carry__0_n_2 ;
  wire \gen_ns1_inferred__6/i__carry__0_n_3 ;
  wire \gen_ns1_inferred__6/i__carry__1_n_0 ;
  wire \gen_ns1_inferred__6/i__carry__1_n_1 ;
  wire \gen_ns1_inferred__6/i__carry__1_n_2 ;
  wire \gen_ns1_inferred__6/i__carry__1_n_3 ;
  wire \gen_ns1_inferred__6/i__carry__2_n_1 ;
  wire \gen_ns1_inferred__6/i__carry__2_n_2 ;
  wire \gen_ns1_inferred__6/i__carry__2_n_3 ;
  wire \gen_ns1_inferred__6/i__carry_n_0 ;
  wire \gen_ns1_inferred__6/i__carry_n_1 ;
  wire \gen_ns1_inferred__6/i__carry_n_2 ;
  wire \gen_ns1_inferred__6/i__carry_n_3 ;
  wire [3:0]gen_ps;
  wire \gen_ps[0]_i_2_n_0 ;
  wire \gen_ps[1]_i_2_n_0 ;
  wire \gen_ps[1]_i_3_n_0 ;
  wire \gen_ps[1]_i_4_n_0 ;
  wire \gen_ps[1]_i_5_n_0 ;
  wire \gen_ps[1]_i_6_n_0 ;
  wire \gen_ps[1]_i_7_n_0 ;
  wire \gen_ps[2]_i_2_n_0 ;
  wire \gen_ps[3]_i_2_n_0 ;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_10_n_1;
  wire i__carry__0_i_10_n_2;
  wire i__carry__0_i_10_n_3;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_17_n_0;
  wire i__carry__0_i_18_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__0_i_4__4_n_0;
  wire i__carry__0_i_4__5_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5__2_n_0;
  wire i__carry__0_i_5__3_n_0;
  wire i__carry__0_i_5__4_n_0;
  wire i__carry__0_i_5__5_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6__2_n_0;
  wire i__carry__0_i_6__3_n_0;
  wire i__carry__0_i_6__4_n_0;
  wire i__carry__0_i_6__5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7__1_n_0;
  wire i__carry__0_i_7__2_n_0;
  wire i__carry__0_i_7__3_n_0;
  wire i__carry__0_i_7__4_n_0;
  wire i__carry__0_i_7__5_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8__1_n_0;
  wire i__carry__0_i_8__2_n_0;
  wire i__carry__0_i_8__3_n_0;
  wire i__carry__0_i_8__4_n_0;
  wire i__carry__0_i_8__5_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__0_i_9_n_1;
  wire i__carry__0_i_9_n_2;
  wire i__carry__0_i_9_n_3;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_10_n_1;
  wire i__carry__1_i_10_n_2;
  wire i__carry__1_i_10_n_3;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_12_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_15_n_0;
  wire i__carry__1_i_16_n_0;
  wire i__carry__1_i_17_n_0;
  wire i__carry__1_i_18_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1__3_n_0;
  wire i__carry__1_i_1__4_n_0;
  wire i__carry__1_i_1__5_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2__3_n_0;
  wire i__carry__1_i_2__4_n_0;
  wire i__carry__1_i_2__5_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_3__3_n_0;
  wire i__carry__1_i_3__4_n_0;
  wire i__carry__1_i_3__5_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_4__3_n_0;
  wire i__carry__1_i_4__4_n_0;
  wire i__carry__1_i_4__5_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5__0_n_0;
  wire i__carry__1_i_5__1_n_0;
  wire i__carry__1_i_5__2_n_0;
  wire i__carry__1_i_5__3_n_0;
  wire i__carry__1_i_5__4_n_0;
  wire i__carry__1_i_5__5_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6__0_n_0;
  wire i__carry__1_i_6__1_n_0;
  wire i__carry__1_i_6__2_n_0;
  wire i__carry__1_i_6__3_n_0;
  wire i__carry__1_i_6__4_n_0;
  wire i__carry__1_i_6__5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7__0_n_0;
  wire i__carry__1_i_7__1_n_0;
  wire i__carry__1_i_7__2_n_0;
  wire i__carry__1_i_7__3_n_0;
  wire i__carry__1_i_7__4_n_0;
  wire i__carry__1_i_7__5_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8__0_n_0;
  wire i__carry__1_i_8__1_n_0;
  wire i__carry__1_i_8__2_n_0;
  wire i__carry__1_i_8__3_n_0;
  wire i__carry__1_i_8__4_n_0;
  wire i__carry__1_i_8__5_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__1_i_9_n_1;
  wire i__carry__1_i_9_n_2;
  wire i__carry__1_i_9_n_3;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_10_n_1;
  wire i__carry__2_i_10_n_2;
  wire i__carry__2_i_10_n_3;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_15_n_0;
  wire i__carry__2_i_16_n_0;
  wire i__carry__2_i_17_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_1__2_n_0;
  wire i__carry__2_i_1__3_n_0;
  wire i__carry__2_i_1__4_n_0;
  wire i__carry__2_i_1__5_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2__2_n_0;
  wire i__carry__2_i_2__3_n_0;
  wire i__carry__2_i_2__4_n_0;
  wire i__carry__2_i_2__5_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3__1_n_0;
  wire i__carry__2_i_3__2_n_0;
  wire i__carry__2_i_3__3_n_0;
  wire i__carry__2_i_3__4_n_0;
  wire i__carry__2_i_3__5_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_4__2_n_0;
  wire i__carry__2_i_4__3_n_0;
  wire i__carry__2_i_4__4_n_0;
  wire i__carry__2_i_4__5_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5__0_n_0;
  wire i__carry__2_i_5__1_n_0;
  wire i__carry__2_i_5__2_n_0;
  wire i__carry__2_i_5__3_n_0;
  wire i__carry__2_i_5__4_n_0;
  wire i__carry__2_i_5__5_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6__0_n_0;
  wire i__carry__2_i_6__1_n_0;
  wire i__carry__2_i_6__2_n_0;
  wire i__carry__2_i_6__3_n_0;
  wire i__carry__2_i_6__4_n_0;
  wire i__carry__2_i_6__5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7__0_n_0;
  wire i__carry__2_i_7__1_n_0;
  wire i__carry__2_i_7__2_n_0;
  wire i__carry__2_i_7__3_n_0;
  wire i__carry__2_i_7__4_n_0;
  wire i__carry__2_i_7__5_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8__0_n_0;
  wire i__carry__2_i_8__1_n_0;
  wire i__carry__2_i_8__2_n_0;
  wire i__carry__2_i_8__3_n_0;
  wire i__carry__2_i_8__4_n_0;
  wire i__carry__2_i_8__5_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__2_i_9_n_2;
  wire i__carry__2_i_9_n_3;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_11_n_1;
  wire i__carry_i_11_n_2;
  wire i__carry_i_11_n_3;
  wire i__carry_i_12_n_0;
  wire i__carry_i_12_n_1;
  wire i__carry_i_12_n_2;
  wire i__carry_i_12_n_3;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4__5_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5__5_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6__5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7__4_n_0;
  wire i__carry_i_7__5_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8__3_n_0;
  wire i__carry_i_8__4_n_0;
  wire i__carry_i_8__5_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire [3:0]p_0_in;
  wire [31:0]p_1_in;
  wire [31:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_4 ;
  wire \plusOp_inferred__0/i__carry__4_n_5 ;
  wire \plusOp_inferred__0/i__carry__4_n_6 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_4 ;
  wire \plusOp_inferred__0/i__carry__5_n_5 ;
  wire \plusOp_inferred__0/i__carry__5_n_6 ;
  wire \plusOp_inferred__0/i__carry__5_n_7 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_5 ;
  wire \plusOp_inferred__0/i__carry__6_n_6 ;
  wire \plusOp_inferred__0/i__carry__6_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire \plusOp_inferred__1/i__carry__0_n_0 ;
  wire \plusOp_inferred__1/i__carry__0_n_1 ;
  wire \plusOp_inferred__1/i__carry__0_n_2 ;
  wire \plusOp_inferred__1/i__carry__0_n_3 ;
  wire \plusOp_inferred__1/i__carry__0_n_4 ;
  wire \plusOp_inferred__1/i__carry__0_n_5 ;
  wire \plusOp_inferred__1/i__carry__0_n_6 ;
  wire \plusOp_inferred__1/i__carry__0_n_7 ;
  wire \plusOp_inferred__1/i__carry__1_n_0 ;
  wire \plusOp_inferred__1/i__carry__1_n_1 ;
  wire \plusOp_inferred__1/i__carry__1_n_2 ;
  wire \plusOp_inferred__1/i__carry__1_n_3 ;
  wire \plusOp_inferred__1/i__carry__1_n_4 ;
  wire \plusOp_inferred__1/i__carry__1_n_5 ;
  wire \plusOp_inferred__1/i__carry__1_n_6 ;
  wire \plusOp_inferred__1/i__carry__1_n_7 ;
  wire \plusOp_inferred__1/i__carry__2_n_0 ;
  wire \plusOp_inferred__1/i__carry__2_n_1 ;
  wire \plusOp_inferred__1/i__carry__2_n_2 ;
  wire \plusOp_inferred__1/i__carry__2_n_3 ;
  wire \plusOp_inferred__1/i__carry__2_n_4 ;
  wire \plusOp_inferred__1/i__carry__2_n_5 ;
  wire \plusOp_inferred__1/i__carry__2_n_6 ;
  wire \plusOp_inferred__1/i__carry__2_n_7 ;
  wire \plusOp_inferred__1/i__carry__3_n_0 ;
  wire \plusOp_inferred__1/i__carry__3_n_1 ;
  wire \plusOp_inferred__1/i__carry__3_n_2 ;
  wire \plusOp_inferred__1/i__carry__3_n_3 ;
  wire \plusOp_inferred__1/i__carry__3_n_4 ;
  wire \plusOp_inferred__1/i__carry__3_n_5 ;
  wire \plusOp_inferred__1/i__carry__3_n_6 ;
  wire \plusOp_inferred__1/i__carry__3_n_7 ;
  wire \plusOp_inferred__1/i__carry__4_n_0 ;
  wire \plusOp_inferred__1/i__carry__4_n_1 ;
  wire \plusOp_inferred__1/i__carry__4_n_2 ;
  wire \plusOp_inferred__1/i__carry__4_n_3 ;
  wire \plusOp_inferred__1/i__carry__4_n_4 ;
  wire \plusOp_inferred__1/i__carry__4_n_5 ;
  wire \plusOp_inferred__1/i__carry__4_n_6 ;
  wire \plusOp_inferred__1/i__carry__4_n_7 ;
  wire \plusOp_inferred__1/i__carry__5_n_0 ;
  wire \plusOp_inferred__1/i__carry__5_n_1 ;
  wire \plusOp_inferred__1/i__carry__5_n_2 ;
  wire \plusOp_inferred__1/i__carry__5_n_3 ;
  wire \plusOp_inferred__1/i__carry__5_n_4 ;
  wire \plusOp_inferred__1/i__carry__5_n_5 ;
  wire \plusOp_inferred__1/i__carry__5_n_6 ;
  wire \plusOp_inferred__1/i__carry__5_n_7 ;
  wire \plusOp_inferred__1/i__carry__6_n_2 ;
  wire \plusOp_inferred__1/i__carry__6_n_3 ;
  wire \plusOp_inferred__1/i__carry__6_n_5 ;
  wire \plusOp_inferred__1/i__carry__6_n_6 ;
  wire \plusOp_inferred__1/i__carry__6_n_7 ;
  wire \plusOp_inferred__1/i__carry_n_0 ;
  wire \plusOp_inferred__1/i__carry_n_1 ;
  wire \plusOp_inferred__1/i__carry_n_2 ;
  wire \plusOp_inferred__1/i__carry_n_3 ;
  wire \plusOp_inferred__1/i__carry_n_4 ;
  wire \plusOp_inferred__1/i__carry_n_5 ;
  wire \plusOp_inferred__1/i__carry_n_6 ;
  wire \plusOp_inferred__1/i__carry_n_7 ;
  wire \plusOp_inferred__2/i__carry__0_n_0 ;
  wire \plusOp_inferred__2/i__carry__0_n_1 ;
  wire \plusOp_inferred__2/i__carry__0_n_2 ;
  wire \plusOp_inferred__2/i__carry__0_n_3 ;
  wire \plusOp_inferred__2/i__carry__0_n_4 ;
  wire \plusOp_inferred__2/i__carry__0_n_5 ;
  wire \plusOp_inferred__2/i__carry__0_n_6 ;
  wire \plusOp_inferred__2/i__carry__0_n_7 ;
  wire \plusOp_inferred__2/i__carry__1_n_0 ;
  wire \plusOp_inferred__2/i__carry__1_n_1 ;
  wire \plusOp_inferred__2/i__carry__1_n_2 ;
  wire \plusOp_inferred__2/i__carry__1_n_3 ;
  wire \plusOp_inferred__2/i__carry__1_n_4 ;
  wire \plusOp_inferred__2/i__carry__1_n_5 ;
  wire \plusOp_inferred__2/i__carry__1_n_6 ;
  wire \plusOp_inferred__2/i__carry__1_n_7 ;
  wire \plusOp_inferred__2/i__carry__2_n_0 ;
  wire \plusOp_inferred__2/i__carry__2_n_1 ;
  wire \plusOp_inferred__2/i__carry__2_n_2 ;
  wire \plusOp_inferred__2/i__carry__2_n_3 ;
  wire \plusOp_inferred__2/i__carry__2_n_4 ;
  wire \plusOp_inferred__2/i__carry__2_n_5 ;
  wire \plusOp_inferred__2/i__carry__2_n_6 ;
  wire \plusOp_inferred__2/i__carry__2_n_7 ;
  wire \plusOp_inferred__2/i__carry__3_n_0 ;
  wire \plusOp_inferred__2/i__carry__3_n_1 ;
  wire \plusOp_inferred__2/i__carry__3_n_2 ;
  wire \plusOp_inferred__2/i__carry__3_n_3 ;
  wire \plusOp_inferred__2/i__carry__3_n_4 ;
  wire \plusOp_inferred__2/i__carry__3_n_5 ;
  wire \plusOp_inferred__2/i__carry__3_n_6 ;
  wire \plusOp_inferred__2/i__carry__3_n_7 ;
  wire \plusOp_inferred__2/i__carry__4_n_0 ;
  wire \plusOp_inferred__2/i__carry__4_n_1 ;
  wire \plusOp_inferred__2/i__carry__4_n_2 ;
  wire \plusOp_inferred__2/i__carry__4_n_3 ;
  wire \plusOp_inferred__2/i__carry__4_n_4 ;
  wire \plusOp_inferred__2/i__carry__4_n_5 ;
  wire \plusOp_inferred__2/i__carry__4_n_6 ;
  wire \plusOp_inferred__2/i__carry__4_n_7 ;
  wire \plusOp_inferred__2/i__carry__5_n_0 ;
  wire \plusOp_inferred__2/i__carry__5_n_1 ;
  wire \plusOp_inferred__2/i__carry__5_n_2 ;
  wire \plusOp_inferred__2/i__carry__5_n_3 ;
  wire \plusOp_inferred__2/i__carry__5_n_4 ;
  wire \plusOp_inferred__2/i__carry__5_n_5 ;
  wire \plusOp_inferred__2/i__carry__5_n_6 ;
  wire \plusOp_inferred__2/i__carry__5_n_7 ;
  wire \plusOp_inferred__2/i__carry__6_n_2 ;
  wire \plusOp_inferred__2/i__carry__6_n_3 ;
  wire \plusOp_inferred__2/i__carry__6_n_5 ;
  wire \plusOp_inferred__2/i__carry__6_n_6 ;
  wire \plusOp_inferred__2/i__carry__6_n_7 ;
  wire \plusOp_inferred__2/i__carry_n_0 ;
  wire \plusOp_inferred__2/i__carry_n_1 ;
  wire \plusOp_inferred__2/i__carry_n_2 ;
  wire \plusOp_inferred__2/i__carry_n_3 ;
  wire \plusOp_inferred__2/i__carry_n_4 ;
  wire \plusOp_inferred__2/i__carry_n_5 ;
  wire \plusOp_inferred__2/i__carry_n_6 ;
  wire \plusOp_inferred__2/i__carry_n_7 ;
  wire \plusOp_inferred__3/i__carry__0_n_0 ;
  wire \plusOp_inferred__3/i__carry__0_n_1 ;
  wire \plusOp_inferred__3/i__carry__0_n_2 ;
  wire \plusOp_inferred__3/i__carry__0_n_3 ;
  wire \plusOp_inferred__3/i__carry__0_n_4 ;
  wire \plusOp_inferred__3/i__carry__0_n_5 ;
  wire \plusOp_inferred__3/i__carry__0_n_6 ;
  wire \plusOp_inferred__3/i__carry__0_n_7 ;
  wire \plusOp_inferred__3/i__carry__1_n_0 ;
  wire \plusOp_inferred__3/i__carry__1_n_1 ;
  wire \plusOp_inferred__3/i__carry__1_n_2 ;
  wire \plusOp_inferred__3/i__carry__1_n_3 ;
  wire \plusOp_inferred__3/i__carry__1_n_4 ;
  wire \plusOp_inferred__3/i__carry__1_n_5 ;
  wire \plusOp_inferred__3/i__carry__1_n_6 ;
  wire \plusOp_inferred__3/i__carry__1_n_7 ;
  wire \plusOp_inferred__3/i__carry__2_n_0 ;
  wire \plusOp_inferred__3/i__carry__2_n_1 ;
  wire \plusOp_inferred__3/i__carry__2_n_2 ;
  wire \plusOp_inferred__3/i__carry__2_n_3 ;
  wire \plusOp_inferred__3/i__carry__2_n_4 ;
  wire \plusOp_inferred__3/i__carry__2_n_5 ;
  wire \plusOp_inferred__3/i__carry__2_n_6 ;
  wire \plusOp_inferred__3/i__carry__2_n_7 ;
  wire \plusOp_inferred__3/i__carry__3_n_0 ;
  wire \plusOp_inferred__3/i__carry__3_n_1 ;
  wire \plusOp_inferred__3/i__carry__3_n_2 ;
  wire \plusOp_inferred__3/i__carry__3_n_3 ;
  wire \plusOp_inferred__3/i__carry__3_n_4 ;
  wire \plusOp_inferred__3/i__carry__3_n_5 ;
  wire \plusOp_inferred__3/i__carry__3_n_6 ;
  wire \plusOp_inferred__3/i__carry__3_n_7 ;
  wire \plusOp_inferred__3/i__carry__4_n_0 ;
  wire \plusOp_inferred__3/i__carry__4_n_1 ;
  wire \plusOp_inferred__3/i__carry__4_n_2 ;
  wire \plusOp_inferred__3/i__carry__4_n_3 ;
  wire \plusOp_inferred__3/i__carry__4_n_4 ;
  wire \plusOp_inferred__3/i__carry__4_n_5 ;
  wire \plusOp_inferred__3/i__carry__4_n_6 ;
  wire \plusOp_inferred__3/i__carry__4_n_7 ;
  wire \plusOp_inferred__3/i__carry__5_n_0 ;
  wire \plusOp_inferred__3/i__carry__5_n_1 ;
  wire \plusOp_inferred__3/i__carry__5_n_2 ;
  wire \plusOp_inferred__3/i__carry__5_n_3 ;
  wire \plusOp_inferred__3/i__carry__5_n_4 ;
  wire \plusOp_inferred__3/i__carry__5_n_5 ;
  wire \plusOp_inferred__3/i__carry__5_n_6 ;
  wire \plusOp_inferred__3/i__carry__5_n_7 ;
  wire \plusOp_inferred__3/i__carry__6_n_2 ;
  wire \plusOp_inferred__3/i__carry__6_n_3 ;
  wire \plusOp_inferred__3/i__carry__6_n_5 ;
  wire \plusOp_inferred__3/i__carry__6_n_6 ;
  wire \plusOp_inferred__3/i__carry__6_n_7 ;
  wire \plusOp_inferred__3/i__carry_n_0 ;
  wire \plusOp_inferred__3/i__carry_n_1 ;
  wire \plusOp_inferred__3/i__carry_n_2 ;
  wire \plusOp_inferred__3/i__carry_n_3 ;
  wire \plusOp_inferred__3/i__carry_n_4 ;
  wire \plusOp_inferred__3/i__carry_n_5 ;
  wire \plusOp_inferred__3/i__carry_n_6 ;
  wire \plusOp_inferred__3/i__carry_n_7 ;
  wire \plusOp_inferred__4/i__carry__0_n_0 ;
  wire \plusOp_inferred__4/i__carry__0_n_1 ;
  wire \plusOp_inferred__4/i__carry__0_n_2 ;
  wire \plusOp_inferred__4/i__carry__0_n_3 ;
  wire \plusOp_inferred__4/i__carry__0_n_4 ;
  wire \plusOp_inferred__4/i__carry__0_n_5 ;
  wire \plusOp_inferred__4/i__carry__0_n_6 ;
  wire \plusOp_inferred__4/i__carry__0_n_7 ;
  wire \plusOp_inferred__4/i__carry__1_n_0 ;
  wire \plusOp_inferred__4/i__carry__1_n_1 ;
  wire \plusOp_inferred__4/i__carry__1_n_2 ;
  wire \plusOp_inferred__4/i__carry__1_n_3 ;
  wire \plusOp_inferred__4/i__carry__1_n_4 ;
  wire \plusOp_inferred__4/i__carry__1_n_5 ;
  wire \plusOp_inferred__4/i__carry__1_n_6 ;
  wire \plusOp_inferred__4/i__carry__1_n_7 ;
  wire \plusOp_inferred__4/i__carry__2_n_0 ;
  wire \plusOp_inferred__4/i__carry__2_n_1 ;
  wire \plusOp_inferred__4/i__carry__2_n_2 ;
  wire \plusOp_inferred__4/i__carry__2_n_3 ;
  wire \plusOp_inferred__4/i__carry__2_n_4 ;
  wire \plusOp_inferred__4/i__carry__2_n_5 ;
  wire \plusOp_inferred__4/i__carry__2_n_6 ;
  wire \plusOp_inferred__4/i__carry__2_n_7 ;
  wire \plusOp_inferred__4/i__carry__3_n_0 ;
  wire \plusOp_inferred__4/i__carry__3_n_1 ;
  wire \plusOp_inferred__4/i__carry__3_n_2 ;
  wire \plusOp_inferred__4/i__carry__3_n_3 ;
  wire \plusOp_inferred__4/i__carry__3_n_4 ;
  wire \plusOp_inferred__4/i__carry__3_n_5 ;
  wire \plusOp_inferred__4/i__carry__3_n_6 ;
  wire \plusOp_inferred__4/i__carry__3_n_7 ;
  wire \plusOp_inferred__4/i__carry__4_n_0 ;
  wire \plusOp_inferred__4/i__carry__4_n_1 ;
  wire \plusOp_inferred__4/i__carry__4_n_2 ;
  wire \plusOp_inferred__4/i__carry__4_n_3 ;
  wire \plusOp_inferred__4/i__carry__4_n_4 ;
  wire \plusOp_inferred__4/i__carry__4_n_5 ;
  wire \plusOp_inferred__4/i__carry__4_n_6 ;
  wire \plusOp_inferred__4/i__carry__4_n_7 ;
  wire \plusOp_inferred__4/i__carry__5_n_0 ;
  wire \plusOp_inferred__4/i__carry__5_n_1 ;
  wire \plusOp_inferred__4/i__carry__5_n_2 ;
  wire \plusOp_inferred__4/i__carry__5_n_3 ;
  wire \plusOp_inferred__4/i__carry__5_n_4 ;
  wire \plusOp_inferred__4/i__carry__5_n_5 ;
  wire \plusOp_inferred__4/i__carry__5_n_6 ;
  wire \plusOp_inferred__4/i__carry__5_n_7 ;
  wire \plusOp_inferred__4/i__carry__6_n_2 ;
  wire \plusOp_inferred__4/i__carry__6_n_3 ;
  wire \plusOp_inferred__4/i__carry__6_n_5 ;
  wire \plusOp_inferred__4/i__carry__6_n_6 ;
  wire \plusOp_inferred__4/i__carry__6_n_7 ;
  wire \plusOp_inferred__4/i__carry_n_0 ;
  wire \plusOp_inferred__4/i__carry_n_1 ;
  wire \plusOp_inferred__4/i__carry_n_2 ;
  wire \plusOp_inferred__4/i__carry_n_3 ;
  wire \plusOp_inferred__4/i__carry_n_4 ;
  wire \plusOp_inferred__4/i__carry_n_5 ;
  wire \plusOp_inferred__4/i__carry_n_6 ;
  wire \plusOp_inferred__4/i__carry_n_7 ;
  wire \plusOp_inferred__5/i__carry__0_n_0 ;
  wire \plusOp_inferred__5/i__carry__0_n_1 ;
  wire \plusOp_inferred__5/i__carry__0_n_2 ;
  wire \plusOp_inferred__5/i__carry__0_n_3 ;
  wire \plusOp_inferred__5/i__carry__0_n_4 ;
  wire \plusOp_inferred__5/i__carry__0_n_5 ;
  wire \plusOp_inferred__5/i__carry__0_n_6 ;
  wire \plusOp_inferred__5/i__carry__0_n_7 ;
  wire \plusOp_inferred__5/i__carry__1_n_0 ;
  wire \plusOp_inferred__5/i__carry__1_n_1 ;
  wire \plusOp_inferred__5/i__carry__1_n_2 ;
  wire \plusOp_inferred__5/i__carry__1_n_3 ;
  wire \plusOp_inferred__5/i__carry__1_n_4 ;
  wire \plusOp_inferred__5/i__carry__1_n_5 ;
  wire \plusOp_inferred__5/i__carry__1_n_6 ;
  wire \plusOp_inferred__5/i__carry__1_n_7 ;
  wire \plusOp_inferred__5/i__carry__2_n_0 ;
  wire \plusOp_inferred__5/i__carry__2_n_1 ;
  wire \plusOp_inferred__5/i__carry__2_n_2 ;
  wire \plusOp_inferred__5/i__carry__2_n_3 ;
  wire \plusOp_inferred__5/i__carry__2_n_4 ;
  wire \plusOp_inferred__5/i__carry__2_n_5 ;
  wire \plusOp_inferred__5/i__carry__2_n_6 ;
  wire \plusOp_inferred__5/i__carry__2_n_7 ;
  wire \plusOp_inferred__5/i__carry__3_n_0 ;
  wire \plusOp_inferred__5/i__carry__3_n_1 ;
  wire \plusOp_inferred__5/i__carry__3_n_2 ;
  wire \plusOp_inferred__5/i__carry__3_n_3 ;
  wire \plusOp_inferred__5/i__carry__3_n_4 ;
  wire \plusOp_inferred__5/i__carry__3_n_5 ;
  wire \plusOp_inferred__5/i__carry__3_n_6 ;
  wire \plusOp_inferred__5/i__carry__3_n_7 ;
  wire \plusOp_inferred__5/i__carry__4_n_0 ;
  wire \plusOp_inferred__5/i__carry__4_n_1 ;
  wire \plusOp_inferred__5/i__carry__4_n_2 ;
  wire \plusOp_inferred__5/i__carry__4_n_3 ;
  wire \plusOp_inferred__5/i__carry__4_n_4 ;
  wire \plusOp_inferred__5/i__carry__4_n_5 ;
  wire \plusOp_inferred__5/i__carry__4_n_6 ;
  wire \plusOp_inferred__5/i__carry__4_n_7 ;
  wire \plusOp_inferred__5/i__carry__5_n_0 ;
  wire \plusOp_inferred__5/i__carry__5_n_1 ;
  wire \plusOp_inferred__5/i__carry__5_n_2 ;
  wire \plusOp_inferred__5/i__carry__5_n_3 ;
  wire \plusOp_inferred__5/i__carry__5_n_4 ;
  wire \plusOp_inferred__5/i__carry__5_n_5 ;
  wire \plusOp_inferred__5/i__carry__5_n_6 ;
  wire \plusOp_inferred__5/i__carry__5_n_7 ;
  wire \plusOp_inferred__5/i__carry__6_n_2 ;
  wire \plusOp_inferred__5/i__carry__6_n_3 ;
  wire \plusOp_inferred__5/i__carry__6_n_5 ;
  wire \plusOp_inferred__5/i__carry__6_n_6 ;
  wire \plusOp_inferred__5/i__carry__6_n_7 ;
  wire \plusOp_inferred__5/i__carry_n_0 ;
  wire \plusOp_inferred__5/i__carry_n_1 ;
  wire \plusOp_inferred__5/i__carry_n_2 ;
  wire \plusOp_inferred__5/i__carry_n_3 ;
  wire \plusOp_inferred__5/i__carry_n_4 ;
  wire \plusOp_inferred__5/i__carry_n_5 ;
  wire \plusOp_inferred__5/i__carry_n_6 ;
  wire \plusOp_inferred__5/i__carry_n_7 ;
  wire ppm_ff1;
  wire ppm_ff2;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_ppm_in;
  wire s00_ppm_out;
  wire s00_ppm_out_INST_0_i_10_n_0;
  wire s00_ppm_out_INST_0_i_1_n_0;
  wire s00_ppm_out_INST_0_i_2_n_0;
  wire s00_ppm_out_INST_0_i_3_n_0;
  wire s00_ppm_out_INST_0_i_4_n_0;
  wire s00_ppm_out_INST_0_i_5_n_0;
  wire s00_ppm_out_INST_0_i_6_n_0;
  wire s00_ppm_out_INST_0_i_7_n_0;
  wire s00_ppm_out_INST_0_i_8_n_0;
  wire s00_ppm_out_INST_0_i_9_n_0;
  wire [3:0]sel0;
  wire [0:0]slv_reg0;
  wire [31:1]slv_reg0__0;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire [3:3]\NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gen_current_clk_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_gen_idle_clks2__0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_gen_idle_clks2__97_carry__6_CO_UNCONNECTED;
  wire [3:0]\NLW_gen_ns1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__2/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__3/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__3/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__3/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__3/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__4/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__4/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__4/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__4/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__5/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__5/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__5/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__5/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__6/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__6/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__6/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_ns1_inferred__6/i__carry__2_O_UNCONNECTED ;
  wire [3:2]NLW_i__carry__2_i_9_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__2_i_9_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__3/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__3/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__4/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__4/i__carry__6_O_UNCONNECTED ;
  wire [3:2]\NLW_plusOp_inferred__5/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__5/i__carry__6_O_UNCONNECTED ;

  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(clear));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .S(clear));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .S(clear));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .S(clear));
  FDSE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .S(clear));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(clear));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(clear));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(clear));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(clear));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_0),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(clear));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(clear));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[0]),
        .I4(sel0[0]),
        .I5(slv_reg0),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(cap_reg11[0]),
        .I1(\cap_reg10_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(cap_reg15[0]),
        .I1(cap_reg14[0]),
        .I2(sel0[1]),
        .I3(cap_reg13[0]),
        .I4(sel0[0]),
        .I5(cap_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[10]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(cap_reg11[10]),
        .I1(\cap_reg10_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(cap_reg15[10]),
        .I1(cap_reg14[10]),
        .I2(sel0[1]),
        .I3(cap_reg13[10]),
        .I4(sel0[0]),
        .I5(cap_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[11]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(cap_reg11[11]),
        .I1(\cap_reg10_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(cap_reg15[11]),
        .I1(cap_reg14[11]),
        .I2(sel0[1]),
        .I3(cap_reg13[11]),
        .I4(sel0[0]),
        .I5(cap_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[12]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(cap_reg11[12]),
        .I1(\cap_reg10_reg_n_0_[12] ),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(cap_reg15[12]),
        .I1(cap_reg14[12]),
        .I2(sel0[1]),
        .I3(cap_reg13[12]),
        .I4(sel0[0]),
        .I5(cap_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[13]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(cap_reg11[13]),
        .I1(\cap_reg10_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(cap_reg15[13]),
        .I1(cap_reg14[13]),
        .I2(sel0[1]),
        .I3(cap_reg13[13]),
        .I4(sel0[0]),
        .I5(cap_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[14]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(cap_reg11[14]),
        .I1(\cap_reg10_reg_n_0_[14] ),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(cap_reg15[14]),
        .I1(cap_reg14[14]),
        .I2(sel0[1]),
        .I3(cap_reg13[14]),
        .I4(sel0[0]),
        .I5(cap_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[15]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(cap_reg11[15]),
        .I1(\cap_reg10_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(cap_reg15[15]),
        .I1(cap_reg14[15]),
        .I2(sel0[1]),
        .I3(cap_reg13[15]),
        .I4(sel0[0]),
        .I5(cap_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[16]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(cap_reg11[16]),
        .I1(\cap_reg10_reg_n_0_[16] ),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(cap_reg15[16]),
        .I1(cap_reg14[16]),
        .I2(sel0[1]),
        .I3(cap_reg13[16]),
        .I4(sel0[0]),
        .I5(cap_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[17]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(cap_reg11[17]),
        .I1(\cap_reg10_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(cap_reg15[17]),
        .I1(cap_reg14[17]),
        .I2(sel0[1]),
        .I3(cap_reg13[17]),
        .I4(sel0[0]),
        .I5(cap_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[18]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(cap_reg11[18]),
        .I1(\cap_reg10_reg_n_0_[18] ),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(cap_reg15[18]),
        .I1(cap_reg14[18]),
        .I2(sel0[1]),
        .I3(cap_reg13[18]),
        .I4(sel0[0]),
        .I5(cap_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[19]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(cap_reg11[19]),
        .I1(\cap_reg10_reg_n_0_[19] ),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(cap_reg15[19]),
        .I1(cap_reg14[19]),
        .I2(sel0[1]),
        .I3(cap_reg13[19]),
        .I4(sel0[0]),
        .I5(cap_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[1]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(cap_reg11[1]),
        .I1(\cap_reg10_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(cap_reg15[1]),
        .I1(cap_reg14[1]),
        .I2(sel0[1]),
        .I3(cap_reg13[1]),
        .I4(sel0[0]),
        .I5(cap_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[20]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(cap_reg11[20]),
        .I1(\cap_reg10_reg_n_0_[20] ),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(cap_reg15[20]),
        .I1(cap_reg14[20]),
        .I2(sel0[1]),
        .I3(cap_reg13[20]),
        .I4(sel0[0]),
        .I5(cap_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[21]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(cap_reg11[21]),
        .I1(\cap_reg10_reg_n_0_[21] ),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(cap_reg15[21]),
        .I1(cap_reg14[21]),
        .I2(sel0[1]),
        .I3(cap_reg13[21]),
        .I4(sel0[0]),
        .I5(cap_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[22]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(cap_reg11[22]),
        .I1(\cap_reg10_reg_n_0_[22] ),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(cap_reg15[22]),
        .I1(cap_reg14[22]),
        .I2(sel0[1]),
        .I3(cap_reg13[22]),
        .I4(sel0[0]),
        .I5(cap_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[23]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(cap_reg11[23]),
        .I1(\cap_reg10_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(cap_reg15[23]),
        .I1(cap_reg14[23]),
        .I2(sel0[1]),
        .I3(cap_reg13[23]),
        .I4(sel0[0]),
        .I5(cap_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[24]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(cap_reg11[24]),
        .I1(\cap_reg10_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(cap_reg15[24]),
        .I1(cap_reg14[24]),
        .I2(sel0[1]),
        .I3(cap_reg13[24]),
        .I4(sel0[0]),
        .I5(cap_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[25]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(cap_reg11[25]),
        .I1(\cap_reg10_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(cap_reg15[25]),
        .I1(cap_reg14[25]),
        .I2(sel0[1]),
        .I3(cap_reg13[25]),
        .I4(sel0[0]),
        .I5(cap_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[26]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(cap_reg11[26]),
        .I1(\cap_reg10_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(cap_reg15[26]),
        .I1(cap_reg14[26]),
        .I2(sel0[1]),
        .I3(cap_reg13[26]),
        .I4(sel0[0]),
        .I5(cap_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[27]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(cap_reg11[27]),
        .I1(\cap_reg10_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(cap_reg15[27]),
        .I1(cap_reg14[27]),
        .I2(sel0[1]),
        .I3(cap_reg13[27]),
        .I4(sel0[0]),
        .I5(cap_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[28]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(cap_reg11[28]),
        .I1(\cap_reg10_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(cap_reg15[28]),
        .I1(cap_reg14[28]),
        .I2(sel0[1]),
        .I3(cap_reg13[28]),
        .I4(sel0[0]),
        .I5(cap_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[29]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(cap_reg11[29]),
        .I1(\cap_reg10_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(cap_reg15[29]),
        .I1(cap_reg14[29]),
        .I2(sel0[1]),
        .I3(cap_reg13[29]),
        .I4(sel0[0]),
        .I5(cap_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[2]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(cap_reg11[2]),
        .I1(\cap_reg10_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(cap_reg15[2]),
        .I1(cap_reg14[2]),
        .I2(sel0[1]),
        .I3(cap_reg13[2]),
        .I4(sel0[0]),
        .I5(cap_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[30]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(cap_reg11[30]),
        .I1(\cap_reg10_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(cap_reg15[30]),
        .I1(cap_reg14[30]),
        .I2(sel0[1]),
        .I3(cap_reg13[30]),
        .I4(sel0[0]),
        .I5(cap_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[31]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[31]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(cap_reg11[31]),
        .I1(\cap_reg10_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(cap_reg15[31]),
        .I1(cap_reg14[31]),
        .I2(sel0[1]),
        .I3(cap_reg13[31]),
        .I4(sel0[0]),
        .I5(cap_reg12[31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[3]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(cap_reg11[3]),
        .I1(\cap_reg10_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(cap_reg15[3]),
        .I1(cap_reg14[3]),
        .I2(sel0[1]),
        .I3(cap_reg13[3]),
        .I4(sel0[0]),
        .I5(cap_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[4]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(cap_reg11[4]),
        .I1(\cap_reg10_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(cap_reg15[4]),
        .I1(cap_reg14[4]),
        .I2(sel0[1]),
        .I3(cap_reg13[4]),
        .I4(sel0[0]),
        .I5(cap_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[5]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(cap_reg11[5]),
        .I1(\cap_reg10_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(cap_reg15[5]),
        .I1(cap_reg14[5]),
        .I2(sel0[1]),
        .I3(cap_reg13[5]),
        .I4(sel0[0]),
        .I5(cap_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[6]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(cap_reg11[6]),
        .I1(\cap_reg10_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(cap_reg15[6]),
        .I1(cap_reg14[6]),
        .I2(sel0[1]),
        .I3(cap_reg13[6]),
        .I4(sel0[0]),
        .I5(cap_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[7]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(cap_reg11[7]),
        .I1(\cap_reg10_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(cap_reg15[7]),
        .I1(cap_reg14[7]),
        .I2(sel0[1]),
        .I3(cap_reg13[7]),
        .I4(sel0[0]),
        .I5(cap_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[8]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(cap_reg11[8]),
        .I1(\cap_reg10_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(cap_reg15[8]),
        .I1(cap_reg14[8]),
        .I2(sel0[1]),
        .I3(cap_reg13[8]),
        .I4(sel0[0]),
        .I5(cap_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(frame_counter_reg[9]),
        .I4(sel0[0]),
        .I5(slv_reg0__0[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(cap_reg11[9]),
        .I1(\cap_reg10_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(cap_reg15[9]),
        .I1(cap_reg14[9]),
        .I2(sel0[1]),
        .I3(cap_reg13[9]),
        .I4(sel0[0]),
        .I5(cap_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(clear));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\axi_rdata[0]_i_5_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(clear));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\axi_rdata[10]_i_5_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(clear));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\axi_rdata[11]_i_5_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(clear));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\axi_rdata[12]_i_5_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(clear));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\axi_rdata[13]_i_5_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(clear));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\axi_rdata[14]_i_5_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(clear));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata_reg[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\axi_rdata[15]_i_5_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(clear));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\axi_rdata[16]_i_5_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(clear));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata_reg[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\axi_rdata[17]_i_5_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(clear));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata_reg[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\axi_rdata[18]_i_5_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(clear));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\axi_rdata[19]_i_5_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(clear));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\axi_rdata[1]_i_5_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(clear));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata_reg[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(clear));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(clear));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(clear));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(clear));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(clear));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(clear));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(clear));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(clear));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(clear));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(clear));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\axi_rdata[2]_i_5_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(clear));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(clear));
  MUXF8 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31]_i_4_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_5_n_0 ),
        .I1(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(\axi_rdata[31]_i_8_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(clear));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\axi_rdata[3]_i_5_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(clear));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\axi_rdata[4]_i_5_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(clear));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\axi_rdata[5]_i_5_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(clear));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\axi_rdata[6]_i_5_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(clear));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\axi_rdata[7]_i_5_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(clear));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\axi_rdata[8]_i_5_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(clear));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\axi_rdata[9]_i_5_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(clear));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_0),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c0_u[0]_i_1 
       (.I0(c0_u[0]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[10]_i_1 
       (.I0(plusOp[10]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[11]_i_1 
       (.I0(plusOp[11]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[12]_i_1 
       (.I0(plusOp[12]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[13]_i_1 
       (.I0(plusOp[13]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[14]_i_1 
       (.I0(plusOp[14]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[15]_i_1 
       (.I0(plusOp[15]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[16]_i_1 
       (.I0(plusOp[16]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[17]_i_1 
       (.I0(plusOp[17]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[18]_i_1 
       (.I0(plusOp[18]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[19]_i_1 
       (.I0(plusOp[19]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[1]_i_1 
       (.I0(plusOp[1]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[20]_i_1 
       (.I0(plusOp[20]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[21]_i_1 
       (.I0(plusOp[21]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[22]_i_1 
       (.I0(plusOp[22]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[23]_i_1 
       (.I0(plusOp[23]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[24]_i_1 
       (.I0(plusOp[24]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[25]_i_1 
       (.I0(plusOp[25]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[26]_i_1 
       (.I0(plusOp[26]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[27]_i_1 
       (.I0(plusOp[27]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[28]_i_1 
       (.I0(plusOp[28]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[29]_i_1 
       (.I0(plusOp[29]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[2]_i_1 
       (.I0(plusOp[2]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[30]_i_1 
       (.I0(plusOp[30]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[31]_i_1 
       (.I0(plusOp[31]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE666FFFFE667)) 
    \c0_u[31]_i_2 
       (.I0(ppm_ff2),
        .I1(cap_ps[3]),
        .I2(cap_ps[1]),
        .I3(cap_ps[2]),
        .I4(\cap_ps[3]_i_2_n_0 ),
        .I5(cap_ps[0]),
        .O(\c0_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[3]_i_1 
       (.I0(plusOp[3]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[4]_i_1 
       (.I0(plusOp[4]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[5]_i_1 
       (.I0(plusOp[5]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[6]_i_1 
       (.I0(plusOp[6]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[7]_i_1 
       (.I0(plusOp[7]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[8]_i_1 
       (.I0(plusOp[8]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c0_u[9]_i_1 
       (.I0(plusOp[9]),
        .I1(\c0_u[31]_i_2_n_0 ),
        .O(\c0_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[0]_i_1_n_0 ),
        .Q(c0_u[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[10]_i_1_n_0 ),
        .Q(c0_u[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[11]_i_1_n_0 ),
        .Q(c0_u[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[12]_i_1_n_0 ),
        .Q(c0_u[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[13]_i_1_n_0 ),
        .Q(c0_u[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[14]_i_1_n_0 ),
        .Q(c0_u[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[15]_i_1_n_0 ),
        .Q(c0_u[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[16]_i_1_n_0 ),
        .Q(c0_u[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[17]_i_1_n_0 ),
        .Q(c0_u[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[18]_i_1_n_0 ),
        .Q(c0_u[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[19]_i_1_n_0 ),
        .Q(c0_u[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[1]_i_1_n_0 ),
        .Q(c0_u[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[20]_i_1_n_0 ),
        .Q(c0_u[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[21]_i_1_n_0 ),
        .Q(c0_u[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[22]_i_1_n_0 ),
        .Q(c0_u[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[23]_i_1_n_0 ),
        .Q(c0_u[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[24]_i_1_n_0 ),
        .Q(c0_u[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[25]_i_1_n_0 ),
        .Q(c0_u[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[26]_i_1_n_0 ),
        .Q(c0_u[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[27]_i_1_n_0 ),
        .Q(c0_u[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[28]_i_1_n_0 ),
        .Q(c0_u[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[29]_i_1_n_0 ),
        .Q(c0_u[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[2]_i_1_n_0 ),
        .Q(c0_u[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[30]_i_1_n_0 ),
        .Q(c0_u[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[31]_i_1_n_0 ),
        .Q(c0_u[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[3]_i_1_n_0 ),
        .Q(c0_u[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[4]_i_1_n_0 ),
        .Q(c0_u[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[5]_i_1_n_0 ),
        .Q(c0_u[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[6]_i_1_n_0 ),
        .Q(c0_u[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[7]_i_1_n_0 ),
        .Q(c0_u[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[8]_i_1_n_0 ),
        .Q(c0_u[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c0_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ppm_ff2),
        .D(\c0_u[9]_i_1_n_0 ),
        .Q(c0_u[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c1_u[0]_i_1 
       (.I0(\c1_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[10]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[11]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[12]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[13]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[14]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[15]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[16]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[17]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[18]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[19]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[1]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[20]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[21]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[22]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[23]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[24]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[25]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[26]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[27]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[28]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[29]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[2]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[30]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \c1_u[31]_i_1 
       (.I0(ppm_ff2),
        .I1(\c1_u[31]_i_3_n_0 ),
        .I2(\c1_u[31]_i_4_n_0 ),
        .O(c1_u));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[31]_i_2 
       (.I0(\plusOp_inferred__0/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDCCEFFECCCEEEF)) 
    \c1_u[31]_i_3 
       (.I0(ppm_ff2),
        .I1(\cap_ps[3]_i_2_n_0 ),
        .I2(cap_ps[0]),
        .I3(cap_ps[1]),
        .I4(cap_ps[2]),
        .I5(cap_ps[3]),
        .O(\c1_u[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4DAFFFF8A0B)) 
    \c1_u[31]_i_4 
       (.I0(ppm_ff2),
        .I1(cap_ps[2]),
        .I2(cap_ps[1]),
        .I3(cap_ps[0]),
        .I4(\cap_ps[3]_i_2_n_0 ),
        .I5(cap_ps[3]),
        .O(\c1_u[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAF9F2F9FAF9F3)) 
    \c1_u[31]_i_5 
       (.I0(cap_ps[3]),
        .I1(cap_ps[0]),
        .I2(\cap_ps[3]_i_2_n_0 ),
        .I3(ppm_ff2),
        .I4(cap_ps[2]),
        .I5(cap_ps[1]),
        .O(\c1_u[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[3]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[4]_i_1 
       (.I0(\plusOp_inferred__0/i__carry_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[5]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[6]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[7]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[8]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c1_u[9]_i_1 
       (.I0(\plusOp_inferred__0/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_5_n_0 ),
        .O(\c1_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[0]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[10]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[11]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[12]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[13]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[14]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[15]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[16]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[17]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[18]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[19]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[1]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[20]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[21]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[22]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[23]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[24]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[25]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[26]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[27]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[28]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[29]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[2]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[30]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[31]_i_2_n_0 ),
        .Q(\c1_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[3]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[4]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[5]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[6]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[7]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[8]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c1_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c1_u),
        .D(\c1_u[9]_i_1_n_0 ),
        .Q(\c1_u_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c2_u[0]_i_1 
       (.I0(\c2_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[10]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[11]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[12]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[13]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[14]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[15]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[16]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[17]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[18]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[19]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[1]_i_1 
       (.I0(\plusOp_inferred__1/i__carry_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[20]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[21]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[22]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[23]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[24]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[25]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[26]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[27]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[28]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[29]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[2]_i_1 
       (.I0(\plusOp_inferred__1/i__carry_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[30]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \c2_u[31]_i_1 
       (.I0(ppm_ff2),
        .I1(\c1_u[31]_i_3_n_0 ),
        .I2(\c1_u[31]_i_5_n_0 ),
        .O(c2_u));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[31]_i_2 
       (.I0(\plusOp_inferred__1/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[3]_i_1 
       (.I0(\plusOp_inferred__1/i__carry_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[4]_i_1 
       (.I0(\plusOp_inferred__1/i__carry_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[5]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[6]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[7]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[8]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c2_u[9]_i_1 
       (.I0(\plusOp_inferred__1/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c2_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[0]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[10]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[11]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[12]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[13]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[14]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[15]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[16]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[17]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[18]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[19]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[1]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[20]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[21]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[22]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[23]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[24]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[25]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[26]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[27]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[28]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[29]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[2]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[30]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[31]_i_2_n_0 ),
        .Q(\c2_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[3]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[4]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[5]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[6]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[7]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[8]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c2_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c2_u),
        .D(\c2_u[9]_i_1_n_0 ),
        .Q(\c2_u_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c3_u[0]_i_1 
       (.I0(\c3_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[10]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[11]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[12]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[13]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[14]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[15]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[16]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[17]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[18]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[19]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[1]_i_1 
       (.I0(\plusOp_inferred__2/i__carry_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[20]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[21]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[22]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[23]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[24]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[25]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[26]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[27]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[28]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[29]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[2]_i_1 
       (.I0(\plusOp_inferred__2/i__carry_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[30]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \c3_u[31]_i_1 
       (.I0(ppm_ff2),
        .I1(\c1_u[31]_i_3_n_0 ),
        .I2(\c1_u[31]_i_5_n_0 ),
        .I3(\c1_u[31]_i_4_n_0 ),
        .O(c3_u));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[31]_i_2 
       (.I0(\plusOp_inferred__2/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[3]_i_1 
       (.I0(\plusOp_inferred__2/i__carry_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[4]_i_1 
       (.I0(\plusOp_inferred__2/i__carry_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[5]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[6]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[7]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[8]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c3_u[9]_i_1 
       (.I0(\plusOp_inferred__2/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_4_n_0 ),
        .O(\c3_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[0]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[10]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[11]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[12]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[13]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[14]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[15]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[16]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[17]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[18]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[19]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[1]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[20]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[21]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[22]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[23]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[24]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[25]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[26]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[27]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[28]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[29]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[2]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[30]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[31]_i_2_n_0 ),
        .Q(\c3_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[3]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[4]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[5]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[6]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[7]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[8]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c3_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c3_u),
        .D(\c3_u[9]_i_1_n_0 ),
        .Q(\c3_u_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c4_u[0]_i_1 
       (.I0(\c4_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[10]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[11]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[12]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[13]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[14]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[15]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[16]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[17]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[18]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[19]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[1]_i_1 
       (.I0(\plusOp_inferred__3/i__carry_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[20]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[21]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[22]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[23]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[24]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[25]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[26]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[27]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[28]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[29]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[2]_i_1 
       (.I0(\plusOp_inferred__3/i__carry_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[30]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \c4_u[31]_i_1 
       (.I0(ppm_ff2),
        .I1(\c1_u[31]_i_5_n_0 ),
        .I2(\c1_u[31]_i_4_n_0 ),
        .O(c4_u));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[31]_i_2 
       (.I0(\plusOp_inferred__3/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[3]_i_1 
       (.I0(\plusOp_inferred__3/i__carry_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[4]_i_1 
       (.I0(\plusOp_inferred__3/i__carry_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[5]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[6]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[7]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[8]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c4_u[9]_i_1 
       (.I0(\plusOp_inferred__3/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c4_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[0]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[10]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[11]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[12]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[13]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[14]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[15]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[16]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[17]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[18]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[19]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[1]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[20]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[21]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[22]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[23]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[24]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[25]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[26]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[27]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[28]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[29]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[2]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[30]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[31]_i_2_n_0 ),
        .Q(\c4_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[3]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[4]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[5]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[6]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[7]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[8]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c4_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c4_u),
        .D(\c4_u[9]_i_1_n_0 ),
        .Q(\c4_u_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c5_u[0]_i_1 
       (.I0(\c5_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[10]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[11]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[12]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[13]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[14]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[15]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[16]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[17]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[18]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[19]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[1]_i_1 
       (.I0(\plusOp_inferred__4/i__carry_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[20]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[21]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[22]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[23]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[24]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[25]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[26]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[27]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[28]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[29]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[2]_i_1 
       (.I0(\plusOp_inferred__4/i__carry_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[30]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \c5_u[31]_i_1 
       (.I0(ppm_ff2),
        .I1(\c1_u[31]_i_4_n_0 ),
        .I2(\c1_u[31]_i_3_n_0 ),
        .I3(\c1_u[31]_i_5_n_0 ),
        .O(c5_u));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[31]_i_2 
       (.I0(\plusOp_inferred__4/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[3]_i_1 
       (.I0(\plusOp_inferred__4/i__carry_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[4]_i_1 
       (.I0(\plusOp_inferred__4/i__carry_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[5]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[6]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[7]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[8]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c5_u[9]_i_1 
       (.I0(\plusOp_inferred__4/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c5_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[0]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[10]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[11]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[12]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[13]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[14]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[15]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[16]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[17]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[18]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[19]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[1]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[20]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[21]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[22]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[23]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[24]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[25]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[26]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[27]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[28]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[29]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[2]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[30]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[31]_i_2_n_0 ),
        .Q(\c5_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[3]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[4]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[5]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[6]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[7]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[8]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c5_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c5_u),
        .D(\c5_u[9]_i_1_n_0 ),
        .Q(\c5_u_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \c6_u[0]_i_1 
       (.I0(\c6_u_reg_n_0_[0] ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[10]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__1_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[11]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__1_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[12]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__1_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[13]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__2_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[14]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__2_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[15]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__2_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[16]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__2_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[17]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__3_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[18]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__3_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[19]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__3_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[1]_i_1 
       (.I0(\plusOp_inferred__5/i__carry_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[20]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__3_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[21]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__4_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[22]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__4_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[23]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__4_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[24]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__4_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[25]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__5_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[26]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__5_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[27]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__5_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[28]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__5_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[29]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__6_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[2]_i_1 
       (.I0(\plusOp_inferred__5/i__carry_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[30]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__6_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8040)) 
    \c6_u[31]_i_1 
       (.I0(\c1_u[31]_i_4_n_0 ),
        .I1(ppm_ff2),
        .I2(\c1_u[31]_i_5_n_0 ),
        .I3(\c1_u[31]_i_3_n_0 ),
        .O(c6_u));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[31]_i_2 
       (.I0(\plusOp_inferred__5/i__carry__6_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[3]_i_1 
       (.I0(\plusOp_inferred__5/i__carry_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[4]_i_1 
       (.I0(\plusOp_inferred__5/i__carry_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[5]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__0_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[6]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__0_n_6 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[7]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__0_n_5 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[8]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__0_n_4 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \c6_u[9]_i_1 
       (.I0(\plusOp_inferred__5/i__carry__1_n_7 ),
        .I1(\c1_u[31]_i_3_n_0 ),
        .O(\c6_u[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[0] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[0]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[10] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[10]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[11] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[11]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[12] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[12]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[13] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[13]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[14] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[14]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[15] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[15]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[16] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[16]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[17] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[17]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[18] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[18]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[19] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[19]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[1] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[1]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[20] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[20]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[21] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[21]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[22] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[22]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[23] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[23]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[24] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[24]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[25] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[25]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[26] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[26]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[27] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[27]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[28] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[28]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[29] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[29]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[2] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[2]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[30] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[30]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[31] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[31]_i_2_n_0 ),
        .Q(\c6_u_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[3] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[3]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[4] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[4]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[5] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[5]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[6] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[6]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[7] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[7]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[8] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[8]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \c6_u_reg[9] 
       (.C(s00_axi_aclk),
        .CE(c6_u),
        .D(\c6_u[9]_i_1_n_0 ),
        .Q(\c6_u_reg_n_0_[9] ),
        .R(clear));
  LUT6 #(
    .INIT(64'h00003F55000000A9)) 
    \cap_ps[0]_i_1 
       (.I0(ppm_ff2),
        .I1(cap_ps[1]),
        .I2(cap_ps[2]),
        .I3(cap_ps[3]),
        .I4(\cap_ps[3]_i_2_n_0 ),
        .I5(cap_ps[0]),
        .O(cap_ns[0]));
  LUT6 #(
    .INIT(64'h0030030303231000)) 
    \cap_ps[1]_i_1 
       (.I0(cap_ps[0]),
        .I1(\cap_ps[3]_i_2_n_0 ),
        .I2(ppm_ff2),
        .I3(cap_ps[2]),
        .I4(cap_ps[1]),
        .I5(cap_ps[3]),
        .O(cap_ns[1]));
  LUT6 #(
    .INIT(64'h0030102003303030)) 
    \cap_ps[2]_i_1 
       (.I0(cap_ps[0]),
        .I1(\cap_ps[3]_i_2_n_0 ),
        .I2(cap_ps[2]),
        .I3(cap_ps[1]),
        .I4(cap_ps[3]),
        .I5(ppm_ff2),
        .O(cap_ns[2]));
  LUT6 #(
    .INIT(64'h0044444404444440)) 
    \cap_ps[3]_i_1 
       (.I0(\cap_ps[3]_i_2_n_0 ),
        .I1(ppm_ff2),
        .I2(cap_ps[0]),
        .I3(cap_ps[1]),
        .I4(cap_ps[2]),
        .I5(cap_ps[3]),
        .O(cap_ns[3]));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    \cap_ps[3]_i_2 
       (.I0(c0_u[17]),
        .I1(c0_u[16]),
        .I2(\cap_ps[3]_i_3_n_0 ),
        .I3(\cap_ps[3]_i_4_n_0 ),
        .I4(\cap_ps[3]_i_5_n_0 ),
        .O(\cap_ps[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8A88)) 
    \cap_ps[3]_i_3 
       (.I0(c0_u[8]),
        .I1(c0_u[7]),
        .I2(\cap_ps[3]_i_6_n_0 ),
        .I3(c0_u[6]),
        .I4(c0_u[9]),
        .I5(\cap_ps[3]_i_7_n_0 ),
        .O(\cap_ps[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cap_ps[3]_i_4 
       (.I0(c0_u[14]),
        .I1(c0_u[15]),
        .I2(c0_u[12]),
        .I3(c0_u[13]),
        .O(\cap_ps[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cap_ps[3]_i_5 
       (.I0(\cap_ps[3]_i_8_n_0 ),
        .I1(\cap_ps[3]_i_9_n_0 ),
        .I2(c0_u[18]),
        .I3(c0_u[30]),
        .I4(c0_u[25]),
        .I5(c0_u[31]),
        .O(\cap_ps[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \cap_ps[3]_i_6 
       (.I0(c0_u[1]),
        .I1(c0_u[4]),
        .I2(c0_u[5]),
        .I3(c0_u[2]),
        .I4(c0_u[0]),
        .I5(c0_u[3]),
        .O(\cap_ps[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cap_ps[3]_i_7 
       (.I0(c0_u[11]),
        .I1(c0_u[10]),
        .O(\cap_ps[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cap_ps[3]_i_8 
       (.I0(c0_u[20]),
        .I1(c0_u[24]),
        .I2(c0_u[29]),
        .I3(c0_u[19]),
        .I4(c0_u[23]),
        .I5(c0_u[21]),
        .O(\cap_ps[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cap_ps[3]_i_9 
       (.I0(c0_u[22]),
        .I1(c0_u[27]),
        .I2(c0_u[26]),
        .I3(c0_u[28]),
        .O(\cap_ps[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cap_ps_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cap_ns[0]),
        .Q(cap_ps[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_ps_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cap_ns[1]),
        .Q(cap_ps[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_ps_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cap_ns[2]),
        .Q(cap_ps[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_ps_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cap_ns[3]),
        .Q(cap_ps[3]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \cap_reg10[31]_i_1 
       (.I0(\cap_ps[3]_i_2_n_0 ),
        .I1(cap_ps[0]),
        .I2(ppm_ff2),
        .I3(cap_ps[2]),
        .I4(cap_ps[1]),
        .I5(cap_ps[3]),
        .O(cap_reg10));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[0] ),
        .Q(\cap_reg10_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[10] ),
        .Q(\cap_reg10_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[11] ),
        .Q(\cap_reg10_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[12] ),
        .Q(\cap_reg10_reg_n_0_[12] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[13] ),
        .Q(\cap_reg10_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[14] ),
        .Q(\cap_reg10_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[15] ),
        .Q(\cap_reg10_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[16] ),
        .Q(\cap_reg10_reg_n_0_[16] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[17] ),
        .Q(\cap_reg10_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[18] ),
        .Q(\cap_reg10_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[19] ),
        .Q(\cap_reg10_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[1] ),
        .Q(\cap_reg10_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[20] ),
        .Q(\cap_reg10_reg_n_0_[20] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[21] ),
        .Q(\cap_reg10_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[22] ),
        .Q(\cap_reg10_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[23] ),
        .Q(\cap_reg10_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[24] ),
        .Q(\cap_reg10_reg_n_0_[24] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[25] ),
        .Q(\cap_reg10_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[26] ),
        .Q(\cap_reg10_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[27] ),
        .Q(\cap_reg10_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[28] ),
        .Q(\cap_reg10_reg_n_0_[28] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[29] ),
        .Q(\cap_reg10_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[2] ),
        .Q(\cap_reg10_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[30] ),
        .Q(\cap_reg10_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[31] ),
        .Q(\cap_reg10_reg_n_0_[31] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[3] ),
        .Q(\cap_reg10_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[4] ),
        .Q(\cap_reg10_reg_n_0_[4] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[5] ),
        .Q(\cap_reg10_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[6] ),
        .Q(\cap_reg10_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[7] ),
        .Q(\cap_reg10_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[8] ),
        .Q(\cap_reg10_reg_n_0_[8] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c1_u_reg_n_0_[9] ),
        .Q(\cap_reg10_reg_n_0_[9] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[0] ),
        .Q(cap_reg11[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[10] ),
        .Q(cap_reg11[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[11] ),
        .Q(cap_reg11[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[12] ),
        .Q(cap_reg11[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[13] ),
        .Q(cap_reg11[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[14] ),
        .Q(cap_reg11[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[15] ),
        .Q(cap_reg11[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[16] ),
        .Q(cap_reg11[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[17] ),
        .Q(cap_reg11[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[18] ),
        .Q(cap_reg11[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[19] ),
        .Q(cap_reg11[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[1] ),
        .Q(cap_reg11[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[20] ),
        .Q(cap_reg11[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[21] ),
        .Q(cap_reg11[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[22] ),
        .Q(cap_reg11[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[23] ),
        .Q(cap_reg11[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[24] ),
        .Q(cap_reg11[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[25] ),
        .Q(cap_reg11[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[26] ),
        .Q(cap_reg11[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[27] ),
        .Q(cap_reg11[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[28] ),
        .Q(cap_reg11[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[29] ),
        .Q(cap_reg11[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[2] ),
        .Q(cap_reg11[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[30] ),
        .Q(cap_reg11[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[31] ),
        .Q(cap_reg11[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[3] ),
        .Q(cap_reg11[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[4] ),
        .Q(cap_reg11[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[5] ),
        .Q(cap_reg11[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[6] ),
        .Q(cap_reg11[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[7] ),
        .Q(cap_reg11[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[8] ),
        .Q(cap_reg11[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c2_u_reg_n_0_[9] ),
        .Q(cap_reg11[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[0] ),
        .Q(cap_reg12[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[10] ),
        .Q(cap_reg12[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[11] ),
        .Q(cap_reg12[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[12] ),
        .Q(cap_reg12[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[13] ),
        .Q(cap_reg12[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[14] ),
        .Q(cap_reg12[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[15] ),
        .Q(cap_reg12[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[16] ),
        .Q(cap_reg12[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[17] ),
        .Q(cap_reg12[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[18] ),
        .Q(cap_reg12[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[19] ),
        .Q(cap_reg12[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[1] ),
        .Q(cap_reg12[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[20] ),
        .Q(cap_reg12[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[21] ),
        .Q(cap_reg12[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[22] ),
        .Q(cap_reg12[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[23] ),
        .Q(cap_reg12[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[24] ),
        .Q(cap_reg12[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[25] ),
        .Q(cap_reg12[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[26] ),
        .Q(cap_reg12[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[27] ),
        .Q(cap_reg12[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[28] ),
        .Q(cap_reg12[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[29] ),
        .Q(cap_reg12[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[2] ),
        .Q(cap_reg12[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[30] ),
        .Q(cap_reg12[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[31] ),
        .Q(cap_reg12[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[3] ),
        .Q(cap_reg12[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[4] ),
        .Q(cap_reg12[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[5] ),
        .Q(cap_reg12[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[6] ),
        .Q(cap_reg12[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[7] ),
        .Q(cap_reg12[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[8] ),
        .Q(cap_reg12[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c3_u_reg_n_0_[9] ),
        .Q(cap_reg12[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[0] ),
        .Q(cap_reg13[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[10] ),
        .Q(cap_reg13[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[11] ),
        .Q(cap_reg13[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[12] ),
        .Q(cap_reg13[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[13] ),
        .Q(cap_reg13[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[14] ),
        .Q(cap_reg13[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[15] ),
        .Q(cap_reg13[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[16] ),
        .Q(cap_reg13[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[17] ),
        .Q(cap_reg13[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[18] ),
        .Q(cap_reg13[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[19] ),
        .Q(cap_reg13[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[1] ),
        .Q(cap_reg13[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[20] ),
        .Q(cap_reg13[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[21] ),
        .Q(cap_reg13[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[22] ),
        .Q(cap_reg13[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[23] ),
        .Q(cap_reg13[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[24] ),
        .Q(cap_reg13[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[25] ),
        .Q(cap_reg13[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[26] ),
        .Q(cap_reg13[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[27] ),
        .Q(cap_reg13[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[28] ),
        .Q(cap_reg13[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[29] ),
        .Q(cap_reg13[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[2] ),
        .Q(cap_reg13[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[30] ),
        .Q(cap_reg13[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[31] ),
        .Q(cap_reg13[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[3] ),
        .Q(cap_reg13[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[4] ),
        .Q(cap_reg13[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[5] ),
        .Q(cap_reg13[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[6] ),
        .Q(cap_reg13[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[7] ),
        .Q(cap_reg13[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[8] ),
        .Q(cap_reg13[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c4_u_reg_n_0_[9] ),
        .Q(cap_reg13[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[0] ),
        .Q(cap_reg14[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[10] ),
        .Q(cap_reg14[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[11] ),
        .Q(cap_reg14[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[12] ),
        .Q(cap_reg14[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[13] ),
        .Q(cap_reg14[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[14] ),
        .Q(cap_reg14[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[15] ),
        .Q(cap_reg14[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[16] ),
        .Q(cap_reg14[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[17] ),
        .Q(cap_reg14[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[18] ),
        .Q(cap_reg14[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[19] ),
        .Q(cap_reg14[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[1] ),
        .Q(cap_reg14[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[20] ),
        .Q(cap_reg14[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[21] ),
        .Q(cap_reg14[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[22] ),
        .Q(cap_reg14[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[23] ),
        .Q(cap_reg14[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[24] ),
        .Q(cap_reg14[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[25] ),
        .Q(cap_reg14[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[26] ),
        .Q(cap_reg14[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[27] ),
        .Q(cap_reg14[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[28] ),
        .Q(cap_reg14[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[29] ),
        .Q(cap_reg14[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[2] ),
        .Q(cap_reg14[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[30] ),
        .Q(cap_reg14[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[31] ),
        .Q(cap_reg14[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[3] ),
        .Q(cap_reg14[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[4] ),
        .Q(cap_reg14[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[5] ),
        .Q(cap_reg14[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[6] ),
        .Q(cap_reg14[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[7] ),
        .Q(cap_reg14[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[8] ),
        .Q(cap_reg14[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c5_u_reg_n_0_[9] ),
        .Q(cap_reg14[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[0] ),
        .Q(cap_reg15[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[10] ),
        .Q(cap_reg15[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[11] ),
        .Q(cap_reg15[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[12] ),
        .Q(cap_reg15[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[13] ),
        .Q(cap_reg15[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[14] ),
        .Q(cap_reg15[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[15] ),
        .Q(cap_reg15[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[16] ),
        .Q(cap_reg15[16]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[17] ),
        .Q(cap_reg15[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[18] ),
        .Q(cap_reg15[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[19] ),
        .Q(cap_reg15[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[1] ),
        .Q(cap_reg15[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[20] ),
        .Q(cap_reg15[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[21] ),
        .Q(cap_reg15[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[22] ),
        .Q(cap_reg15[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[23] ),
        .Q(cap_reg15[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[24] ),
        .Q(cap_reg15[24]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[25] ),
        .Q(cap_reg15[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[26] ),
        .Q(cap_reg15[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[27] ),
        .Q(cap_reg15[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[28] ),
        .Q(cap_reg15[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[29] ),
        .Q(cap_reg15[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[2] ),
        .Q(cap_reg15[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[30] ),
        .Q(cap_reg15[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[31] ),
        .Q(cap_reg15[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[3] ),
        .Q(cap_reg15[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[4] ),
        .Q(cap_reg15[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[5] ),
        .Q(cap_reg15[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[6] ),
        .Q(cap_reg15[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[7] ),
        .Q(cap_reg15[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[8] ),
        .Q(cap_reg15[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cap_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\c6_u_reg_n_0_[9] ),
        .Q(cap_reg15[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[0]_i_2 
       (.I0(frame_counter_reg[0]),
        .O(\frame_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[0]_i_1_n_7 ),
        .Q(frame_counter_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\frame_counter_reg[0]_i_1_n_0 ,\frame_counter_reg[0]_i_1_n_1 ,\frame_counter_reg[0]_i_1_n_2 ,\frame_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_counter_reg[0]_i_1_n_4 ,\frame_counter_reg[0]_i_1_n_5 ,\frame_counter_reg[0]_i_1_n_6 ,\frame_counter_reg[0]_i_1_n_7 }),
        .S({frame_counter_reg[3:1],\frame_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[8]_i_1_n_5 ),
        .Q(frame_counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[8]_i_1_n_4 ),
        .Q(frame_counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[12]_i_1_n_7 ),
        .Q(frame_counter_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[12]_i_1 
       (.CI(\frame_counter_reg[8]_i_1_n_0 ),
        .CO({\frame_counter_reg[12]_i_1_n_0 ,\frame_counter_reg[12]_i_1_n_1 ,\frame_counter_reg[12]_i_1_n_2 ,\frame_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[12]_i_1_n_4 ,\frame_counter_reg[12]_i_1_n_5 ,\frame_counter_reg[12]_i_1_n_6 ,\frame_counter_reg[12]_i_1_n_7 }),
        .S(frame_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[12]_i_1_n_6 ),
        .Q(frame_counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[12]_i_1_n_5 ),
        .Q(frame_counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[12]_i_1_n_4 ),
        .Q(frame_counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[16]_i_1_n_7 ),
        .Q(frame_counter_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[16]_i_1 
       (.CI(\frame_counter_reg[12]_i_1_n_0 ),
        .CO({\frame_counter_reg[16]_i_1_n_0 ,\frame_counter_reg[16]_i_1_n_1 ,\frame_counter_reg[16]_i_1_n_2 ,\frame_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[16]_i_1_n_4 ,\frame_counter_reg[16]_i_1_n_5 ,\frame_counter_reg[16]_i_1_n_6 ,\frame_counter_reg[16]_i_1_n_7 }),
        .S(frame_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[16]_i_1_n_6 ),
        .Q(frame_counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[16]_i_1_n_5 ),
        .Q(frame_counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[16]_i_1_n_4 ),
        .Q(frame_counter_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[0]_i_1_n_6 ),
        .Q(frame_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[20]_i_1_n_7 ),
        .Q(frame_counter_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[20]_i_1 
       (.CI(\frame_counter_reg[16]_i_1_n_0 ),
        .CO({\frame_counter_reg[20]_i_1_n_0 ,\frame_counter_reg[20]_i_1_n_1 ,\frame_counter_reg[20]_i_1_n_2 ,\frame_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[20]_i_1_n_4 ,\frame_counter_reg[20]_i_1_n_5 ,\frame_counter_reg[20]_i_1_n_6 ,\frame_counter_reg[20]_i_1_n_7 }),
        .S(frame_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[20]_i_1_n_6 ),
        .Q(frame_counter_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[20]_i_1_n_5 ),
        .Q(frame_counter_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[20]_i_1_n_4 ),
        .Q(frame_counter_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[24]_i_1_n_7 ),
        .Q(frame_counter_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[24]_i_1 
       (.CI(\frame_counter_reg[20]_i_1_n_0 ),
        .CO({\frame_counter_reg[24]_i_1_n_0 ,\frame_counter_reg[24]_i_1_n_1 ,\frame_counter_reg[24]_i_1_n_2 ,\frame_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[24]_i_1_n_4 ,\frame_counter_reg[24]_i_1_n_5 ,\frame_counter_reg[24]_i_1_n_6 ,\frame_counter_reg[24]_i_1_n_7 }),
        .S(frame_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[24]_i_1_n_6 ),
        .Q(frame_counter_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[24]_i_1_n_5 ),
        .Q(frame_counter_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[24]_i_1_n_4 ),
        .Q(frame_counter_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[28]_i_1_n_7 ),
        .Q(frame_counter_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[28]_i_1 
       (.CI(\frame_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED [3],\frame_counter_reg[28]_i_1_n_1 ,\frame_counter_reg[28]_i_1_n_2 ,\frame_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[28]_i_1_n_4 ,\frame_counter_reg[28]_i_1_n_5 ,\frame_counter_reg[28]_i_1_n_6 ,\frame_counter_reg[28]_i_1_n_7 }),
        .S(frame_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[28]_i_1_n_6 ),
        .Q(frame_counter_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[0]_i_1_n_5 ),
        .Q(frame_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[28]_i_1_n_5 ),
        .Q(frame_counter_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[28]_i_1_n_4 ),
        .Q(frame_counter_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[0]_i_1_n_4 ),
        .Q(frame_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[4]_i_1_n_7 ),
        .Q(frame_counter_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[4]_i_1 
       (.CI(\frame_counter_reg[0]_i_1_n_0 ),
        .CO({\frame_counter_reg[4]_i_1_n_0 ,\frame_counter_reg[4]_i_1_n_1 ,\frame_counter_reg[4]_i_1_n_2 ,\frame_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[4]_i_1_n_4 ,\frame_counter_reg[4]_i_1_n_5 ,\frame_counter_reg[4]_i_1_n_6 ,\frame_counter_reg[4]_i_1_n_7 }),
        .S(frame_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[4]_i_1_n_6 ),
        .Q(frame_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[4]_i_1_n_5 ),
        .Q(frame_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[4]_i_1_n_4 ),
        .Q(frame_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[8]_i_1_n_7 ),
        .Q(frame_counter_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[8]_i_1 
       (.CI(\frame_counter_reg[4]_i_1_n_0 ),
        .CO({\frame_counter_reg[8]_i_1_n_0 ,\frame_counter_reg[8]_i_1_n_1 ,\frame_counter_reg[8]_i_1_n_2 ,\frame_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[8]_i_1_n_4 ,\frame_counter_reg[8]_i_1_n_5 ,\frame_counter_reg[8]_i_1_n_6 ,\frame_counter_reg[8]_i_1_n_7 }),
        .S(frame_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(cap_reg10),
        .D(\frame_counter_reg[8]_i_1_n_6 ),
        .Q(frame_counter_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hF66FFFFF)) 
    \gen_current_clk[0]_i_1 
       (.I0(gen_ps[1]),
        .I1(gen_ns[1]),
        .I2(gen_ps[0]),
        .I3(\gen_ps[0]_i_2_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\gen_current_clk[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_current_clk[0]_i_3 
       (.I0(gen_current_clk_reg[0]),
        .O(\gen_current_clk[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[0]_i_2_n_7 ),
        .Q(gen_current_clk_reg[0]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\gen_current_clk_reg[0]_i_2_n_0 ,\gen_current_clk_reg[0]_i_2_n_1 ,\gen_current_clk_reg[0]_i_2_n_2 ,\gen_current_clk_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\gen_current_clk_reg[0]_i_2_n_4 ,\gen_current_clk_reg[0]_i_2_n_5 ,\gen_current_clk_reg[0]_i_2_n_6 ,\gen_current_clk_reg[0]_i_2_n_7 }),
        .S({gen_current_clk_reg[3:1],\gen_current_clk[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[8]_i_1_n_5 ),
        .Q(gen_current_clk_reg[10]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[8]_i_1_n_4 ),
        .Q(gen_current_clk_reg[11]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[12]_i_1_n_7 ),
        .Q(gen_current_clk_reg[12]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[12]_i_1 
       (.CI(\gen_current_clk_reg[8]_i_1_n_0 ),
        .CO({\gen_current_clk_reg[12]_i_1_n_0 ,\gen_current_clk_reg[12]_i_1_n_1 ,\gen_current_clk_reg[12]_i_1_n_2 ,\gen_current_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[12]_i_1_n_4 ,\gen_current_clk_reg[12]_i_1_n_5 ,\gen_current_clk_reg[12]_i_1_n_6 ,\gen_current_clk_reg[12]_i_1_n_7 }),
        .S(gen_current_clk_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[12]_i_1_n_6 ),
        .Q(gen_current_clk_reg[13]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[12]_i_1_n_5 ),
        .Q(gen_current_clk_reg[14]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[12]_i_1_n_4 ),
        .Q(gen_current_clk_reg[15]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[16]_i_1_n_7 ),
        .Q(gen_current_clk_reg[16]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[16]_i_1 
       (.CI(\gen_current_clk_reg[12]_i_1_n_0 ),
        .CO({\gen_current_clk_reg[16]_i_1_n_0 ,\gen_current_clk_reg[16]_i_1_n_1 ,\gen_current_clk_reg[16]_i_1_n_2 ,\gen_current_clk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[16]_i_1_n_4 ,\gen_current_clk_reg[16]_i_1_n_5 ,\gen_current_clk_reg[16]_i_1_n_6 ,\gen_current_clk_reg[16]_i_1_n_7 }),
        .S(gen_current_clk_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[16]_i_1_n_6 ),
        .Q(gen_current_clk_reg[17]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[16]_i_1_n_5 ),
        .Q(gen_current_clk_reg[18]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[16]_i_1_n_4 ),
        .Q(gen_current_clk_reg[19]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[0]_i_2_n_6 ),
        .Q(gen_current_clk_reg[1]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[20]_i_1_n_7 ),
        .Q(gen_current_clk_reg[20]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[20]_i_1 
       (.CI(\gen_current_clk_reg[16]_i_1_n_0 ),
        .CO({\gen_current_clk_reg[20]_i_1_n_0 ,\gen_current_clk_reg[20]_i_1_n_1 ,\gen_current_clk_reg[20]_i_1_n_2 ,\gen_current_clk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[20]_i_1_n_4 ,\gen_current_clk_reg[20]_i_1_n_5 ,\gen_current_clk_reg[20]_i_1_n_6 ,\gen_current_clk_reg[20]_i_1_n_7 }),
        .S(gen_current_clk_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[20]_i_1_n_6 ),
        .Q(gen_current_clk_reg[21]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[20]_i_1_n_5 ),
        .Q(gen_current_clk_reg[22]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[20]_i_1_n_4 ),
        .Q(gen_current_clk_reg[23]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[24]_i_1_n_7 ),
        .Q(gen_current_clk_reg[24]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[24]_i_1 
       (.CI(\gen_current_clk_reg[20]_i_1_n_0 ),
        .CO({\gen_current_clk_reg[24]_i_1_n_0 ,\gen_current_clk_reg[24]_i_1_n_1 ,\gen_current_clk_reg[24]_i_1_n_2 ,\gen_current_clk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[24]_i_1_n_4 ,\gen_current_clk_reg[24]_i_1_n_5 ,\gen_current_clk_reg[24]_i_1_n_6 ,\gen_current_clk_reg[24]_i_1_n_7 }),
        .S(gen_current_clk_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[24]_i_1_n_6 ),
        .Q(gen_current_clk_reg[25]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[24]_i_1_n_5 ),
        .Q(gen_current_clk_reg[26]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[24]_i_1_n_4 ),
        .Q(gen_current_clk_reg[27]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[28]_i_1_n_7 ),
        .Q(gen_current_clk_reg[28]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[28]_i_1 
       (.CI(\gen_current_clk_reg[24]_i_1_n_0 ),
        .CO({\NLW_gen_current_clk_reg[28]_i_1_CO_UNCONNECTED [3],\gen_current_clk_reg[28]_i_1_n_1 ,\gen_current_clk_reg[28]_i_1_n_2 ,\gen_current_clk_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[28]_i_1_n_4 ,\gen_current_clk_reg[28]_i_1_n_5 ,\gen_current_clk_reg[28]_i_1_n_6 ,\gen_current_clk_reg[28]_i_1_n_7 }),
        .S(gen_current_clk_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[28]_i_1_n_6 ),
        .Q(gen_current_clk_reg[29]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[0]_i_2_n_5 ),
        .Q(gen_current_clk_reg[2]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[28]_i_1_n_5 ),
        .Q(gen_current_clk_reg[30]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[28]_i_1_n_4 ),
        .Q(gen_current_clk_reg[31]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[0]_i_2_n_4 ),
        .Q(gen_current_clk_reg[3]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[4]_i_1_n_7 ),
        .Q(gen_current_clk_reg[4]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[4]_i_1 
       (.CI(\gen_current_clk_reg[0]_i_2_n_0 ),
        .CO({\gen_current_clk_reg[4]_i_1_n_0 ,\gen_current_clk_reg[4]_i_1_n_1 ,\gen_current_clk_reg[4]_i_1_n_2 ,\gen_current_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[4]_i_1_n_4 ,\gen_current_clk_reg[4]_i_1_n_5 ,\gen_current_clk_reg[4]_i_1_n_6 ,\gen_current_clk_reg[4]_i_1_n_7 }),
        .S(gen_current_clk_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[4]_i_1_n_6 ),
        .Q(gen_current_clk_reg[5]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[4]_i_1_n_5 ),
        .Q(gen_current_clk_reg[6]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[4]_i_1_n_4 ),
        .Q(gen_current_clk_reg[7]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[8]_i_1_n_7 ),
        .Q(gen_current_clk_reg[8]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gen_current_clk_reg[8]_i_1 
       (.CI(\gen_current_clk_reg[4]_i_1_n_0 ),
        .CO({\gen_current_clk_reg[8]_i_1_n_0 ,\gen_current_clk_reg[8]_i_1_n_1 ,\gen_current_clk_reg[8]_i_1_n_2 ,\gen_current_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gen_current_clk_reg[8]_i_1_n_4 ,\gen_current_clk_reg[8]_i_1_n_5 ,\gen_current_clk_reg[8]_i_1_n_6 ,\gen_current_clk_reg[8]_i_1_n_7 }),
        .S(gen_current_clk_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_current_clk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\gen_current_clk_reg[8]_i_1_n_6 ),
        .Q(gen_current_clk_reg[9]),
        .R(\gen_current_clk[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry
       (.CI(1'b0),
        .CO({gen_idle_clks2__0_carry_n_0,gen_idle_clks2__0_carry_n_1,gen_idle_clks2__0_carry_n_2,gen_idle_clks2__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry_i_1_n_0,gen_idle_clks2__0_carry_i_2_n_0,gen_idle_clks2__0_carry_i_3_n_0,1'b0}),
        .O({gen_idle_clks2__0_carry_n_4,gen_idle_clks2__0_carry_n_5,gen_idle_clks2__0_carry_n_6,gen_idle_clks2__0_carry_n_7}),
        .S({gen_idle_clks2__0_carry_i_4_n_0,gen_idle_clks2__0_carry_i_5_n_0,gen_idle_clks2__0_carry_i_6_n_0,gen_idle_clks2__0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__0
       (.CI(gen_idle_clks2__0_carry_n_0),
        .CO({gen_idle_clks2__0_carry__0_n_0,gen_idle_clks2__0_carry__0_n_1,gen_idle_clks2__0_carry__0_n_2,gen_idle_clks2__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__0_i_1_n_0,gen_idle_clks2__0_carry__0_i_2_n_0,gen_idle_clks2__0_carry__0_i_3_n_0,gen_idle_clks2__0_carry__0_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__0_n_4,gen_idle_clks2__0_carry__0_n_5,gen_idle_clks2__0_carry__0_n_6,gen_idle_clks2__0_carry__0_n_7}),
        .S({gen_idle_clks2__0_carry__0_i_5_n_0,gen_idle_clks2__0_carry__0_i_6_n_0,gen_idle_clks2__0_carry__0_i_7_n_0,gen_idle_clks2__0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__0_i_1
       (.I0(slv_reg8[6]),
        .I1(slv_reg4[6]),
        .I2(slv_reg9[6]),
        .O(gen_idle_clks2__0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__0_i_2
       (.I0(slv_reg8[5]),
        .I1(slv_reg4[5]),
        .I2(slv_reg9[5]),
        .O(gen_idle_clks2__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__0_i_3
       (.I0(slv_reg8[4]),
        .I1(slv_reg4[4]),
        .I2(slv_reg9[4]),
        .O(gen_idle_clks2__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__0_i_4
       (.I0(slv_reg8[3]),
        .I1(slv_reg4[3]),
        .I2(slv_reg9[3]),
        .O(gen_idle_clks2__0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__0_i_5
       (.I0(slv_reg8[7]),
        .I1(slv_reg4[7]),
        .I2(slv_reg9[7]),
        .I3(gen_idle_clks2__0_carry__0_i_1_n_0),
        .O(gen_idle_clks2__0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__0_i_6
       (.I0(slv_reg8[6]),
        .I1(slv_reg4[6]),
        .I2(slv_reg9[6]),
        .I3(gen_idle_clks2__0_carry__0_i_2_n_0),
        .O(gen_idle_clks2__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__0_i_7
       (.I0(slv_reg8[5]),
        .I1(slv_reg4[5]),
        .I2(slv_reg9[5]),
        .I3(gen_idle_clks2__0_carry__0_i_3_n_0),
        .O(gen_idle_clks2__0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__0_i_8
       (.I0(slv_reg8[4]),
        .I1(slv_reg4[4]),
        .I2(slv_reg9[4]),
        .I3(gen_idle_clks2__0_carry__0_i_4_n_0),
        .O(gen_idle_clks2__0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__1
       (.CI(gen_idle_clks2__0_carry__0_n_0),
        .CO({gen_idle_clks2__0_carry__1_n_0,gen_idle_clks2__0_carry__1_n_1,gen_idle_clks2__0_carry__1_n_2,gen_idle_clks2__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__1_i_1_n_0,gen_idle_clks2__0_carry__1_i_2_n_0,gen_idle_clks2__0_carry__1_i_3_n_0,gen_idle_clks2__0_carry__1_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__1_n_4,gen_idle_clks2__0_carry__1_n_5,gen_idle_clks2__0_carry__1_n_6,gen_idle_clks2__0_carry__1_n_7}),
        .S({gen_idle_clks2__0_carry__1_i_5_n_0,gen_idle_clks2__0_carry__1_i_6_n_0,gen_idle_clks2__0_carry__1_i_7_n_0,gen_idle_clks2__0_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__1_i_1
       (.I0(slv_reg8[10]),
        .I1(slv_reg4[10]),
        .I2(slv_reg9[10]),
        .O(gen_idle_clks2__0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__1_i_2
       (.I0(slv_reg8[9]),
        .I1(slv_reg4[9]),
        .I2(slv_reg9[9]),
        .O(gen_idle_clks2__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__1_i_3
       (.I0(slv_reg8[8]),
        .I1(slv_reg4[8]),
        .I2(slv_reg9[8]),
        .O(gen_idle_clks2__0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__1_i_4
       (.I0(slv_reg8[7]),
        .I1(slv_reg4[7]),
        .I2(slv_reg9[7]),
        .O(gen_idle_clks2__0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__1_i_5
       (.I0(slv_reg8[11]),
        .I1(slv_reg4[11]),
        .I2(slv_reg9[11]),
        .I3(gen_idle_clks2__0_carry__1_i_1_n_0),
        .O(gen_idle_clks2__0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__1_i_6
       (.I0(slv_reg8[10]),
        .I1(slv_reg4[10]),
        .I2(slv_reg9[10]),
        .I3(gen_idle_clks2__0_carry__1_i_2_n_0),
        .O(gen_idle_clks2__0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__1_i_7
       (.I0(slv_reg8[9]),
        .I1(slv_reg4[9]),
        .I2(slv_reg9[9]),
        .I3(gen_idle_clks2__0_carry__1_i_3_n_0),
        .O(gen_idle_clks2__0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__1_i_8
       (.I0(slv_reg8[8]),
        .I1(slv_reg4[8]),
        .I2(slv_reg9[8]),
        .I3(gen_idle_clks2__0_carry__1_i_4_n_0),
        .O(gen_idle_clks2__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__2
       (.CI(gen_idle_clks2__0_carry__1_n_0),
        .CO({gen_idle_clks2__0_carry__2_n_0,gen_idle_clks2__0_carry__2_n_1,gen_idle_clks2__0_carry__2_n_2,gen_idle_clks2__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__2_i_1_n_0,gen_idle_clks2__0_carry__2_i_2_n_0,gen_idle_clks2__0_carry__2_i_3_n_0,gen_idle_clks2__0_carry__2_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__2_n_4,gen_idle_clks2__0_carry__2_n_5,gen_idle_clks2__0_carry__2_n_6,gen_idle_clks2__0_carry__2_n_7}),
        .S({gen_idle_clks2__0_carry__2_i_5_n_0,gen_idle_clks2__0_carry__2_i_6_n_0,gen_idle_clks2__0_carry__2_i_7_n_0,gen_idle_clks2__0_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__2_i_1
       (.I0(slv_reg8[14]),
        .I1(slv_reg4[14]),
        .I2(slv_reg9[14]),
        .O(gen_idle_clks2__0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__2_i_2
       (.I0(slv_reg8[13]),
        .I1(slv_reg4[13]),
        .I2(slv_reg9[13]),
        .O(gen_idle_clks2__0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__2_i_3
       (.I0(slv_reg8[12]),
        .I1(slv_reg4[12]),
        .I2(slv_reg9[12]),
        .O(gen_idle_clks2__0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__2_i_4
       (.I0(slv_reg8[11]),
        .I1(slv_reg4[11]),
        .I2(slv_reg9[11]),
        .O(gen_idle_clks2__0_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__2_i_5
       (.I0(slv_reg8[15]),
        .I1(slv_reg4[15]),
        .I2(slv_reg9[15]),
        .I3(gen_idle_clks2__0_carry__2_i_1_n_0),
        .O(gen_idle_clks2__0_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__2_i_6
       (.I0(slv_reg8[14]),
        .I1(slv_reg4[14]),
        .I2(slv_reg9[14]),
        .I3(gen_idle_clks2__0_carry__2_i_2_n_0),
        .O(gen_idle_clks2__0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__2_i_7
       (.I0(slv_reg8[13]),
        .I1(slv_reg4[13]),
        .I2(slv_reg9[13]),
        .I3(gen_idle_clks2__0_carry__2_i_3_n_0),
        .O(gen_idle_clks2__0_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__2_i_8
       (.I0(slv_reg8[12]),
        .I1(slv_reg4[12]),
        .I2(slv_reg9[12]),
        .I3(gen_idle_clks2__0_carry__2_i_4_n_0),
        .O(gen_idle_clks2__0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__3
       (.CI(gen_idle_clks2__0_carry__2_n_0),
        .CO({gen_idle_clks2__0_carry__3_n_0,gen_idle_clks2__0_carry__3_n_1,gen_idle_clks2__0_carry__3_n_2,gen_idle_clks2__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__3_i_1_n_0,gen_idle_clks2__0_carry__3_i_2_n_0,gen_idle_clks2__0_carry__3_i_3_n_0,gen_idle_clks2__0_carry__3_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__3_n_4,gen_idle_clks2__0_carry__3_n_5,gen_idle_clks2__0_carry__3_n_6,gen_idle_clks2__0_carry__3_n_7}),
        .S({gen_idle_clks2__0_carry__3_i_5_n_0,gen_idle_clks2__0_carry__3_i_6_n_0,gen_idle_clks2__0_carry__3_i_7_n_0,gen_idle_clks2__0_carry__3_i_8_n_0}));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__3_i_1
       (.I0(slv_reg8[18]),
        .I1(slv_reg4[18]),
        .I2(slv_reg9[18]),
        .O(gen_idle_clks2__0_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__3_i_2
       (.I0(slv_reg8[17]),
        .I1(slv_reg4[17]),
        .I2(slv_reg9[17]),
        .O(gen_idle_clks2__0_carry__3_i_2_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__3_i_3
       (.I0(slv_reg8[16]),
        .I1(slv_reg4[16]),
        .I2(slv_reg9[16]),
        .O(gen_idle_clks2__0_carry__3_i_3_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__3_i_4
       (.I0(slv_reg8[15]),
        .I1(slv_reg4[15]),
        .I2(slv_reg9[15]),
        .O(gen_idle_clks2__0_carry__3_i_4_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__3_i_5
       (.I0(slv_reg8[19]),
        .I1(slv_reg4[19]),
        .I2(slv_reg9[19]),
        .I3(gen_idle_clks2__0_carry__3_i_1_n_0),
        .O(gen_idle_clks2__0_carry__3_i_5_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__3_i_6
       (.I0(slv_reg8[18]),
        .I1(slv_reg4[18]),
        .I2(slv_reg9[18]),
        .I3(gen_idle_clks2__0_carry__3_i_2_n_0),
        .O(gen_idle_clks2__0_carry__3_i_6_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__3_i_7
       (.I0(slv_reg8[17]),
        .I1(slv_reg4[17]),
        .I2(slv_reg9[17]),
        .I3(gen_idle_clks2__0_carry__3_i_3_n_0),
        .O(gen_idle_clks2__0_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__3_i_8
       (.I0(slv_reg8[16]),
        .I1(slv_reg4[16]),
        .I2(slv_reg9[16]),
        .I3(gen_idle_clks2__0_carry__3_i_4_n_0),
        .O(gen_idle_clks2__0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__4
       (.CI(gen_idle_clks2__0_carry__3_n_0),
        .CO({gen_idle_clks2__0_carry__4_n_0,gen_idle_clks2__0_carry__4_n_1,gen_idle_clks2__0_carry__4_n_2,gen_idle_clks2__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__4_i_1_n_0,gen_idle_clks2__0_carry__4_i_2_n_0,gen_idle_clks2__0_carry__4_i_3_n_0,gen_idle_clks2__0_carry__4_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__4_n_4,gen_idle_clks2__0_carry__4_n_5,gen_idle_clks2__0_carry__4_n_6,gen_idle_clks2__0_carry__4_n_7}),
        .S({gen_idle_clks2__0_carry__4_i_5_n_0,gen_idle_clks2__0_carry__4_i_6_n_0,gen_idle_clks2__0_carry__4_i_7_n_0,gen_idle_clks2__0_carry__4_i_8_n_0}));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__4_i_1
       (.I0(slv_reg8[22]),
        .I1(slv_reg4[22]),
        .I2(slv_reg9[22]),
        .O(gen_idle_clks2__0_carry__4_i_1_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__4_i_2
       (.I0(slv_reg8[21]),
        .I1(slv_reg4[21]),
        .I2(slv_reg9[21]),
        .O(gen_idle_clks2__0_carry__4_i_2_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__4_i_3
       (.I0(slv_reg8[20]),
        .I1(slv_reg4[20]),
        .I2(slv_reg9[20]),
        .O(gen_idle_clks2__0_carry__4_i_3_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__4_i_4
       (.I0(slv_reg8[19]),
        .I1(slv_reg4[19]),
        .I2(slv_reg9[19]),
        .O(gen_idle_clks2__0_carry__4_i_4_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__4_i_5
       (.I0(slv_reg8[23]),
        .I1(slv_reg4[23]),
        .I2(slv_reg9[23]),
        .I3(gen_idle_clks2__0_carry__4_i_1_n_0),
        .O(gen_idle_clks2__0_carry__4_i_5_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__4_i_6
       (.I0(slv_reg8[22]),
        .I1(slv_reg4[22]),
        .I2(slv_reg9[22]),
        .I3(gen_idle_clks2__0_carry__4_i_2_n_0),
        .O(gen_idle_clks2__0_carry__4_i_6_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__4_i_7
       (.I0(slv_reg8[21]),
        .I1(slv_reg4[21]),
        .I2(slv_reg9[21]),
        .I3(gen_idle_clks2__0_carry__4_i_3_n_0),
        .O(gen_idle_clks2__0_carry__4_i_7_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__4_i_8
       (.I0(slv_reg8[20]),
        .I1(slv_reg4[20]),
        .I2(slv_reg9[20]),
        .I3(gen_idle_clks2__0_carry__4_i_4_n_0),
        .O(gen_idle_clks2__0_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__5
       (.CI(gen_idle_clks2__0_carry__4_n_0),
        .CO({gen_idle_clks2__0_carry__5_n_0,gen_idle_clks2__0_carry__5_n_1,gen_idle_clks2__0_carry__5_n_2,gen_idle_clks2__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__0_carry__5_i_1_n_0,gen_idle_clks2__0_carry__5_i_2_n_0,gen_idle_clks2__0_carry__5_i_3_n_0,gen_idle_clks2__0_carry__5_i_4_n_0}),
        .O({gen_idle_clks2__0_carry__5_n_4,gen_idle_clks2__0_carry__5_n_5,gen_idle_clks2__0_carry__5_n_6,gen_idle_clks2__0_carry__5_n_7}),
        .S({gen_idle_clks2__0_carry__5_i_5_n_0,gen_idle_clks2__0_carry__5_i_6_n_0,gen_idle_clks2__0_carry__5_i_7_n_0,gen_idle_clks2__0_carry__5_i_8_n_0}));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__5_i_1
       (.I0(slv_reg8[26]),
        .I1(slv_reg4[26]),
        .I2(slv_reg9[26]),
        .O(gen_idle_clks2__0_carry__5_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__5_i_2
       (.I0(slv_reg8[25]),
        .I1(slv_reg4[25]),
        .I2(slv_reg9[25]),
        .O(gen_idle_clks2__0_carry__5_i_2_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__5_i_3
       (.I0(slv_reg8[24]),
        .I1(slv_reg4[24]),
        .I2(slv_reg9[24]),
        .O(gen_idle_clks2__0_carry__5_i_3_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__5_i_4
       (.I0(slv_reg8[23]),
        .I1(slv_reg4[23]),
        .I2(slv_reg9[23]),
        .O(gen_idle_clks2__0_carry__5_i_4_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__5_i_5
       (.I0(slv_reg8[27]),
        .I1(slv_reg4[27]),
        .I2(slv_reg9[27]),
        .I3(gen_idle_clks2__0_carry__5_i_1_n_0),
        .O(gen_idle_clks2__0_carry__5_i_5_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__5_i_6
       (.I0(slv_reg8[26]),
        .I1(slv_reg4[26]),
        .I2(slv_reg9[26]),
        .I3(gen_idle_clks2__0_carry__5_i_2_n_0),
        .O(gen_idle_clks2__0_carry__5_i_6_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__5_i_7
       (.I0(slv_reg8[25]),
        .I1(slv_reg4[25]),
        .I2(slv_reg9[25]),
        .I3(gen_idle_clks2__0_carry__5_i_3_n_0),
        .O(gen_idle_clks2__0_carry__5_i_7_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__5_i_8
       (.I0(slv_reg8[24]),
        .I1(slv_reg4[24]),
        .I2(slv_reg9[24]),
        .I3(gen_idle_clks2__0_carry__5_i_4_n_0),
        .O(gen_idle_clks2__0_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__0_carry__6
       (.CI(gen_idle_clks2__0_carry__5_n_0),
        .CO({NLW_gen_idle_clks2__0_carry__6_CO_UNCONNECTED[3],gen_idle_clks2__0_carry__6_n_1,gen_idle_clks2__0_carry__6_n_2,gen_idle_clks2__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gen_idle_clks2__0_carry__6_i_1_n_0,gen_idle_clks2__0_carry__6_i_2_n_0,gen_idle_clks2__0_carry__6_i_3_n_0}),
        .O({gen_idle_clks2__0_carry__6_n_4,gen_idle_clks2__0_carry__6_n_5,gen_idle_clks2__0_carry__6_n_6,gen_idle_clks2__0_carry__6_n_7}),
        .S({gen_idle_clks2__0_carry__6_i_4_n_0,gen_idle_clks2__0_carry__6_i_5_n_0,gen_idle_clks2__0_carry__6_i_6_n_0,gen_idle_clks2__0_carry__6_i_7_n_0}));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__6_i_1
       (.I0(slv_reg8[29]),
        .I1(slv_reg4[29]),
        .I2(slv_reg9[29]),
        .O(gen_idle_clks2__0_carry__6_i_1_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__6_i_2
       (.I0(slv_reg8[28]),
        .I1(slv_reg4[28]),
        .I2(slv_reg9[28]),
        .O(gen_idle_clks2__0_carry__6_i_2_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry__6_i_3
       (.I0(slv_reg8[27]),
        .I1(slv_reg4[27]),
        .I2(slv_reg9[27]),
        .O(gen_idle_clks2__0_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    gen_idle_clks2__0_carry__6_i_4
       (.I0(slv_reg9[30]),
        .I1(slv_reg4[30]),
        .I2(slv_reg8[30]),
        .I3(slv_reg4[31]),
        .I4(slv_reg8[31]),
        .I5(slv_reg9[31]),
        .O(gen_idle_clks2__0_carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__6_i_5
       (.I0(gen_idle_clks2__0_carry__6_i_1_n_0),
        .I1(slv_reg8[30]),
        .I2(slv_reg9[30]),
        .I3(slv_reg4[30]),
        .O(gen_idle_clks2__0_carry__6_i_5_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__6_i_6
       (.I0(slv_reg8[29]),
        .I1(slv_reg4[29]),
        .I2(slv_reg9[29]),
        .I3(gen_idle_clks2__0_carry__6_i_2_n_0),
        .O(gen_idle_clks2__0_carry__6_i_6_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry__6_i_7
       (.I0(slv_reg8[28]),
        .I1(slv_reg4[28]),
        .I2(slv_reg9[28]),
        .I3(gen_idle_clks2__0_carry__6_i_3_n_0),
        .O(gen_idle_clks2__0_carry__6_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry_i_1
       (.I0(slv_reg8[2]),
        .I1(slv_reg4[2]),
        .I2(slv_reg9[2]),
        .O(gen_idle_clks2__0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry_i_2
       (.I0(slv_reg8[1]),
        .I1(slv_reg4[1]),
        .I2(slv_reg9[1]),
        .O(gen_idle_clks2__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    gen_idle_clks2__0_carry_i_3
       (.I0(slv_reg4[0]),
        .I1(slv_reg8[0]),
        .I2(slv_reg9[0]),
        .O(gen_idle_clks2__0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry_i_4
       (.I0(slv_reg8[3]),
        .I1(slv_reg4[3]),
        .I2(slv_reg9[3]),
        .I3(gen_idle_clks2__0_carry_i_1_n_0),
        .O(gen_idle_clks2__0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry_i_5
       (.I0(slv_reg8[2]),
        .I1(slv_reg4[2]),
        .I2(slv_reg9[2]),
        .I3(gen_idle_clks2__0_carry_i_2_n_0),
        .O(gen_idle_clks2__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__0_carry_i_6
       (.I0(slv_reg8[1]),
        .I1(slv_reg4[1]),
        .I2(slv_reg9[1]),
        .I3(gen_idle_clks2__0_carry_i_3_n_0),
        .O(gen_idle_clks2__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__0_carry_i_7
       (.I0(slv_reg4[0]),
        .I1(slv_reg8[0]),
        .I2(slv_reg9[0]),
        .O(gen_idle_clks2__0_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry
       (.CI(1'b0),
        .CO({gen_idle_clks2__97_carry_n_0,gen_idle_clks2__97_carry_n_1,gen_idle_clks2__97_carry_n_2,gen_idle_clks2__97_carry_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry_i_1_n_0,gen_idle_clks2__97_carry_i_2_n_0,gen_idle_clks2__97_carry_i_3_n_0,slv_reg7[0]}),
        .O({gen_idle_clks2__97_carry_n_4,gen_idle_clks2__97_carry_n_5,gen_idle_clks2__97_carry_n_6,gen_idle_clks2__97_carry_n_7}),
        .S({gen_idle_clks2__97_carry_i_4_n_0,gen_idle_clks2__97_carry_i_5_n_0,gen_idle_clks2__97_carry_i_6_n_0,gen_idle_clks2__97_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__0
       (.CI(gen_idle_clks2__97_carry_n_0),
        .CO({gen_idle_clks2__97_carry__0_n_0,gen_idle_clks2__97_carry__0_n_1,gen_idle_clks2__97_carry__0_n_2,gen_idle_clks2__97_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__0_i_1_n_0,gen_idle_clks2__97_carry__0_i_2_n_0,gen_idle_clks2__97_carry__0_i_3_n_0,gen_idle_clks2__97_carry__0_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__0_n_4,gen_idle_clks2__97_carry__0_n_5,gen_idle_clks2__97_carry__0_n_6,gen_idle_clks2__97_carry__0_n_7}),
        .S({gen_idle_clks2__97_carry__0_i_5_n_0,gen_idle_clks2__97_carry__0_i_6_n_0,gen_idle_clks2__97_carry__0_i_7_n_0,gen_idle_clks2__97_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hEBEBEB82EB828282)) 
    gen_idle_clks2__97_carry__0_i_1
       (.I0(gen_idle_clks2__97_carry__0_i_9_n_0),
        .I1(gen_idle_clks2__0_carry__0_n_5),
        .I2(slv_reg5[6]),
        .I3(slv_reg5[5]),
        .I4(gen_idle_clks2__0_carry__0_n_6),
        .I5(slv_reg6[5]),
        .O(gen_idle_clks2__97_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__0_i_10
       (.I0(slv_reg6[5]),
        .I1(gen_idle_clks2__0_carry__0_n_6),
        .I2(slv_reg5[5]),
        .O(gen_idle_clks2__97_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__0_i_11
       (.I0(slv_reg6[4]),
        .I1(gen_idle_clks2__0_carry__0_n_7),
        .I2(slv_reg5[4]),
        .O(gen_idle_clks2__97_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__0_i_12
       (.I0(slv_reg6[3]),
        .I1(gen_idle_clks2__0_carry_n_4),
        .I2(slv_reg5[3]),
        .O(gen_idle_clks2__97_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    gen_idle_clks2__97_carry__0_i_13
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(slv_reg7[7]),
        .I3(slv_reg6[7]),
        .O(gen_idle_clks2__97_carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__0_i_14
       (.I0(slv_reg5[5]),
        .I1(gen_idle_clks2__0_carry__0_n_6),
        .I2(slv_reg6[5]),
        .O(gen_idle_clks2__97_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__0_i_15
       (.I0(slv_reg5[4]),
        .I1(gen_idle_clks2__0_carry__0_n_7),
        .I2(slv_reg6[4]),
        .O(gen_idle_clks2__97_carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__0_i_16
       (.I0(slv_reg5[3]),
        .I1(gen_idle_clks2__0_carry_n_4),
        .I2(slv_reg6[3]),
        .O(gen_idle_clks2__97_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__0_i_2
       (.I0(slv_reg5[4]),
        .I1(gen_idle_clks2__0_carry__0_n_7),
        .I2(slv_reg6[4]),
        .I3(slv_reg7[5]),
        .I4(gen_idle_clks2__97_carry__0_i_10_n_0),
        .O(gen_idle_clks2__97_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__0_i_3
       (.I0(slv_reg5[3]),
        .I1(gen_idle_clks2__0_carry_n_4),
        .I2(slv_reg6[3]),
        .I3(slv_reg7[4]),
        .I4(gen_idle_clks2__97_carry__0_i_11_n_0),
        .O(gen_idle_clks2__97_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__0_i_4
       (.I0(slv_reg5[2]),
        .I1(gen_idle_clks2__0_carry_n_5),
        .I2(slv_reg6[2]),
        .I3(slv_reg7[3]),
        .I4(gen_idle_clks2__97_carry__0_i_12_n_0),
        .O(gen_idle_clks2__97_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    gen_idle_clks2__97_carry__0_i_5
       (.I0(gen_idle_clks2__97_carry__0_i_1_n_0),
        .I1(gen_idle_clks2__0_carry__0_n_4),
        .I2(slv_reg5[7]),
        .I3(gen_idle_clks2__97_carry__0_i_13_n_0),
        .I4(slv_reg5[6]),
        .I5(gen_idle_clks2__0_carry__0_n_5),
        .O(gen_idle_clks2__97_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    gen_idle_clks2__97_carry__0_i_6
       (.I0(gen_idle_clks2__97_carry__0_i_2_n_0),
        .I1(gen_idle_clks2__97_carry__0_i_14_n_0),
        .I2(slv_reg7[6]),
        .I3(slv_reg6[6]),
        .I4(gen_idle_clks2__0_carry__0_n_5),
        .I5(slv_reg5[6]),
        .O(gen_idle_clks2__97_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    gen_idle_clks2__97_carry__0_i_7
       (.I0(gen_idle_clks2__97_carry__0_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__0_i_15_n_0),
        .I2(slv_reg6[5]),
        .I3(gen_idle_clks2__0_carry__0_n_6),
        .I4(slv_reg5[5]),
        .I5(slv_reg7[5]),
        .O(gen_idle_clks2__97_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    gen_idle_clks2__97_carry__0_i_8
       (.I0(gen_idle_clks2__97_carry__0_i_4_n_0),
        .I1(gen_idle_clks2__97_carry__0_i_16_n_0),
        .I2(slv_reg6[4]),
        .I3(gen_idle_clks2__0_carry__0_n_7),
        .I4(slv_reg5[4]),
        .I5(slv_reg7[4]),
        .O(gen_idle_clks2__97_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    gen_idle_clks2__97_carry__0_i_9
       (.I0(slv_reg6[6]),
        .I1(slv_reg7[6]),
        .O(gen_idle_clks2__97_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__1
       (.CI(gen_idle_clks2__97_carry__0_n_0),
        .CO({gen_idle_clks2__97_carry__1_n_0,gen_idle_clks2__97_carry__1_n_1,gen_idle_clks2__97_carry__1_n_2,gen_idle_clks2__97_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__1_i_1_n_0,gen_idle_clks2__97_carry__1_i_2_n_0,gen_idle_clks2__97_carry__1_i_3_n_0,gen_idle_clks2__97_carry__1_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__1_n_4,gen_idle_clks2__97_carry__1_n_5,gen_idle_clks2__97_carry__1_n_6,gen_idle_clks2__97_carry__1_n_7}),
        .S({gen_idle_clks2__97_carry__1_i_5_n_0,gen_idle_clks2__97_carry__1_i_6_n_0,gen_idle_clks2__97_carry__1_i_7_n_0,gen_idle_clks2__97_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hBBB2B222)) 
    gen_idle_clks2__97_carry__1_i_1
       (.I0(gen_idle_clks2__97_carry__1_i_9_n_0),
        .I1(gen_idle_clks2__97_carry__1_i_10_n_0),
        .I2(slv_reg6[9]),
        .I3(gen_idle_clks2__0_carry__1_n_6),
        .I4(slv_reg5[9]),
        .O(gen_idle_clks2__97_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__97_carry__1_i_10
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(gen_idle_clks2__0_carry__1_n_5),
        .I3(slv_reg5[10]),
        .O(gen_idle_clks2__97_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__1_i_11
       (.I0(slv_reg6[9]),
        .I1(gen_idle_clks2__0_carry__1_n_6),
        .I2(slv_reg5[9]),
        .O(gen_idle_clks2__97_carry__1_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    gen_idle_clks2__97_carry__1_i_12
       (.I0(slv_reg5[7]),
        .I1(gen_idle_clks2__0_carry__0_n_4),
        .O(gen_idle_clks2__97_carry__1_i_12_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__97_carry__1_i_13
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(gen_idle_clks2__0_carry__1_n_7),
        .I3(slv_reg5[8]),
        .O(gen_idle_clks2__97_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    gen_idle_clks2__97_carry__1_i_14
       (.I0(gen_idle_clks2__0_carry__1_n_5),
        .I1(slv_reg5[10]),
        .I2(slv_reg6[11]),
        .I3(gen_idle_clks2__0_carry__1_n_4),
        .I4(slv_reg5[11]),
        .I5(slv_reg7[11]),
        .O(gen_idle_clks2__97_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    gen_idle_clks2__97_carry__1_i_15
       (.I0(gen_idle_clks2__0_carry__1_n_7),
        .I1(slv_reg5[8]),
        .I2(slv_reg6[9]),
        .I3(gen_idle_clks2__0_carry__1_n_6),
        .I4(slv_reg5[9]),
        .I5(slv_reg7[9]),
        .O(gen_idle_clks2__97_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h9990900090006660)) 
    gen_idle_clks2__97_carry__1_i_2
       (.I0(slv_reg7[9]),
        .I1(gen_idle_clks2__97_carry__1_i_11_n_0),
        .I2(slv_reg7[8]),
        .I3(slv_reg6[8]),
        .I4(gen_idle_clks2__0_carry__1_n_7),
        .I5(slv_reg5[8]),
        .O(gen_idle_clks2__97_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000F880F880FFFF)) 
    gen_idle_clks2__97_carry__1_i_3
       (.I0(slv_reg6[6]),
        .I1(slv_reg7[6]),
        .I2(slv_reg6[7]),
        .I3(slv_reg7[7]),
        .I4(gen_idle_clks2__97_carry__1_i_12_n_0),
        .I5(gen_idle_clks2__97_carry__1_i_13_n_0),
        .O(gen_idle_clks2__97_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    gen_idle_clks2__97_carry__1_i_4
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(slv_reg7[6]),
        .I3(slv_reg6[6]),
        .I4(gen_idle_clks2__97_carry__1_i_13_n_0),
        .I5(gen_idle_clks2__97_carry__1_i_12_n_0),
        .O(gen_idle_clks2__97_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    gen_idle_clks2__97_carry__1_i_5
       (.I0(gen_idle_clks2__97_carry__1_i_1_n_0),
        .I1(slv_reg5[10]),
        .I2(gen_idle_clks2__0_carry__1_n_5),
        .I3(slv_reg6[10]),
        .I4(slv_reg7[10]),
        .I5(gen_idle_clks2__97_carry__1_i_14_n_0),
        .O(gen_idle_clks2__97_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    gen_idle_clks2__97_carry__1_i_6
       (.I0(gen_idle_clks2__97_carry__1_i_2_n_0),
        .I1(gen_idle_clks2__97_carry__1_i_10_n_0),
        .I2(slv_reg6[9]),
        .I3(gen_idle_clks2__0_carry__1_n_6),
        .I4(slv_reg5[9]),
        .I5(gen_idle_clks2__97_carry__1_i_9_n_0),
        .O(gen_idle_clks2__97_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    gen_idle_clks2__97_carry__1_i_7
       (.I0(gen_idle_clks2__97_carry__1_i_3_n_0),
        .I1(slv_reg5[8]),
        .I2(gen_idle_clks2__0_carry__1_n_7),
        .I3(slv_reg6[8]),
        .I4(slv_reg7[8]),
        .I5(gen_idle_clks2__97_carry__1_i_15_n_0),
        .O(gen_idle_clks2__97_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h5556565556AAAA56)) 
    gen_idle_clks2__97_carry__1_i_8
       (.I0(gen_idle_clks2__97_carry__1_i_4_n_0),
        .I1(gen_idle_clks2__0_carry__0_n_5),
        .I2(slv_reg5[6]),
        .I3(slv_reg5[7]),
        .I4(gen_idle_clks2__0_carry__0_n_4),
        .I5(gen_idle_clks2__97_carry__0_i_13_n_0),
        .O(gen_idle_clks2__97_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FF969600)) 
    gen_idle_clks2__97_carry__1_i_9
       (.I0(slv_reg5[9]),
        .I1(gen_idle_clks2__0_carry__1_n_6),
        .I2(slv_reg6[9]),
        .I3(slv_reg7[9]),
        .I4(slv_reg5[8]),
        .I5(gen_idle_clks2__0_carry__1_n_7),
        .O(gen_idle_clks2__97_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__2
       (.CI(gen_idle_clks2__97_carry__1_n_0),
        .CO({gen_idle_clks2__97_carry__2_n_0,gen_idle_clks2__97_carry__2_n_1,gen_idle_clks2__97_carry__2_n_2,gen_idle_clks2__97_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__2_i_1_n_0,gen_idle_clks2__97_carry__2_i_2_n_0,gen_idle_clks2__97_carry__2_i_3_n_0,gen_idle_clks2__97_carry__2_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__2_n_4,gen_idle_clks2__97_carry__2_n_5,gen_idle_clks2__97_carry__2_n_6,gen_idle_clks2__97_carry__2_n_7}),
        .S({gen_idle_clks2__97_carry__2_i_5_n_0,gen_idle_clks2__97_carry__2_i_6_n_0,gen_idle_clks2__97_carry__2_i_7_n_0,gen_idle_clks2__97_carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hD4404000FFFDFDD4)) 
    gen_idle_clks2__97_carry__2_i_1
       (.I0(gen_idle_clks2__97_carry__2_i_9_n_0),
        .I1(slv_reg7[13]),
        .I2(slv_reg5[13]),
        .I3(gen_idle_clks2__0_carry__2_n_6),
        .I4(slv_reg6[13]),
        .I5(gen_idle_clks2__97_carry__2_i_10_n_0),
        .O(gen_idle_clks2__97_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__97_carry__2_i_10
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(gen_idle_clks2__0_carry__2_n_5),
        .I3(slv_reg5[14]),
        .O(gen_idle_clks2__97_carry__2_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__2_i_11
       (.I0(slv_reg5[11]),
        .I1(gen_idle_clks2__0_carry__1_n_4),
        .I2(slv_reg6[11]),
        .I3(slv_reg7[12]),
        .I4(gen_idle_clks2__97_carry__2_i_19_n_0),
        .O(gen_idle_clks2__97_carry__2_i_11_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__2_i_12
       (.I0(slv_reg5[11]),
        .I1(gen_idle_clks2__0_carry__1_n_4),
        .I2(slv_reg6[11]),
        .O(gen_idle_clks2__97_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FF969600)) 
    gen_idle_clks2__97_carry__2_i_13
       (.I0(slv_reg5[11]),
        .I1(gen_idle_clks2__0_carry__1_n_4),
        .I2(slv_reg6[11]),
        .I3(slv_reg7[11]),
        .I4(slv_reg5[10]),
        .I5(gen_idle_clks2__0_carry__1_n_5),
        .O(gen_idle_clks2__97_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__2_i_14
       (.I0(slv_reg6[11]),
        .I1(gen_idle_clks2__0_carry__1_n_4),
        .I2(slv_reg5[11]),
        .O(gen_idle_clks2__97_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    gen_idle_clks2__97_carry__2_i_15
       (.I0(gen_idle_clks2__0_carry__2_n_5),
        .I1(slv_reg5[14]),
        .I2(slv_reg6[15]),
        .I3(gen_idle_clks2__0_carry__2_n_4),
        .I4(slv_reg5[15]),
        .I5(slv_reg7[15]),
        .O(gen_idle_clks2__97_carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__2_i_16
       (.I0(slv_reg5[12]),
        .I1(gen_idle_clks2__0_carry__2_n_7),
        .I2(slv_reg6[12]),
        .I3(slv_reg7[13]),
        .I4(gen_idle_clks2__97_carry__2_i_20_n_0),
        .O(gen_idle_clks2__97_carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__2_i_17
       (.I0(slv_reg7[13]),
        .I1(slv_reg5[13]),
        .I2(gen_idle_clks2__0_carry__2_n_6),
        .I3(slv_reg6[13]),
        .I4(gen_idle_clks2__97_carry__2_i_9_n_0),
        .O(gen_idle_clks2__97_carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__2_i_18
       (.I0(slv_reg7[12]),
        .I1(slv_reg5[12]),
        .I2(gen_idle_clks2__0_carry__2_n_7),
        .I3(slv_reg6[12]),
        .I4(gen_idle_clks2__97_carry__2_i_12_n_0),
        .O(gen_idle_clks2__97_carry__2_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__2_i_19
       (.I0(slv_reg6[12]),
        .I1(gen_idle_clks2__0_carry__2_n_7),
        .I2(slv_reg5[12]),
        .O(gen_idle_clks2__97_carry__2_i_19_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__2_i_2
       (.I0(gen_idle_clks2__97_carry__2_i_9_n_0),
        .I1(slv_reg6[13]),
        .I2(gen_idle_clks2__0_carry__2_n_6),
        .I3(slv_reg5[13]),
        .I4(slv_reg7[13]),
        .I5(gen_idle_clks2__97_carry__2_i_11_n_0),
        .O(gen_idle_clks2__97_carry__2_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__2_i_20
       (.I0(slv_reg6[13]),
        .I1(gen_idle_clks2__0_carry__2_n_6),
        .I2(slv_reg5[13]),
        .O(gen_idle_clks2__97_carry__2_i_20_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__2_i_3
       (.I0(gen_idle_clks2__97_carry__2_i_12_n_0),
        .I1(slv_reg6[12]),
        .I2(gen_idle_clks2__0_carry__2_n_7),
        .I3(slv_reg5[12]),
        .I4(slv_reg7[12]),
        .I5(gen_idle_clks2__97_carry__2_i_13_n_0),
        .O(gen_idle_clks2__97_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h9990900090006660)) 
    gen_idle_clks2__97_carry__2_i_4
       (.I0(slv_reg7[11]),
        .I1(gen_idle_clks2__97_carry__2_i_14_n_0),
        .I2(slv_reg7[10]),
        .I3(slv_reg6[10]),
        .I4(gen_idle_clks2__0_carry__1_n_5),
        .I5(slv_reg5[10]),
        .O(gen_idle_clks2__97_carry__2_i_4_n_0));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    gen_idle_clks2__97_carry__2_i_5
       (.I0(gen_idle_clks2__97_carry__2_i_1_n_0),
        .I1(slv_reg5[14]),
        .I2(gen_idle_clks2__0_carry__2_n_5),
        .I3(slv_reg6[14]),
        .I4(slv_reg7[14]),
        .I5(gen_idle_clks2__97_carry__2_i_15_n_0),
        .O(gen_idle_clks2__97_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    gen_idle_clks2__97_carry__2_i_6
       (.I0(gen_idle_clks2__97_carry__2_i_2_n_0),
        .I1(gen_idle_clks2__97_carry__2_i_16_n_0),
        .I2(gen_idle_clks2__97_carry__2_i_10_n_0),
        .I3(slv_reg6[13]),
        .I4(gen_idle_clks2__0_carry__2_n_6),
        .I5(slv_reg5[13]),
        .O(gen_idle_clks2__97_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__2_i_7
       (.I0(gen_idle_clks2__97_carry__2_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__2_i_11_n_0),
        .I2(gen_idle_clks2__97_carry__2_i_17_n_0),
        .O(gen_idle_clks2__97_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hA9A9A9955656566A)) 
    gen_idle_clks2__97_carry__2_i_8
       (.I0(gen_idle_clks2__97_carry__2_i_4_n_0),
        .I1(gen_idle_clks2__97_carry__2_i_14_n_0),
        .I2(slv_reg7[11]),
        .I3(slv_reg5[10]),
        .I4(gen_idle_clks2__0_carry__1_n_5),
        .I5(gen_idle_clks2__97_carry__2_i_18_n_0),
        .O(gen_idle_clks2__97_carry__2_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__2_i_9
       (.I0(slv_reg5[12]),
        .I1(gen_idle_clks2__0_carry__2_n_7),
        .I2(slv_reg6[12]),
        .O(gen_idle_clks2__97_carry__2_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__3
       (.CI(gen_idle_clks2__97_carry__2_n_0),
        .CO({gen_idle_clks2__97_carry__3_n_0,gen_idle_clks2__97_carry__3_n_1,gen_idle_clks2__97_carry__3_n_2,gen_idle_clks2__97_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__3_i_1_n_0,gen_idle_clks2__97_carry__3_i_2_n_0,gen_idle_clks2__97_carry__3_i_3_n_0,gen_idle_clks2__97_carry__3_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__3_n_4,gen_idle_clks2__97_carry__3_n_5,gen_idle_clks2__97_carry__3_n_6,gen_idle_clks2__97_carry__3_n_7}),
        .S({gen_idle_clks2__97_carry__3_i_5_n_0,gen_idle_clks2__97_carry__3_i_6_n_0,gen_idle_clks2__97_carry__3_i_7_n_0,gen_idle_clks2__97_carry__3_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFFFDFDD4D4404000)) 
    gen_idle_clks2__97_carry__3_i_1
       (.I0(gen_idle_clks2__97_carry__3_i_9_n_0),
        .I1(slv_reg7[17]),
        .I2(slv_reg5[17]),
        .I3(gen_idle_clks2__0_carry__3_n_6),
        .I4(slv_reg6[17]),
        .I5(gen_idle_clks2__97_carry__3_i_10_n_0),
        .O(gen_idle_clks2__97_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    gen_idle_clks2__97_carry__3_i_10
       (.I0(slv_reg6[18]),
        .I1(slv_reg7[18]),
        .I2(gen_idle_clks2__0_carry__3_n_5),
        .I3(slv_reg5[18]),
        .O(gen_idle_clks2__97_carry__3_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__3_i_11
       (.I0(slv_reg5[15]),
        .I1(gen_idle_clks2__0_carry__2_n_4),
        .I2(slv_reg6[15]),
        .I3(slv_reg7[16]),
        .I4(gen_idle_clks2__97_carry__3_i_19_n_0),
        .O(gen_idle_clks2__97_carry__3_i_11_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__3_i_12
       (.I0(slv_reg5[15]),
        .I1(gen_idle_clks2__0_carry__2_n_4),
        .I2(slv_reg6[15]),
        .O(gen_idle_clks2__97_carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FF969600)) 
    gen_idle_clks2__97_carry__3_i_13
       (.I0(slv_reg5[15]),
        .I1(gen_idle_clks2__0_carry__2_n_4),
        .I2(slv_reg6[15]),
        .I3(slv_reg7[15]),
        .I4(slv_reg5[14]),
        .I5(gen_idle_clks2__0_carry__2_n_5),
        .O(gen_idle_clks2__97_carry__3_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__3_i_14
       (.I0(slv_reg6[15]),
        .I1(gen_idle_clks2__0_carry__2_n_4),
        .I2(slv_reg5[15]),
        .O(gen_idle_clks2__97_carry__3_i_14_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    gen_idle_clks2__97_carry__3_i_15
       (.I0(gen_idle_clks2__0_carry__3_n_5),
        .I1(slv_reg5[18]),
        .I2(slv_reg6[19]),
        .I3(gen_idle_clks2__0_carry__3_n_4),
        .I4(slv_reg5[19]),
        .I5(slv_reg7[19]),
        .O(gen_idle_clks2__97_carry__3_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__3_i_16
       (.I0(slv_reg5[16]),
        .I1(gen_idle_clks2__0_carry__3_n_7),
        .I2(slv_reg6[16]),
        .I3(slv_reg7[17]),
        .I4(gen_idle_clks2__97_carry__3_i_20_n_0),
        .O(gen_idle_clks2__97_carry__3_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__3_i_17
       (.I0(slv_reg7[17]),
        .I1(slv_reg5[17]),
        .I2(gen_idle_clks2__0_carry__3_n_6),
        .I3(slv_reg6[17]),
        .I4(gen_idle_clks2__97_carry__3_i_9_n_0),
        .O(gen_idle_clks2__97_carry__3_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__3_i_18
       (.I0(slv_reg7[16]),
        .I1(slv_reg5[16]),
        .I2(gen_idle_clks2__0_carry__3_n_7),
        .I3(slv_reg6[16]),
        .I4(gen_idle_clks2__97_carry__3_i_12_n_0),
        .O(gen_idle_clks2__97_carry__3_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__3_i_19
       (.I0(slv_reg6[16]),
        .I1(gen_idle_clks2__0_carry__3_n_7),
        .I2(slv_reg5[16]),
        .O(gen_idle_clks2__97_carry__3_i_19_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__3_i_2
       (.I0(gen_idle_clks2__97_carry__3_i_9_n_0),
        .I1(slv_reg6[17]),
        .I2(gen_idle_clks2__0_carry__3_n_6),
        .I3(slv_reg5[17]),
        .I4(slv_reg7[17]),
        .I5(gen_idle_clks2__97_carry__3_i_11_n_0),
        .O(gen_idle_clks2__97_carry__3_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__3_i_20
       (.I0(slv_reg6[17]),
        .I1(gen_idle_clks2__0_carry__3_n_6),
        .I2(slv_reg5[17]),
        .O(gen_idle_clks2__97_carry__3_i_20_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__3_i_3
       (.I0(gen_idle_clks2__97_carry__3_i_12_n_0),
        .I1(slv_reg6[16]),
        .I2(gen_idle_clks2__0_carry__3_n_7),
        .I3(slv_reg5[16]),
        .I4(slv_reg7[16]),
        .I5(gen_idle_clks2__97_carry__3_i_13_n_0),
        .O(gen_idle_clks2__97_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'h9990900090006660)) 
    gen_idle_clks2__97_carry__3_i_4
       (.I0(slv_reg7[15]),
        .I1(gen_idle_clks2__97_carry__3_i_14_n_0),
        .I2(slv_reg7[14]),
        .I3(slv_reg6[14]),
        .I4(gen_idle_clks2__0_carry__2_n_5),
        .I5(slv_reg5[14]),
        .O(gen_idle_clks2__97_carry__3_i_4_n_0));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    gen_idle_clks2__97_carry__3_i_5
       (.I0(gen_idle_clks2__97_carry__3_i_1_n_0),
        .I1(slv_reg5[18]),
        .I2(gen_idle_clks2__0_carry__3_n_5),
        .I3(slv_reg6[18]),
        .I4(slv_reg7[18]),
        .I5(gen_idle_clks2__97_carry__3_i_15_n_0),
        .O(gen_idle_clks2__97_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    gen_idle_clks2__97_carry__3_i_6
       (.I0(gen_idle_clks2__97_carry__3_i_2_n_0),
        .I1(gen_idle_clks2__97_carry__3_i_16_n_0),
        .I2(gen_idle_clks2__97_carry__3_i_10_n_0),
        .I3(slv_reg6[17]),
        .I4(gen_idle_clks2__0_carry__3_n_6),
        .I5(slv_reg5[17]),
        .O(gen_idle_clks2__97_carry__3_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__3_i_7
       (.I0(gen_idle_clks2__97_carry__3_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__3_i_11_n_0),
        .I2(gen_idle_clks2__97_carry__3_i_17_n_0),
        .O(gen_idle_clks2__97_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hA9A9A9955656566A)) 
    gen_idle_clks2__97_carry__3_i_8
       (.I0(gen_idle_clks2__97_carry__3_i_4_n_0),
        .I1(gen_idle_clks2__97_carry__3_i_14_n_0),
        .I2(slv_reg7[15]),
        .I3(slv_reg5[14]),
        .I4(gen_idle_clks2__0_carry__2_n_5),
        .I5(gen_idle_clks2__97_carry__3_i_18_n_0),
        .O(gen_idle_clks2__97_carry__3_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__3_i_9
       (.I0(slv_reg5[16]),
        .I1(gen_idle_clks2__0_carry__3_n_7),
        .I2(slv_reg6[16]),
        .O(gen_idle_clks2__97_carry__3_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__4
       (.CI(gen_idle_clks2__97_carry__3_n_0),
        .CO({gen_idle_clks2__97_carry__4_n_0,gen_idle_clks2__97_carry__4_n_1,gen_idle_clks2__97_carry__4_n_2,gen_idle_clks2__97_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__4_i_1_n_0,gen_idle_clks2__97_carry__4_i_2_n_0,gen_idle_clks2__97_carry__4_i_3_n_0,gen_idle_clks2__97_carry__4_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__4_n_4,gen_idle_clks2__97_carry__4_n_5,gen_idle_clks2__97_carry__4_n_6,gen_idle_clks2__97_carry__4_n_7}),
        .S({gen_idle_clks2__97_carry__4_i_5_n_0,gen_idle_clks2__97_carry__4_i_6_n_0,gen_idle_clks2__97_carry__4_i_7_n_0,gen_idle_clks2__97_carry__4_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    gen_idle_clks2__97_carry__4_i_1
       (.I0(slv_reg5[21]),
        .I1(gen_idle_clks2__0_carry__4_n_6),
        .I2(slv_reg6[21]),
        .I3(slv_reg7[22]),
        .I4(gen_idle_clks2__97_carry__4_i_9_n_0),
        .I5(gen_idle_clks2__97_carry__4_i_10_n_0),
        .O(gen_idle_clks2__97_carry__4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__4_i_10
       (.I0(slv_reg5[20]),
        .I1(gen_idle_clks2__0_carry__4_n_7),
        .I2(slv_reg6[20]),
        .I3(slv_reg7[21]),
        .I4(gen_idle_clks2__97_carry__4_i_11_n_0),
        .O(gen_idle_clks2__97_carry__4_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_11
       (.I0(slv_reg6[21]),
        .I1(gen_idle_clks2__0_carry__4_n_6),
        .I2(slv_reg5[21]),
        .O(gen_idle_clks2__97_carry__4_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__4_i_12
       (.I0(slv_reg5[19]),
        .I1(gen_idle_clks2__0_carry__3_n_4),
        .I2(slv_reg6[19]),
        .I3(slv_reg7[20]),
        .I4(gen_idle_clks2__97_carry__4_i_22_n_0),
        .O(gen_idle_clks2__97_carry__4_i_12_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__4_i_13
       (.I0(slv_reg5[19]),
        .I1(gen_idle_clks2__0_carry__3_n_4),
        .I2(slv_reg6[19]),
        .O(gen_idle_clks2__97_carry__4_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FF969600)) 
    gen_idle_clks2__97_carry__4_i_14
       (.I0(slv_reg5[19]),
        .I1(gen_idle_clks2__0_carry__3_n_4),
        .I2(slv_reg6[19]),
        .I3(slv_reg7[19]),
        .I4(slv_reg5[18]),
        .I5(gen_idle_clks2__0_carry__3_n_5),
        .O(gen_idle_clks2__97_carry__4_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_15
       (.I0(slv_reg6[19]),
        .I1(gen_idle_clks2__0_carry__3_n_4),
        .I2(slv_reg5[19]),
        .O(gen_idle_clks2__97_carry__4_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    gen_idle_clks2__97_carry__4_i_16
       (.I0(gen_idle_clks2__97_carry__4_i_9_n_0),
        .I1(slv_reg7[22]),
        .I2(slv_reg5[21]),
        .I3(gen_idle_clks2__0_carry__4_n_6),
        .I4(slv_reg6[21]),
        .O(gen_idle_clks2__97_carry__4_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__4_i_17
       (.I0(slv_reg7[23]),
        .I1(slv_reg5[23]),
        .I2(gen_idle_clks2__0_carry__4_n_4),
        .I3(slv_reg6[23]),
        .I4(gen_idle_clks2__97_carry__4_i_23_n_0),
        .O(gen_idle_clks2__97_carry__4_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    gen_idle_clks2__97_carry__4_i_18
       (.I0(gen_idle_clks2__97_carry__4_i_9_n_0),
        .I1(slv_reg7[22]),
        .I2(slv_reg6[21]),
        .I3(gen_idle_clks2__0_carry__4_n_6),
        .I4(slv_reg5[21]),
        .O(gen_idle_clks2__97_carry__4_i_18_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__4_i_19
       (.I0(slv_reg5[20]),
        .I1(gen_idle_clks2__0_carry__4_n_7),
        .I2(slv_reg6[20]),
        .O(gen_idle_clks2__97_carry__4_i_19_n_0));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    gen_idle_clks2__97_carry__4_i_2
       (.I0(slv_reg5[20]),
        .I1(gen_idle_clks2__0_carry__4_n_7),
        .I2(slv_reg6[20]),
        .I3(slv_reg7[21]),
        .I4(gen_idle_clks2__97_carry__4_i_11_n_0),
        .I5(gen_idle_clks2__97_carry__4_i_12_n_0),
        .O(gen_idle_clks2__97_carry__4_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    gen_idle_clks2__97_carry__4_i_20
       (.I0(gen_idle_clks2__97_carry__4_i_11_n_0),
        .I1(slv_reg7[21]),
        .I2(slv_reg6[20]),
        .I3(gen_idle_clks2__0_carry__4_n_7),
        .I4(slv_reg5[20]),
        .O(gen_idle_clks2__97_carry__4_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__4_i_21
       (.I0(slv_reg7[20]),
        .I1(slv_reg5[20]),
        .I2(gen_idle_clks2__0_carry__4_n_7),
        .I3(slv_reg6[20]),
        .I4(gen_idle_clks2__97_carry__4_i_13_n_0),
        .O(gen_idle_clks2__97_carry__4_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_22
       (.I0(slv_reg6[20]),
        .I1(gen_idle_clks2__0_carry__4_n_7),
        .I2(slv_reg5[20]),
        .O(gen_idle_clks2__97_carry__4_i_22_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__4_i_23
       (.I0(slv_reg5[22]),
        .I1(gen_idle_clks2__0_carry__4_n_5),
        .I2(slv_reg6[22]),
        .O(gen_idle_clks2__97_carry__4_i_23_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__4_i_3
       (.I0(gen_idle_clks2__97_carry__4_i_13_n_0),
        .I1(slv_reg6[20]),
        .I2(gen_idle_clks2__0_carry__4_n_7),
        .I3(slv_reg5[20]),
        .I4(slv_reg7[20]),
        .I5(gen_idle_clks2__97_carry__4_i_14_n_0),
        .O(gen_idle_clks2__97_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h9990900090006660)) 
    gen_idle_clks2__97_carry__4_i_4
       (.I0(slv_reg7[19]),
        .I1(gen_idle_clks2__97_carry__4_i_15_n_0),
        .I2(slv_reg7[18]),
        .I3(slv_reg6[18]),
        .I4(gen_idle_clks2__0_carry__3_n_5),
        .I5(slv_reg5[18]),
        .O(gen_idle_clks2__97_carry__4_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_5
       (.I0(gen_idle_clks2__97_carry__4_i_1_n_0),
        .I1(gen_idle_clks2__97_carry__4_i_16_n_0),
        .I2(gen_idle_clks2__97_carry__4_i_17_n_0),
        .O(gen_idle_clks2__97_carry__4_i_5_n_0));
  LUT5 #(
    .INIT(32'h399C6339)) 
    gen_idle_clks2__97_carry__4_i_6
       (.I0(gen_idle_clks2__97_carry__4_i_12_n_0),
        .I1(gen_idle_clks2__97_carry__4_i_18_n_0),
        .I2(gen_idle_clks2__97_carry__4_i_11_n_0),
        .I3(slv_reg7[21]),
        .I4(gen_idle_clks2__97_carry__4_i_19_n_0),
        .O(gen_idle_clks2__97_carry__4_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_7
       (.I0(gen_idle_clks2__97_carry__4_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__4_i_12_n_0),
        .I2(gen_idle_clks2__97_carry__4_i_20_n_0),
        .O(gen_idle_clks2__97_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hA9A9A9955656566A)) 
    gen_idle_clks2__97_carry__4_i_8
       (.I0(gen_idle_clks2__97_carry__4_i_4_n_0),
        .I1(gen_idle_clks2__97_carry__4_i_15_n_0),
        .I2(slv_reg7[19]),
        .I3(slv_reg5[18]),
        .I4(gen_idle_clks2__0_carry__3_n_5),
        .I5(gen_idle_clks2__97_carry__4_i_21_n_0),
        .O(gen_idle_clks2__97_carry__4_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__4_i_9
       (.I0(slv_reg6[22]),
        .I1(gen_idle_clks2__0_carry__4_n_5),
        .I2(slv_reg5[22]),
        .O(gen_idle_clks2__97_carry__4_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__5
       (.CI(gen_idle_clks2__97_carry__4_n_0),
        .CO({gen_idle_clks2__97_carry__5_n_0,gen_idle_clks2__97_carry__5_n_1,gen_idle_clks2__97_carry__5_n_2,gen_idle_clks2__97_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({gen_idle_clks2__97_carry__5_i_1_n_0,gen_idle_clks2__97_carry__5_i_2_n_0,gen_idle_clks2__97_carry__5_i_3_n_0,gen_idle_clks2__97_carry__5_i_4_n_0}),
        .O({gen_idle_clks2__97_carry__5_n_4,gen_idle_clks2__97_carry__5_n_5,gen_idle_clks2__97_carry__5_n_6,gen_idle_clks2__97_carry__5_n_7}),
        .S({gen_idle_clks2__97_carry__5_i_5_n_0,gen_idle_clks2__97_carry__5_i_6_n_0,gen_idle_clks2__97_carry__5_i_7_n_0,gen_idle_clks2__97_carry__5_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    gen_idle_clks2__97_carry__5_i_1
       (.I0(slv_reg5[25]),
        .I1(gen_idle_clks2__0_carry__5_n_6),
        .I2(slv_reg6[25]),
        .I3(slv_reg7[26]),
        .I4(gen_idle_clks2__97_carry__5_i_9_n_0),
        .I5(gen_idle_clks2__97_carry__5_i_10_n_0),
        .O(gen_idle_clks2__97_carry__5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__5_i_10
       (.I0(slv_reg5[24]),
        .I1(gen_idle_clks2__0_carry__5_n_7),
        .I2(slv_reg6[24]),
        .I3(slv_reg7[25]),
        .I4(gen_idle_clks2__97_carry__5_i_20_n_0),
        .O(gen_idle_clks2__97_carry__5_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__5_i_11
       (.I0(slv_reg5[24]),
        .I1(gen_idle_clks2__0_carry__5_n_7),
        .I2(slv_reg6[24]),
        .O(gen_idle_clks2__97_carry__5_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__5_i_12
       (.I0(slv_reg5[23]),
        .I1(gen_idle_clks2__0_carry__4_n_4),
        .I2(slv_reg6[23]),
        .I3(slv_reg7[24]),
        .I4(gen_idle_clks2__97_carry__5_i_21_n_0),
        .O(gen_idle_clks2__97_carry__5_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__5_i_13
       (.I0(slv_reg5[23]),
        .I1(gen_idle_clks2__0_carry__4_n_4),
        .I2(slv_reg6[23]),
        .O(gen_idle_clks2__97_carry__5_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    gen_idle_clks2__97_carry__5_i_14
       (.I0(slv_reg5[22]),
        .I1(gen_idle_clks2__0_carry__4_n_5),
        .I2(slv_reg6[22]),
        .I3(slv_reg7[23]),
        .I4(gen_idle_clks2__97_carry__5_i_22_n_0),
        .O(gen_idle_clks2__97_carry__5_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    gen_idle_clks2__97_carry__5_i_15
       (.I0(gen_idle_clks2__97_carry__6_i_11_n_0),
        .I1(slv_reg7[27]),
        .I2(slv_reg6[26]),
        .I3(gen_idle_clks2__0_carry__5_n_5),
        .I4(slv_reg5[26]),
        .O(gen_idle_clks2__97_carry__5_i_15_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__5_i_16
       (.I0(slv_reg5[25]),
        .I1(gen_idle_clks2__0_carry__5_n_6),
        .I2(slv_reg6[25]),
        .O(gen_idle_clks2__97_carry__5_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h66696999)) 
    gen_idle_clks2__97_carry__5_i_17
       (.I0(gen_idle_clks2__97_carry__5_i_9_n_0),
        .I1(slv_reg7[26]),
        .I2(slv_reg6[25]),
        .I3(gen_idle_clks2__0_carry__5_n_6),
        .I4(slv_reg5[25]),
        .O(gen_idle_clks2__97_carry__5_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__5_i_18
       (.I0(slv_reg7[25]),
        .I1(slv_reg5[25]),
        .I2(gen_idle_clks2__0_carry__5_n_6),
        .I3(slv_reg6[25]),
        .I4(gen_idle_clks2__97_carry__5_i_11_n_0),
        .O(gen_idle_clks2__97_carry__5_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__5_i_19
       (.I0(slv_reg7[24]),
        .I1(slv_reg5[24]),
        .I2(gen_idle_clks2__0_carry__5_n_7),
        .I3(slv_reg6[24]),
        .I4(gen_idle_clks2__97_carry__5_i_13_n_0),
        .O(gen_idle_clks2__97_carry__5_i_19_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__5_i_2
       (.I0(gen_idle_clks2__97_carry__5_i_11_n_0),
        .I1(slv_reg6[25]),
        .I2(gen_idle_clks2__0_carry__5_n_6),
        .I3(slv_reg5[25]),
        .I4(slv_reg7[25]),
        .I5(gen_idle_clks2__97_carry__5_i_12_n_0),
        .O(gen_idle_clks2__97_carry__5_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_20
       (.I0(slv_reg6[25]),
        .I1(gen_idle_clks2__0_carry__5_n_6),
        .I2(slv_reg5[25]),
        .O(gen_idle_clks2__97_carry__5_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_21
       (.I0(slv_reg6[24]),
        .I1(gen_idle_clks2__0_carry__5_n_7),
        .I2(slv_reg5[24]),
        .O(gen_idle_clks2__97_carry__5_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_22
       (.I0(slv_reg6[23]),
        .I1(gen_idle_clks2__0_carry__4_n_4),
        .I2(slv_reg5[23]),
        .O(gen_idle_clks2__97_carry__5_i_22_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    gen_idle_clks2__97_carry__5_i_3
       (.I0(gen_idle_clks2__97_carry__5_i_13_n_0),
        .I1(slv_reg6[24]),
        .I2(gen_idle_clks2__0_carry__5_n_7),
        .I3(slv_reg5[24]),
        .I4(slv_reg7[24]),
        .I5(gen_idle_clks2__97_carry__5_i_14_n_0),
        .O(gen_idle_clks2__97_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAA880A8800000)) 
    gen_idle_clks2__97_carry__5_i_4
       (.I0(gen_idle_clks2__97_carry__4_i_17_n_0),
        .I1(slv_reg6[21]),
        .I2(gen_idle_clks2__0_carry__4_n_6),
        .I3(slv_reg5[21]),
        .I4(slv_reg7[22]),
        .I5(gen_idle_clks2__97_carry__4_i_9_n_0),
        .O(gen_idle_clks2__97_carry__5_i_4_n_0));
  LUT5 #(
    .INIT(32'h399C6339)) 
    gen_idle_clks2__97_carry__5_i_5
       (.I0(gen_idle_clks2__97_carry__5_i_10_n_0),
        .I1(gen_idle_clks2__97_carry__5_i_15_n_0),
        .I2(gen_idle_clks2__97_carry__5_i_9_n_0),
        .I3(slv_reg7[26]),
        .I4(gen_idle_clks2__97_carry__5_i_16_n_0),
        .O(gen_idle_clks2__97_carry__5_i_5_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_6
       (.I0(gen_idle_clks2__97_carry__5_i_2_n_0),
        .I1(gen_idle_clks2__97_carry__5_i_10_n_0),
        .I2(gen_idle_clks2__97_carry__5_i_17_n_0),
        .O(gen_idle_clks2__97_carry__5_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_7
       (.I0(gen_idle_clks2__97_carry__5_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__5_i_12_n_0),
        .I2(gen_idle_clks2__97_carry__5_i_18_n_0),
        .O(gen_idle_clks2__97_carry__5_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_8
       (.I0(gen_idle_clks2__97_carry__5_i_4_n_0),
        .I1(gen_idle_clks2__97_carry__5_i_14_n_0),
        .I2(gen_idle_clks2__97_carry__5_i_19_n_0),
        .O(gen_idle_clks2__97_carry__5_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__5_i_9
       (.I0(slv_reg6[26]),
        .I1(gen_idle_clks2__0_carry__5_n_5),
        .I2(slv_reg5[26]),
        .O(gen_idle_clks2__97_carry__5_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gen_idle_clks2__97_carry__6
       (.CI(gen_idle_clks2__97_carry__5_n_0),
        .CO({NLW_gen_idle_clks2__97_carry__6_CO_UNCONNECTED[3],gen_idle_clks2__97_carry__6_n_1,gen_idle_clks2__97_carry__6_n_2,gen_idle_clks2__97_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,gen_idle_clks2__97_carry__6_i_1_n_0,gen_idle_clks2__97_carry__6_i_2_n_0,gen_idle_clks2__97_carry__6_i_3_n_0}),
        .O({gen_idle_clks2__97_carry__6_n_4,gen_idle_clks2__97_carry__6_n_5,gen_idle_clks2__97_carry__6_n_6,gen_idle_clks2__97_carry__6_n_7}),
        .S({gen_idle_clks2__97_carry__6_i_4_n_0,gen_idle_clks2__97_carry__6_i_5_n_0,gen_idle_clks2__97_carry__6_i_6_n_0,gen_idle_clks2__97_carry__6_i_7_n_0}));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    gen_idle_clks2__97_carry__6_i_1
       (.I0(slv_reg5[28]),
        .I1(gen_idle_clks2__0_carry__6_n_7),
        .I2(slv_reg6[28]),
        .I3(slv_reg7[29]),
        .I4(gen_idle_clks2__97_carry__6_i_8_n_0),
        .I5(gen_idle_clks2__97_carry__6_i_9_n_0),
        .O(gen_idle_clks2__97_carry__6_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__6_i_10
       (.I0(slv_reg7[28]),
        .I1(slv_reg5[28]),
        .I2(gen_idle_clks2__0_carry__6_n_7),
        .I3(slv_reg6[28]),
        .I4(gen_idle_clks2__97_carry__6_i_21_n_0),
        .O(gen_idle_clks2__97_carry__6_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_11
       (.I0(slv_reg6[27]),
        .I1(gen_idle_clks2__0_carry__5_n_4),
        .I2(slv_reg5[27]),
        .O(gen_idle_clks2__97_carry__6_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__6_i_12
       (.I0(slv_reg5[25]),
        .I1(gen_idle_clks2__0_carry__5_n_6),
        .I2(slv_reg6[25]),
        .I3(slv_reg7[26]),
        .I4(gen_idle_clks2__97_carry__5_i_9_n_0),
        .O(gen_idle_clks2__97_carry__6_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    gen_idle_clks2__97_carry__6_i_13
       (.I0(gen_idle_clks2__97_carry__6_i_8_n_0),
        .I1(slv_reg7[29]),
        .I2(slv_reg5[28]),
        .I3(gen_idle_clks2__0_carry__6_n_7),
        .I4(slv_reg6[28]),
        .O(gen_idle_clks2__97_carry__6_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__6_i_14
       (.I0(slv_reg5[29]),
        .I1(gen_idle_clks2__0_carry__6_n_6),
        .I2(slv_reg6[29]),
        .O(gen_idle_clks2__97_carry__6_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_15
       (.I0(slv_reg6[30]),
        .I1(gen_idle_clks2__0_carry__6_n_5),
        .I2(slv_reg5[30]),
        .O(gen_idle_clks2__97_carry__6_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    gen_idle_clks2__97_carry__6_i_16
       (.I0(slv_reg5[30]),
        .I1(gen_idle_clks2__0_carry__6_n_5),
        .I2(slv_reg6[30]),
        .I3(gen_idle_clks2__97_carry__6_i_22_n_0),
        .I4(gen_idle_clks2__0_carry__6_n_4),
        .I5(slv_reg7[31]),
        .O(gen_idle_clks2__97_carry__6_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    gen_idle_clks2__97_carry__6_i_17
       (.I0(slv_reg7[30]),
        .I1(slv_reg5[30]),
        .I2(gen_idle_clks2__0_carry__6_n_5),
        .I3(slv_reg6[30]),
        .I4(gen_idle_clks2__97_carry__6_i_14_n_0),
        .O(gen_idle_clks2__97_carry__6_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    gen_idle_clks2__97_carry__6_i_18
       (.I0(gen_idle_clks2__97_carry__6_i_11_n_0),
        .I1(slv_reg7[27]),
        .I2(slv_reg5[26]),
        .I3(gen_idle_clks2__0_carry__5_n_5),
        .I4(slv_reg6[26]),
        .O(gen_idle_clks2__97_carry__6_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    gen_idle_clks2__97_carry__6_i_19
       (.I0(gen_idle_clks2__97_carry__6_i_8_n_0),
        .I1(slv_reg7[29]),
        .I2(slv_reg6[28]),
        .I3(gen_idle_clks2__0_carry__6_n_7),
        .I4(slv_reg5[28]),
        .O(gen_idle_clks2__97_carry__6_i_19_n_0));
  LUT6 #(
    .INIT(64'hAAAAA880A8800000)) 
    gen_idle_clks2__97_carry__6_i_2
       (.I0(gen_idle_clks2__97_carry__6_i_10_n_0),
        .I1(slv_reg6[26]),
        .I2(gen_idle_clks2__0_carry__5_n_5),
        .I3(slv_reg5[26]),
        .I4(slv_reg7[27]),
        .I5(gen_idle_clks2__97_carry__6_i_11_n_0),
        .O(gen_idle_clks2__97_carry__6_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_20
       (.I0(slv_reg6[28]),
        .I1(gen_idle_clks2__0_carry__6_n_7),
        .I2(slv_reg5[28]),
        .O(gen_idle_clks2__97_carry__6_i_20_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry__6_i_21
       (.I0(slv_reg5[27]),
        .I1(gen_idle_clks2__0_carry__5_n_4),
        .I2(slv_reg6[27]),
        .O(gen_idle_clks2__97_carry__6_i_21_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    gen_idle_clks2__97_carry__6_i_22
       (.I0(slv_reg5[31]),
        .I1(slv_reg6[31]),
        .O(gen_idle_clks2__97_carry__6_i_22_n_0));
  LUT6 #(
    .INIT(64'h00000000E81717E8)) 
    gen_idle_clks2__97_carry__6_i_3
       (.I0(slv_reg5[26]),
        .I1(gen_idle_clks2__0_carry__5_n_5),
        .I2(slv_reg6[26]),
        .I3(slv_reg7[27]),
        .I4(gen_idle_clks2__97_carry__6_i_11_n_0),
        .I5(gen_idle_clks2__97_carry__6_i_12_n_0),
        .O(gen_idle_clks2__97_carry__6_i_3_n_0));
  LUT5 #(
    .INIT(32'h244DDBB2)) 
    gen_idle_clks2__97_carry__6_i_4
       (.I0(gen_idle_clks2__97_carry__6_i_13_n_0),
        .I1(gen_idle_clks2__97_carry__6_i_14_n_0),
        .I2(slv_reg7[30]),
        .I3(gen_idle_clks2__97_carry__6_i_15_n_0),
        .I4(gen_idle_clks2__97_carry__6_i_16_n_0),
        .O(gen_idle_clks2__97_carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_5
       (.I0(gen_idle_clks2__97_carry__6_i_1_n_0),
        .I1(gen_idle_clks2__97_carry__6_i_13_n_0),
        .I2(gen_idle_clks2__97_carry__6_i_17_n_0),
        .O(gen_idle_clks2__97_carry__6_i_5_n_0));
  LUT5 #(
    .INIT(32'h366C9336)) 
    gen_idle_clks2__97_carry__6_i_6
       (.I0(gen_idle_clks2__97_carry__6_i_18_n_0),
        .I1(gen_idle_clks2__97_carry__6_i_19_n_0),
        .I2(gen_idle_clks2__97_carry__6_i_20_n_0),
        .I3(slv_reg7[28]),
        .I4(gen_idle_clks2__97_carry__6_i_21_n_0),
        .O(gen_idle_clks2__97_carry__6_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_7
       (.I0(gen_idle_clks2__97_carry__6_i_3_n_0),
        .I1(gen_idle_clks2__97_carry__6_i_18_n_0),
        .I2(gen_idle_clks2__97_carry__6_i_10_n_0),
        .O(gen_idle_clks2__97_carry__6_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry__6_i_8
       (.I0(slv_reg6[29]),
        .I1(gen_idle_clks2__0_carry__6_n_6),
        .I2(slv_reg5[29]),
        .O(gen_idle_clks2__97_carry__6_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h001717FF)) 
    gen_idle_clks2__97_carry__6_i_9
       (.I0(slv_reg5[27]),
        .I1(gen_idle_clks2__0_carry__5_n_4),
        .I2(slv_reg6[27]),
        .I3(slv_reg7[28]),
        .I4(gen_idle_clks2__97_carry__6_i_20_n_0),
        .O(gen_idle_clks2__97_carry__6_i_9_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    gen_idle_clks2__97_carry_i_1
       (.I0(slv_reg7[2]),
        .I1(gen_idle_clks2__97_carry_i_8_n_0),
        .I2(slv_reg5[1]),
        .I3(gen_idle_clks2__0_carry_n_6),
        .I4(slv_reg6[1]),
        .O(gen_idle_clks2__97_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    gen_idle_clks2__97_carry_i_2
       (.I0(slv_reg6[1]),
        .I1(gen_idle_clks2__0_carry_n_6),
        .I2(slv_reg5[1]),
        .I3(gen_idle_clks2__97_carry_i_8_n_0),
        .I4(slv_reg7[2]),
        .O(gen_idle_clks2__97_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__97_carry_i_3
       (.I0(slv_reg5[1]),
        .I1(gen_idle_clks2__0_carry_n_6),
        .I2(slv_reg6[1]),
        .I3(slv_reg7[1]),
        .O(gen_idle_clks2__97_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    gen_idle_clks2__97_carry_i_4
       (.I0(gen_idle_clks2__97_carry_i_1_n_0),
        .I1(gen_idle_clks2__97_carry_i_9_n_0),
        .I2(slv_reg6[3]),
        .I3(gen_idle_clks2__0_carry_n_4),
        .I4(slv_reg5[3]),
        .I5(slv_reg7[3]),
        .O(gen_idle_clks2__97_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    gen_idle_clks2__97_carry_i_5
       (.I0(slv_reg7[2]),
        .I1(gen_idle_clks2__97_carry_i_8_n_0),
        .I2(slv_reg6[1]),
        .I3(gen_idle_clks2__0_carry_n_6),
        .I4(slv_reg5[1]),
        .I5(slv_reg7[1]),
        .O(gen_idle_clks2__97_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    gen_idle_clks2__97_carry_i_6
       (.I0(gen_idle_clks2__97_carry_i_3_n_0),
        .I1(slv_reg6[0]),
        .I2(gen_idle_clks2__0_carry_n_7),
        .I3(slv_reg5[0]),
        .O(gen_idle_clks2__97_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    gen_idle_clks2__97_carry_i_7
       (.I0(slv_reg5[0]),
        .I1(gen_idle_clks2__0_carry_n_7),
        .I2(slv_reg6[0]),
        .I3(slv_reg7[0]),
        .O(gen_idle_clks2__97_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    gen_idle_clks2__97_carry_i_8
       (.I0(slv_reg6[2]),
        .I1(gen_idle_clks2__0_carry_n_5),
        .I2(slv_reg5[2]),
        .O(gen_idle_clks2__97_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h17)) 
    gen_idle_clks2__97_carry_i_9
       (.I0(slv_reg5[2]),
        .I1(gen_idle_clks2__0_carry_n_5),
        .I2(slv_reg6[2]),
        .O(gen_idle_clks2__97_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__0/i__carry_n_0 ,\gen_ns1_inferred__0/i__carry_n_1 ,\gen_ns1_inferred__0/i__carry_n_2 ,\gen_ns1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_gen_ns1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__0/i__carry__0 
       (.CI(\gen_ns1_inferred__0/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__0/i__carry__0_n_0 ,\gen_ns1_inferred__0/i__carry__0_n_1 ,\gen_ns1_inferred__0/i__carry__0_n_2 ,\gen_ns1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_gen_ns1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__0/i__carry__1 
       (.CI(\gen_ns1_inferred__0/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__0/i__carry__1_n_0 ,\gen_ns1_inferred__0/i__carry__1_n_1 ,\gen_ns1_inferred__0/i__carry__1_n_2 ,\gen_ns1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_gen_ns1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__0/i__carry__2 
       (.CI(\gen_ns1_inferred__0/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__0/i__carry__2_n_0 ,\gen_ns1_inferred__0/i__carry__2_n_1 ,\gen_ns1_inferred__0/i__carry__2_n_2 ,\gen_ns1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_gen_ns1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__1/i__carry_n_0 ,\gen_ns1_inferred__1/i__carry_n_1 ,\gen_ns1_inferred__1/i__carry_n_2 ,\gen_ns1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_gen_ns1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__1/i__carry__0 
       (.CI(\gen_ns1_inferred__1/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__1/i__carry__0_n_0 ,\gen_ns1_inferred__1/i__carry__0_n_1 ,\gen_ns1_inferred__1/i__carry__0_n_2 ,\gen_ns1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_gen_ns1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__1/i__carry__1 
       (.CI(\gen_ns1_inferred__1/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__1/i__carry__1_n_0 ,\gen_ns1_inferred__1/i__carry__1_n_1 ,\gen_ns1_inferred__1/i__carry__1_n_2 ,\gen_ns1_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}),
        .O(\NLW_gen_ns1_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__0_n_0,i__carry__1_i_6__0_n_0,i__carry__1_i_7__0_n_0,i__carry__1_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__1/i__carry__2 
       (.CI(\gen_ns1_inferred__1/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__1/i__carry__2_n_0 ,\gen_ns1_inferred__1/i__carry__2_n_1 ,\gen_ns1_inferred__1/i__carry__2_n_2 ,\gen_ns1_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}),
        .O(\NLW_gen_ns1_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__0_n_0,i__carry__2_i_6__0_n_0,i__carry__2_i_7__0_n_0,i__carry__2_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__2/i__carry_n_0 ,\gen_ns1_inferred__2/i__carry_n_1 ,\gen_ns1_inferred__2/i__carry_n_2 ,\gen_ns1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_gen_ns1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__2/i__carry__0 
       (.CI(\gen_ns1_inferred__2/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__2/i__carry__0_n_0 ,\gen_ns1_inferred__2/i__carry__0_n_1 ,\gen_ns1_inferred__2/i__carry__0_n_2 ,\gen_ns1_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4__1_n_0}),
        .O(\NLW_gen_ns1_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__1_n_0,i__carry__0_i_7__1_n_0,i__carry__0_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__2/i__carry__1 
       (.CI(\gen_ns1_inferred__2/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__2/i__carry__1_n_0 ,\gen_ns1_inferred__2/i__carry__1_n_1 ,\gen_ns1_inferred__2/i__carry__1_n_2 ,\gen_ns1_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}),
        .O(\NLW_gen_ns1_inferred__2/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__1_n_0,i__carry__1_i_6__1_n_0,i__carry__1_i_7__1_n_0,i__carry__1_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__2/i__carry__2 
       (.CI(\gen_ns1_inferred__2/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__2/i__carry__2_n_0 ,\gen_ns1_inferred__2/i__carry__2_n_1 ,\gen_ns1_inferred__2/i__carry__2_n_2 ,\gen_ns1_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__1_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__1_n_0,i__carry__2_i_4__1_n_0}),
        .O(\NLW_gen_ns1_inferred__2/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__1_n_0,i__carry__2_i_6__1_n_0,i__carry__2_i_7__1_n_0,i__carry__2_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__3/i__carry_n_0 ,\gen_ns1_inferred__3/i__carry_n_1 ,\gen_ns1_inferred__3/i__carry_n_2 ,\gen_ns1_inferred__3/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_gen_ns1_inferred__3/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__3/i__carry__0 
       (.CI(\gen_ns1_inferred__3/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__3/i__carry__0_n_0 ,\gen_ns1_inferred__3/i__carry__0_n_1 ,\gen_ns1_inferred__3/i__carry__0_n_2 ,\gen_ns1_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}),
        .O(\NLW_gen_ns1_inferred__3/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__2_n_0,i__carry__0_i_6__2_n_0,i__carry__0_i_7__2_n_0,i__carry__0_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__3/i__carry__1 
       (.CI(\gen_ns1_inferred__3/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__3/i__carry__1_n_0 ,\gen_ns1_inferred__3/i__carry__1_n_1 ,\gen_ns1_inferred__3/i__carry__1_n_2 ,\gen_ns1_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}),
        .O(\NLW_gen_ns1_inferred__3/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__2_n_0,i__carry__1_i_6__2_n_0,i__carry__1_i_7__2_n_0,i__carry__1_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__3/i__carry__2 
       (.CI(\gen_ns1_inferred__3/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__3/i__carry__2_n_0 ,\gen_ns1_inferred__3/i__carry__2_n_1 ,\gen_ns1_inferred__3/i__carry__2_n_2 ,\gen_ns1_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__2_n_0,i__carry__2_i_2__2_n_0,i__carry__2_i_3__2_n_0,i__carry__2_i_4__2_n_0}),
        .O(\NLW_gen_ns1_inferred__3/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__2_n_0,i__carry__2_i_6__2_n_0,i__carry__2_i_7__2_n_0,i__carry__2_i_8__2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__4/i__carry_n_0 ,\gen_ns1_inferred__4/i__carry_n_1 ,\gen_ns1_inferred__4/i__carry_n_2 ,\gen_ns1_inferred__4/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(\NLW_gen_ns1_inferred__4/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__3_n_0,i__carry_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__4/i__carry__0 
       (.CI(\gen_ns1_inferred__4/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__4/i__carry__0_n_0 ,\gen_ns1_inferred__4/i__carry__0_n_1 ,\gen_ns1_inferred__4/i__carry__0_n_2 ,\gen_ns1_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}),
        .O(\NLW_gen_ns1_inferred__4/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__3_n_0,i__carry__0_i_6__3_n_0,i__carry__0_i_7__3_n_0,i__carry__0_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__4/i__carry__1 
       (.CI(\gen_ns1_inferred__4/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__4/i__carry__1_n_0 ,\gen_ns1_inferred__4/i__carry__1_n_1 ,\gen_ns1_inferred__4/i__carry__1_n_2 ,\gen_ns1_inferred__4/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__3_n_0,i__carry__1_i_2__3_n_0,i__carry__1_i_3__3_n_0,i__carry__1_i_4__3_n_0}),
        .O(\NLW_gen_ns1_inferred__4/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__3_n_0,i__carry__1_i_6__3_n_0,i__carry__1_i_7__3_n_0,i__carry__1_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__4/i__carry__2 
       (.CI(\gen_ns1_inferred__4/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__4/i__carry__2_n_0 ,\gen_ns1_inferred__4/i__carry__2_n_1 ,\gen_ns1_inferred__4/i__carry__2_n_2 ,\gen_ns1_inferred__4/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__3_n_0,i__carry__2_i_2__3_n_0,i__carry__2_i_3__3_n_0,i__carry__2_i_4__3_n_0}),
        .O(\NLW_gen_ns1_inferred__4/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__3_n_0,i__carry__2_i_6__3_n_0,i__carry__2_i_7__3_n_0,i__carry__2_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__5/i__carry_n_0 ,\gen_ns1_inferred__5/i__carry_n_1 ,\gen_ns1_inferred__5/i__carry_n_2 ,\gen_ns1_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}),
        .O(\NLW_gen_ns1_inferred__5/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__4_n_0,i__carry_i_6__4_n_0,i__carry_i_7__4_n_0,i__carry_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__5/i__carry__0 
       (.CI(\gen_ns1_inferred__5/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__5/i__carry__0_n_0 ,\gen_ns1_inferred__5/i__carry__0_n_1 ,\gen_ns1_inferred__5/i__carry__0_n_2 ,\gen_ns1_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__4_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__4_n_0,i__carry__0_i_4__4_n_0}),
        .O(\NLW_gen_ns1_inferred__5/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__4_n_0,i__carry__0_i_6__4_n_0,i__carry__0_i_7__4_n_0,i__carry__0_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__5/i__carry__1 
       (.CI(\gen_ns1_inferred__5/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__5/i__carry__1_n_0 ,\gen_ns1_inferred__5/i__carry__1_n_1 ,\gen_ns1_inferred__5/i__carry__1_n_2 ,\gen_ns1_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__4_n_0,i__carry__1_i_2__4_n_0,i__carry__1_i_3__4_n_0,i__carry__1_i_4__4_n_0}),
        .O(\NLW_gen_ns1_inferred__5/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__4_n_0,i__carry__1_i_6__4_n_0,i__carry__1_i_7__4_n_0,i__carry__1_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__5/i__carry__2 
       (.CI(\gen_ns1_inferred__5/i__carry__1_n_0 ),
        .CO({\gen_ns1_inferred__5/i__carry__2_n_0 ,\gen_ns1_inferred__5/i__carry__2_n_1 ,\gen_ns1_inferred__5/i__carry__2_n_2 ,\gen_ns1_inferred__5/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__4_n_0,i__carry__2_i_2__4_n_0,i__carry__2_i_3__4_n_0,i__carry__2_i_4__4_n_0}),
        .O(\NLW_gen_ns1_inferred__5/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__4_n_0,i__carry__2_i_6__4_n_0,i__carry__2_i_7__4_n_0,i__carry__2_i_8__4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__6/i__carry 
       (.CI(1'b0),
        .CO({\gen_ns1_inferred__6/i__carry_n_0 ,\gen_ns1_inferred__6/i__carry_n_1 ,\gen_ns1_inferred__6/i__carry_n_2 ,\gen_ns1_inferred__6/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,i__carry_i_4__5_n_0}),
        .O(\NLW_gen_ns1_inferred__6/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__5_n_0,i__carry_i_6__5_n_0,i__carry_i_7__5_n_0,i__carry_i_8__5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__6/i__carry__0 
       (.CI(\gen_ns1_inferred__6/i__carry_n_0 ),
        .CO({\gen_ns1_inferred__6/i__carry__0_n_0 ,\gen_ns1_inferred__6/i__carry__0_n_1 ,\gen_ns1_inferred__6/i__carry__0_n_2 ,\gen_ns1_inferred__6/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__5_n_0,i__carry__0_i_2__5_n_0,i__carry__0_i_3__5_n_0,i__carry__0_i_4__5_n_0}),
        .O(\NLW_gen_ns1_inferred__6/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5__5_n_0,i__carry__0_i_6__5_n_0,i__carry__0_i_7__5_n_0,i__carry__0_i_8__5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__6/i__carry__1 
       (.CI(\gen_ns1_inferred__6/i__carry__0_n_0 ),
        .CO({\gen_ns1_inferred__6/i__carry__1_n_0 ,\gen_ns1_inferred__6/i__carry__1_n_1 ,\gen_ns1_inferred__6/i__carry__1_n_2 ,\gen_ns1_inferred__6/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__5_n_0,i__carry__1_i_2__5_n_0,i__carry__1_i_3__5_n_0,i__carry__1_i_4__5_n_0}),
        .O(\NLW_gen_ns1_inferred__6/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5__5_n_0,i__carry__1_i_6__5_n_0,i__carry__1_i_7__5_n_0,i__carry__1_i_8__5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gen_ns1_inferred__6/i__carry__2 
       (.CI(\gen_ns1_inferred__6/i__carry__1_n_0 ),
        .CO({data5,\gen_ns1_inferred__6/i__carry__2_n_1 ,\gen_ns1_inferred__6/i__carry__2_n_2 ,\gen_ns1_inferred__6/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1__5_n_0,i__carry__2_i_2__5_n_0,i__carry__2_i_3__5_n_0,i__carry__2_i_4__5_n_0}),
        .O(\NLW_gen_ns1_inferred__6/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5__5_n_0,i__carry__2_i_6__5_n_0,i__carry__2_i_7__5_n_0,i__carry__2_i_8__5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_ps[0]_i_1 
       (.I0(\gen_ps[0]_i_2_n_0 ),
        .O(gen_ns[0]));
  LUT6 #(
    .INIT(64'hFF5A0F5A0F5A0F5C)) 
    \gen_ps[0]_i_2 
       (.I0(s00_ppm_out_INST_0_i_4_n_0),
        .I1(\gen_ns1_inferred__5/i__carry__2_n_0 ),
        .I2(gen_ps[0]),
        .I3(gen_ps[3]),
        .I4(gen_ps[2]),
        .I5(gen_ps[1]),
        .O(\gen_ps[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABFFAB00)) 
    \gen_ps[1]_i_1 
       (.I0(\gen_ps[1]_i_2_n_0 ),
        .I1(\gen_ps[1]_i_3_n_0 ),
        .I2(gen_ps[2]),
        .I3(gen_ps[3]),
        .I4(\gen_ps[1]_i_4_n_0 ),
        .O(gen_ns[1]));
  LUT5 #(
    .INIT(32'h04000700)) 
    \gen_ps[1]_i_2 
       (.I0(\gen_ns1_inferred__4/i__carry__2_n_0 ),
        .I1(gen_ps[0]),
        .I2(gen_ps[1]),
        .I3(gen_ps[2]),
        .I4(\gen_ns1_inferred__3/i__carry__2_n_0 ),
        .O(\gen_ps[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55335533F0FFF000)) 
    \gen_ps[1]_i_3 
       (.I0(data5),
        .I1(\gen_ns1_inferred__2/i__carry__2_n_0 ),
        .I2(\gen_ns1_inferred__1/i__carry__2_n_0 ),
        .I3(gen_ps[0]),
        .I4(\gen_ns1_inferred__0/i__carry__2_n_0 ),
        .I5(gen_ps[1]),
        .O(\gen_ps[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h24242424AAAA24AA)) 
    \gen_ps[1]_i_4 
       (.I0(gen_ps[1]),
        .I1(gen_ps[2]),
        .I2(gen_ps[0]),
        .I3(gen_current_clk_reg[15]),
        .I4(s00_ppm_out_INST_0_i_5_n_0),
        .I5(\gen_ps[1]_i_5_n_0 ),
        .O(\gen_ps[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_ps[1]_i_5 
       (.I0(s00_ppm_out_INST_0_i_10_n_0),
        .I1(\gen_ps[1]_i_6_n_0 ),
        .I2(s00_ppm_out_INST_0_i_9_n_0),
        .I3(\gen_ps[1]_i_7_n_0 ),
        .O(\gen_ps[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_ps[1]_i_6 
       (.I0(gen_current_clk_reg[24]),
        .I1(gen_current_clk_reg[22]),
        .I2(gen_current_clk_reg[28]),
        .I3(gen_current_clk_reg[26]),
        .O(\gen_ps[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_ps[1]_i_7 
       (.I0(gen_current_clk_reg[18]),
        .I1(gen_current_clk_reg[16]),
        .I2(gen_current_clk_reg[19]),
        .I3(gen_current_clk_reg[17]),
        .O(\gen_ps[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h38083838F8F8F8C8)) 
    \gen_ps[2]_i_1 
       (.I0(\gen_ps[2]_i_2_n_0 ),
        .I1(gen_ps[3]),
        .I2(gen_ps[2]),
        .I3(s00_ppm_out_INST_0_i_4_n_0),
        .I4(gen_ps[0]),
        .I5(gen_ps[1]),
        .O(gen_ns[2]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \gen_ps[2]_i_2 
       (.I0(gen_ps[1]),
        .I1(\gen_ns1_inferred__2/i__carry__2_n_0 ),
        .I2(gen_ps[0]),
        .I3(data5),
        .O(\gen_ps[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF007E007E)) 
    \gen_ps[3]_i_1 
       (.I0(gen_ps[2]),
        .I1(gen_ps[1]),
        .I2(gen_ps[0]),
        .I3(s00_ppm_out_INST_0_i_4_n_0),
        .I4(\gen_ps[3]_i_2_n_0 ),
        .I5(gen_ps[3]),
        .O(gen_ns[3]));
  LUT6 #(
    .INIT(64'hCDFDCDFDFFFF0000)) 
    \gen_ps[3]_i_2 
       (.I0(\gen_ns1_inferred__3/i__carry__2_n_0 ),
        .I1(gen_ps[1]),
        .I2(gen_ps[0]),
        .I3(\gen_ns1_inferred__4/i__carry__2_n_0 ),
        .I4(s00_ppm_out_INST_0_i_2_n_0),
        .I5(gen_ps[2]),
        .O(\gen_ps[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_ps_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(gen_ns[0]),
        .Q(gen_ps[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_ps_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(gen_ns[1]),
        .Q(gen_ps[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_ps_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(gen_ns[2]),
        .Q(gen_ps[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \gen_ps_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(gen_ns[3]),
        .Q(gen_ps[3]),
        .R(clear));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(slv_reg4[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg4[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_10
       (.CI(i__carry_i_11_n_0),
        .CO({i__carry__0_i_10_n_0,i__carry__0_i_10_n_1,i__carry__0_i_10_n_2,i__carry__0_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_15_n_0,1'b0}),
        .O(gen_idle_clks0[12:9]),
        .S({i__carry__0_i_16_n_0,i__carry__0_i_17_n_0,gen_idle_clks2__97_carry__1_n_5,i__carry__0_i_18_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_11
       (.I0(gen_idle_clks2__97_carry__2_n_4),
        .O(i__carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_12
       (.I0(gen_idle_clks2__97_carry__3_n_7),
        .O(i__carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_13
       (.I0(gen_idle_clks2__97_carry__2_n_5),
        .O(i__carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_14
       (.I0(gen_idle_clks2__97_carry__2_n_6),
        .O(i__carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_15
       (.I0(gen_idle_clks2__97_carry__1_n_5),
        .O(i__carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_16
       (.I0(gen_idle_clks2__97_carry__2_n_7),
        .O(i__carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_17
       (.I0(gen_idle_clks2__97_carry__1_n_4),
        .O(i__carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_18
       (.I0(gen_idle_clks2__97_carry__1_n_6),
        .O(i__carry__0_i_18_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__0
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg5[15]),
        .I2(slv_reg5[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__1
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg6[15]),
        .I2(slv_reg6[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__2
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg8[15]),
        .I2(slv_reg8[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__3
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg9[15]),
        .I2(slv_reg9[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__0_i_1__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[14]),
        .I3(gen_current_clk_reg[14]),
        .I4(gen_current_clk_reg[15]),
        .I5(gen_idle_clks0[15]),
        .O(i__carry__0_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1__5
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg7[15]),
        .I2(slv_reg7[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(slv_reg4[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg4[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__0
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg5[13]),
        .I2(slv_reg5[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__1
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg6[13]),
        .I2(slv_reg6[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__2
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg8[13]),
        .I2(slv_reg8[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__3
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg9[13]),
        .I2(slv_reg9[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__0_i_2__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[12]),
        .I3(gen_current_clk_reg[12]),
        .I4(gen_current_clk_reg[13]),
        .I5(gen_idle_clks0[13]),
        .O(i__carry__0_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_2__5
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg7[13]),
        .I2(slv_reg7[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(slv_reg4[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg4[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_3__0
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg5[11]),
        .I2(slv_reg5[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_3__1
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg6[11]),
        .I2(slv_reg6[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_3__2
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg8[11]),
        .I2(slv_reg8[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_3__3
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg9[11]),
        .I2(slv_reg9[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__0_i_3__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[10]),
        .I3(gen_current_clk_reg[10]),
        .I4(gen_current_clk_reg[11]),
        .I5(gen_idle_clks0[11]),
        .O(i__carry__0_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_3__5
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg7[11]),
        .I2(slv_reg7[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(slv_reg4[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg4[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_4__0
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg5[9]),
        .I2(slv_reg5[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_4__1
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg6[9]),
        .I2(slv_reg6[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_4__2
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg8[9]),
        .I2(slv_reg8[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_4__3
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg9[9]),
        .I2(slv_reg9[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__0_i_4__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[8]),
        .I3(gen_current_clk_reg[8]),
        .I4(gen_current_clk_reg[9]),
        .I5(gen_idle_clks0[9]),
        .O(i__carry__0_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_4__5
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg7[9]),
        .I2(slv_reg7[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(gen_current_clk_reg[15]),
        .I1(slv_reg4[15]),
        .I2(gen_current_clk_reg[14]),
        .I3(slv_reg4[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__0
       (.I0(slv_reg5[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg5[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__1
       (.I0(slv_reg6[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg6[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__2
       (.I0(slv_reg8[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg8[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__3
       (.I0(slv_reg9[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg9[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__0_i_5__4
       (.I0(gen_idle_clks0[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(gen_idle_clks0[14]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5__5
       (.I0(slv_reg7[15]),
        .I1(gen_current_clk_reg[15]),
        .I2(slv_reg7[14]),
        .I3(gen_current_clk_reg[14]),
        .O(i__carry__0_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(gen_current_clk_reg[13]),
        .I1(slv_reg4[13]),
        .I2(gen_current_clk_reg[12]),
        .I3(slv_reg4[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__0
       (.I0(slv_reg5[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg5[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__1
       (.I0(slv_reg6[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg6[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__2
       (.I0(slv_reg8[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg8[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__3
       (.I0(slv_reg9[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg9[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__0_i_6__4
       (.I0(gen_idle_clks0[12]),
        .I1(gen_current_clk_reg[12]),
        .I2(gen_idle_clks0[13]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[13]),
        .O(i__carry__0_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6__5
       (.I0(slv_reg7[13]),
        .I1(gen_current_clk_reg[13]),
        .I2(slv_reg7[12]),
        .I3(gen_current_clk_reg[12]),
        .O(i__carry__0_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(gen_current_clk_reg[11]),
        .I1(slv_reg4[11]),
        .I2(gen_current_clk_reg[10]),
        .I3(slv_reg4[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__0
       (.I0(slv_reg5[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg5[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__1
       (.I0(slv_reg6[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg6[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__2
       (.I0(slv_reg8[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg8[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__3
       (.I0(slv_reg9[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg9[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__0_i_7__4
       (.I0(gen_idle_clks0[10]),
        .I1(gen_current_clk_reg[10]),
        .I2(gen_idle_clks0[11]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[11]),
        .O(i__carry__0_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7__5
       (.I0(slv_reg7[11]),
        .I1(gen_current_clk_reg[11]),
        .I2(slv_reg7[10]),
        .I3(gen_current_clk_reg[10]),
        .O(i__carry__0_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(gen_current_clk_reg[9]),
        .I1(slv_reg4[9]),
        .I2(gen_current_clk_reg[8]),
        .I3(slv_reg4[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__0
       (.I0(slv_reg5[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg5[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__1
       (.I0(slv_reg6[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg6[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__2
       (.I0(slv_reg8[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg8[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__3
       (.I0(slv_reg9[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg9[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__0_i_8__4
       (.I0(gen_idle_clks0[8]),
        .I1(gen_current_clk_reg[8]),
        .I2(gen_idle_clks0[9]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[9]),
        .O(i__carry__0_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8__5
       (.I0(slv_reg7[9]),
        .I1(gen_current_clk_reg[9]),
        .I2(slv_reg7[8]),
        .I3(gen_current_clk_reg[8]),
        .O(i__carry__0_i_8__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__0_i_9
       (.CI(i__carry__0_i_10_n_0),
        .CO({i__carry__0_i_9_n_0,i__carry__0_i_9_n_1,i__carry__0_i_9_n_2,i__carry__0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_11_n_0,1'b0,1'b0}),
        .O(gen_idle_clks0[16:13]),
        .S({i__carry__0_i_12_n_0,gen_idle_clks2__97_carry__2_n_4,i__carry__0_i_13_n_0,i__carry__0_i_14_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(slv_reg4[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg4[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_10
       (.CI(i__carry__0_i_9_n_0),
        .CO({i__carry__1_i_10_n_0,i__carry__1_i_10_n_1,i__carry__1_i_10_n_2,i__carry__1_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_15_n_0,i__carry__1_i_16_n_0,i__carry__1_i_17_n_0,i__carry__1_i_18_n_0}),
        .O(gen_idle_clks0[20:17]),
        .S({gen_idle_clks2__97_carry__4_n_7,gen_idle_clks2__97_carry__3_n_4,gen_idle_clks2__97_carry__3_n_5,gen_idle_clks2__97_carry__3_n_6}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_11
       (.I0(gen_idle_clks2__97_carry__5_n_7),
        .O(i__carry__1_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_12
       (.I0(gen_idle_clks2__97_carry__4_n_4),
        .O(i__carry__1_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_13
       (.I0(gen_idle_clks2__97_carry__4_n_5),
        .O(i__carry__1_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_14
       (.I0(gen_idle_clks2__97_carry__4_n_6),
        .O(i__carry__1_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_15
       (.I0(gen_idle_clks2__97_carry__4_n_7),
        .O(i__carry__1_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_16
       (.I0(gen_idle_clks2__97_carry__3_n_4),
        .O(i__carry__1_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_17
       (.I0(gen_idle_clks2__97_carry__3_n_5),
        .O(i__carry__1_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_18
       (.I0(gen_idle_clks2__97_carry__3_n_6),
        .O(i__carry__1_i_18_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_1__0
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg5[23]),
        .I2(slv_reg5[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_1__1
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg6[23]),
        .I2(slv_reg6[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_1__2
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg8[23]),
        .I2(slv_reg8[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_1__3
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg9[23]),
        .I2(slv_reg9[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0100000003030100)) 
    i__carry__1_i_1__4
       (.I0(gen_current_clk_reg[22]),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(gen_idle_clks0[22]),
        .I4(gen_idle_clks0[23]),
        .I5(gen_current_clk_reg[23]),
        .O(i__carry__1_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_1__5
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg7[23]),
        .I2(slv_reg7[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(slv_reg4[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg4[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_2__0
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg5[21]),
        .I2(slv_reg5[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_2__1
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg6[21]),
        .I2(slv_reg6[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_2__2
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg8[21]),
        .I2(slv_reg8[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_2__3
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg9[21]),
        .I2(slv_reg9[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__1_i_2__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[20]),
        .I3(gen_current_clk_reg[20]),
        .I4(gen_current_clk_reg[21]),
        .I5(gen_idle_clks0[21]),
        .O(i__carry__1_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_2__5
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg7[21]),
        .I2(slv_reg7[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(slv_reg4[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg4[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_3__0
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg5[19]),
        .I2(slv_reg5[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_3__1
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg6[19]),
        .I2(slv_reg6[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_3__2
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg8[19]),
        .I2(slv_reg8[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_3__3
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg9[19]),
        .I2(slv_reg9[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__1_i_3__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[18]),
        .I3(gen_current_clk_reg[18]),
        .I4(gen_current_clk_reg[19]),
        .I5(gen_idle_clks0[19]),
        .O(i__carry__1_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_3__5
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg7[19]),
        .I2(slv_reg7[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(slv_reg4[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg4[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_4__0
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg5[17]),
        .I2(slv_reg5[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_4__1
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg6[17]),
        .I2(slv_reg6[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_4__2
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg8[17]),
        .I2(slv_reg8[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_4__3
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg9[17]),
        .I2(slv_reg9[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h0100000003030100)) 
    i__carry__1_i_4__4
       (.I0(gen_current_clk_reg[16]),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(gen_idle_clks0[16]),
        .I4(gen_idle_clks0[17]),
        .I5(gen_current_clk_reg[17]),
        .O(i__carry__1_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__1_i_4__5
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg7[17]),
        .I2(slv_reg7[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(gen_current_clk_reg[23]),
        .I1(slv_reg4[23]),
        .I2(gen_current_clk_reg[22]),
        .I3(slv_reg4[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__0
       (.I0(slv_reg5[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg5[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__1
       (.I0(slv_reg6[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg6[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__2
       (.I0(slv_reg8[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg8[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__3
       (.I0(slv_reg9[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg9[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__1_i_5__4
       (.I0(gen_idle_clks0[22]),
        .I1(gen_current_clk_reg[22]),
        .I2(gen_idle_clks0[23]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[23]),
        .O(i__carry__1_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5__5
       (.I0(slv_reg7[23]),
        .I1(gen_current_clk_reg[23]),
        .I2(slv_reg7[22]),
        .I3(gen_current_clk_reg[22]),
        .O(i__carry__1_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(gen_current_clk_reg[21]),
        .I1(slv_reg4[21]),
        .I2(gen_current_clk_reg[20]),
        .I3(slv_reg4[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__0
       (.I0(slv_reg5[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg5[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__1
       (.I0(slv_reg6[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg6[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__2
       (.I0(slv_reg8[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg8[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__3
       (.I0(slv_reg9[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg9[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__1_i_6__4
       (.I0(gen_idle_clks0[20]),
        .I1(gen_current_clk_reg[20]),
        .I2(gen_idle_clks0[21]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[21]),
        .O(i__carry__1_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6__5
       (.I0(slv_reg7[21]),
        .I1(gen_current_clk_reg[21]),
        .I2(slv_reg7[20]),
        .I3(gen_current_clk_reg[20]),
        .O(i__carry__1_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(gen_current_clk_reg[19]),
        .I1(slv_reg4[19]),
        .I2(gen_current_clk_reg[18]),
        .I3(slv_reg4[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__0
       (.I0(slv_reg5[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg5[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__1
       (.I0(slv_reg6[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg6[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__2
       (.I0(slv_reg8[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg8[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__3
       (.I0(slv_reg9[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg9[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__1_i_7__4
       (.I0(gen_idle_clks0[18]),
        .I1(gen_current_clk_reg[18]),
        .I2(gen_idle_clks0[19]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[19]),
        .O(i__carry__1_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7__5
       (.I0(slv_reg7[19]),
        .I1(gen_current_clk_reg[19]),
        .I2(slv_reg7[18]),
        .I3(gen_current_clk_reg[18]),
        .O(i__carry__1_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(gen_current_clk_reg[17]),
        .I1(slv_reg4[17]),
        .I2(gen_current_clk_reg[16]),
        .I3(slv_reg4[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__0
       (.I0(slv_reg5[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg5[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__1
       (.I0(slv_reg6[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg6[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__2
       (.I0(slv_reg8[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg8[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__3
       (.I0(slv_reg9[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg9[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__1_i_8__4
       (.I0(gen_idle_clks0[16]),
        .I1(gen_current_clk_reg[16]),
        .I2(gen_idle_clks0[17]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[17]),
        .O(i__carry__1_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8__5
       (.I0(slv_reg7[17]),
        .I1(gen_current_clk_reg[17]),
        .I2(slv_reg7[16]),
        .I3(gen_current_clk_reg[16]),
        .O(i__carry__1_i_8__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__1_i_9
       (.CI(i__carry__1_i_10_n_0),
        .CO({i__carry__1_i_9_n_0,i__carry__1_i_9_n_1,i__carry__1_i_9_n_2,i__carry__1_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gen_idle_clks0[24:21]),
        .S({i__carry__1_i_11_n_0,i__carry__1_i_12_n_0,i__carry__1_i_13_n_0,i__carry__1_i_14_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_1
       (.I0(slv_reg4[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg4[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_10
       (.CI(i__carry__1_i_9_n_0),
        .CO({i__carry__2_i_10_n_0,i__carry__2_i_10_n_1,i__carry__2_i_10_n_2,i__carry__2_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gen_idle_clks0[28:25]),
        .S({i__carry__2_i_14_n_0,i__carry__2_i_15_n_0,i__carry__2_i_16_n_0,i__carry__2_i_17_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_11
       (.I0(gen_idle_clks2__97_carry__6_n_4),
        .O(i__carry__2_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_12
       (.I0(gen_idle_clks2__97_carry__6_n_5),
        .O(i__carry__2_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_13
       (.I0(gen_idle_clks2__97_carry__6_n_6),
        .O(i__carry__2_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_14
       (.I0(gen_idle_clks2__97_carry__6_n_7),
        .O(i__carry__2_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_15
       (.I0(gen_idle_clks2__97_carry__5_n_4),
        .O(i__carry__2_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_16
       (.I0(gen_idle_clks2__97_carry__5_n_5),
        .O(i__carry__2_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_17
       (.I0(gen_idle_clks2__97_carry__5_n_6),
        .O(i__carry__2_i_17_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__0
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg5[31]),
        .I2(slv_reg5[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__1
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg6[31]),
        .I2(slv_reg6[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__2
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg8[31]),
        .I2(slv_reg8[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__3
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg9[31]),
        .I2(slv_reg9[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__2_i_1__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[30]),
        .I3(gen_current_clk_reg[30]),
        .I4(gen_current_clk_reg[31]),
        .I5(gen_idle_clks0[31]),
        .O(i__carry__2_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_1__5
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg7[31]),
        .I2(slv_reg7[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_2
       (.I0(slv_reg4[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg4[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_2__0
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg5[29]),
        .I2(slv_reg5[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_2__1
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg6[29]),
        .I2(slv_reg6[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_2__2
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg8[29]),
        .I2(slv_reg8[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_2__3
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg9[29]),
        .I2(slv_reg9[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__2_i_2__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[28]),
        .I3(gen_current_clk_reg[28]),
        .I4(gen_current_clk_reg[29]),
        .I5(gen_idle_clks0[29]),
        .O(i__carry__2_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_2__5
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg7[29]),
        .I2(slv_reg7[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_3
       (.I0(slv_reg4[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg4[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_3__0
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg5[27]),
        .I2(slv_reg5[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_3__1
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg6[27]),
        .I2(slv_reg6[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_3__2
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg8[27]),
        .I2(slv_reg8[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_3__3
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg9[27]),
        .I2(slv_reg9[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry__2_i_3__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[26]),
        .I3(gen_current_clk_reg[26]),
        .I4(gen_current_clk_reg[27]),
        .I5(gen_idle_clks0[27]),
        .O(i__carry__2_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_3__5
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg7[27]),
        .I2(slv_reg7[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_4
       (.I0(slv_reg4[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg4[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_4__0
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg5[25]),
        .I2(slv_reg5[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_4__1
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg6[25]),
        .I2(slv_reg6[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_4__2
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg8[25]),
        .I2(slv_reg8[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_4__3
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg9[25]),
        .I2(slv_reg9[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h0100000003030100)) 
    i__carry__2_i_4__4
       (.I0(gen_current_clk_reg[24]),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(gen_idle_clks0[24]),
        .I4(gen_idle_clks0[25]),
        .I5(gen_current_clk_reg[25]),
        .O(i__carry__2_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__2_i_4__5
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg7[25]),
        .I2(slv_reg7[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(gen_current_clk_reg[31]),
        .I1(slv_reg4[31]),
        .I2(gen_current_clk_reg[30]),
        .I3(slv_reg4[30]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__0
       (.I0(slv_reg5[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg5[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__1
       (.I0(slv_reg6[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg6[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__2
       (.I0(slv_reg8[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg8[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__3
       (.I0(slv_reg9[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg9[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__2_i_5__4
       (.I0(gen_idle_clks0[30]),
        .I1(gen_current_clk_reg[30]),
        .I2(gen_idle_clks0[31]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[31]),
        .O(i__carry__2_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5__5
       (.I0(slv_reg7[31]),
        .I1(gen_current_clk_reg[31]),
        .I2(slv_reg7[30]),
        .I3(gen_current_clk_reg[30]),
        .O(i__carry__2_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(gen_current_clk_reg[29]),
        .I1(slv_reg4[29]),
        .I2(gen_current_clk_reg[28]),
        .I3(slv_reg4[28]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__0
       (.I0(slv_reg5[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg5[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__1
       (.I0(slv_reg6[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg6[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__2
       (.I0(slv_reg8[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg8[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__3
       (.I0(slv_reg9[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg9[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__2_i_6__4
       (.I0(gen_idle_clks0[28]),
        .I1(gen_current_clk_reg[28]),
        .I2(gen_idle_clks0[29]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[29]),
        .O(i__carry__2_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6__5
       (.I0(slv_reg7[29]),
        .I1(gen_current_clk_reg[29]),
        .I2(slv_reg7[28]),
        .I3(gen_current_clk_reg[28]),
        .O(i__carry__2_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(gen_current_clk_reg[27]),
        .I1(slv_reg4[27]),
        .I2(gen_current_clk_reg[26]),
        .I3(slv_reg4[26]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__0
       (.I0(slv_reg5[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg5[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__1
       (.I0(slv_reg6[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg6[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__2
       (.I0(slv_reg8[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg8[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__3
       (.I0(slv_reg9[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg9[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__2_i_7__4
       (.I0(gen_idle_clks0[26]),
        .I1(gen_current_clk_reg[26]),
        .I2(gen_idle_clks0[27]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[27]),
        .O(i__carry__2_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7__5
       (.I0(slv_reg7[27]),
        .I1(gen_current_clk_reg[27]),
        .I2(slv_reg7[26]),
        .I3(gen_current_clk_reg[26]),
        .O(i__carry__2_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(gen_current_clk_reg[25]),
        .I1(slv_reg4[25]),
        .I2(gen_current_clk_reg[24]),
        .I3(slv_reg4[24]),
        .O(i__carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__0
       (.I0(slv_reg5[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg5[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__1
       (.I0(slv_reg6[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg6[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__2
       (.I0(slv_reg8[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg8[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__3
       (.I0(slv_reg9[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg9[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry__2_i_8__4
       (.I0(gen_idle_clks0[24]),
        .I1(gen_current_clk_reg[24]),
        .I2(gen_idle_clks0[25]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[25]),
        .O(i__carry__2_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8__5
       (.I0(slv_reg7[25]),
        .I1(gen_current_clk_reg[25]),
        .I2(slv_reg7[24]),
        .I3(gen_current_clk_reg[24]),
        .O(i__carry__2_i_8__5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry__2_i_9
       (.CI(i__carry__2_i_10_n_0),
        .CO({NLW_i__carry__2_i_9_CO_UNCONNECTED[3:2],i__carry__2_i_9_n_2,i__carry__2_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__2_i_9_O_UNCONNECTED[3],gen_idle_clks0[31:29]}),
        .S({1'b0,i__carry__2_i_11_n_0,i__carry__2_i_12_n_0,i__carry__2_i_13_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(slv_reg4[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg4[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_10
       (.I0(gen_idle_clks2__97_carry__5_n_4),
        .I1(gen_idle_clks2__97_carry__5_n_7),
        .I2(gen_idle_clks2__97_carry__6_n_6),
        .I3(i__carry_i_16_n_0),
        .I4(i__carry_i_17_n_0),
        .O(i__carry_i_10_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_11
       (.CI(i__carry_i_12_n_0),
        .CO({i__carry_i_11_n_0,i__carry_i_11_n_1,i__carry_i_11_n_2,i__carry_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_18_n_0,1'b0,1'b0}),
        .O(gen_idle_clks0[8:5]),
        .S({i__carry_i_19_n_0,gen_idle_clks2__97_carry__0_n_4,i__carry_i_20_n_0,i__carry_i_21_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 i__carry_i_12
       (.CI(1'b0),
        .CO({i__carry_i_12_n_0,i__carry_i_12_n_1,i__carry_i_12_n_2,i__carry_i_12_n_3}),
        .CYINIT(i__carry_i_22_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gen_idle_clks0[4:1]),
        .S({i__carry_i_23_n_0,i__carry_i_24_n_0,i__carry_i_25_n_0,i__carry_i_26_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_13
       (.I0(gen_idle_clks2__97_carry__1_n_4),
        .I1(gen_idle_clks2__97_carry__2_n_7),
        .I2(gen_idle_clks2__97_carry__2_n_6),
        .I3(gen_idle_clks2__97_carry__2_n_5),
        .O(i__carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    i__carry_i_14
       (.I0(gen_idle_clks2__97_carry__1_n_6),
        .I1(gen_idle_clks2__97_carry__1_n_7),
        .I2(gen_idle_clks2__97_carry__0_n_4),
        .I3(gen_idle_clks2__97_carry__1_n_5),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    i__carry_i_15
       (.I0(gen_idle_clks2__97_carry__3_n_6),
        .I1(gen_idle_clks2__97_carry__3_n_5),
        .I2(gen_idle_clks2__97_carry__3_n_4),
        .I3(gen_idle_clks2__97_carry__4_n_7),
        .O(i__carry_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_16
       (.I0(gen_idle_clks2__97_carry__4_n_5),
        .I1(gen_idle_clks2__97_carry__6_n_7),
        .I2(gen_idle_clks2__97_carry__4_n_4),
        .I3(gen_idle_clks2__97_carry__6_n_5),
        .O(i__carry_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_17
       (.I0(gen_idle_clks2__97_carry__5_n_6),
        .I1(gen_idle_clks2__97_carry__5_n_5),
        .I2(gen_idle_clks2__97_carry__4_n_6),
        .I3(gen_idle_clks2__97_carry__6_n_4),
        .O(i__carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_18
       (.I0(gen_idle_clks2__97_carry__0_n_4),
        .O(i__carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_19
       (.I0(gen_idle_clks2__97_carry__1_n_7),
        .O(i__carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__0
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg5[7]),
        .I2(slv_reg5[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__1
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg6[7]),
        .I2(slv_reg6[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__2
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg8[7]),
        .I2(slv_reg8[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__3
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg9[7]),
        .I2(slv_reg9[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0100000003030100)) 
    i__carry_i_1__4
       (.I0(gen_current_clk_reg[6]),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(gen_idle_clks0[6]),
        .I4(gen_idle_clks0[7]),
        .I5(gen_current_clk_reg[7]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__5
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg7[7]),
        .I2(slv_reg7[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_1__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(slv_reg4[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg4[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_20
       (.I0(gen_idle_clks2__97_carry__0_n_5),
        .O(i__carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_21
       (.I0(gen_idle_clks2__97_carry__0_n_6),
        .O(i__carry_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_22
       (.I0(gen_idle_clks2__97_carry_n_7),
        .O(i__carry_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_23
       (.I0(gen_idle_clks2__97_carry__0_n_7),
        .O(i__carry_i_23_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_24
       (.I0(gen_idle_clks2__97_carry_n_4),
        .O(i__carry_i_24_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_25
       (.I0(gen_idle_clks2__97_carry_n_5),
        .O(i__carry_i_25_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_26
       (.I0(gen_idle_clks2__97_carry_n_6),
        .O(i__carry_i_26_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__0
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg5[5]),
        .I2(slv_reg5[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__1
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg6[5]),
        .I2(slv_reg6[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__2
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg8[5]),
        .I2(slv_reg8[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__3
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg9[5]),
        .I2(slv_reg9[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0100010003010100)) 
    i__carry_i_2__4
       (.I0(gen_current_clk_reg[5]),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(gen_idle_clks0[5]),
        .I4(gen_idle_clks0[4]),
        .I5(gen_current_clk_reg[4]),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_2__5
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg7[5]),
        .I2(slv_reg7[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(slv_reg4[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg4[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__0
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg5[3]),
        .I2(slv_reg5[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__1
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg6[3]),
        .I2(slv_reg6[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__2
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg8[3]),
        .I2(slv_reg8[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__3
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg9[3]),
        .I2(slv_reg9[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry_i_3__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks0[2]),
        .I3(gen_current_clk_reg[2]),
        .I4(gen_current_clk_reg[3]),
        .I5(gen_idle_clks0[3]),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_3__5
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg7[3]),
        .I2(slv_reg7[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_3__5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(slv_reg4[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg4[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__0
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg5[1]),
        .I2(slv_reg5[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__1
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg6[1]),
        .I2(slv_reg6[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__2
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg8[1]),
        .I2(slv_reg8[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__3
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg9[1]),
        .I2(slv_reg9[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h0010111100000010)) 
    i__carry_i_4__4
       (.I0(i__carry_i_9_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(gen_idle_clks2__97_carry_n_7),
        .I3(gen_current_clk_reg[0]),
        .I4(gen_current_clk_reg[1]),
        .I5(gen_idle_clks0[1]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_4__5
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg7[1]),
        .I2(slv_reg7[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_4__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(gen_current_clk_reg[7]),
        .I1(slv_reg4[7]),
        .I2(gen_current_clk_reg[6]),
        .I3(slv_reg4[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(slv_reg5[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg5[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(slv_reg6[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg6[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(slv_reg8[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg8[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__3
       (.I0(slv_reg9[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg9[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry_i_5__4
       (.I0(gen_idle_clks0[6]),
        .I1(gen_current_clk_reg[6]),
        .I2(gen_idle_clks0[7]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[7]),
        .O(i__carry_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__5
       (.I0(slv_reg7[7]),
        .I1(gen_current_clk_reg[7]),
        .I2(slv_reg7[6]),
        .I3(gen_current_clk_reg[6]),
        .O(i__carry_i_5__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(gen_current_clk_reg[5]),
        .I1(slv_reg4[5]),
        .I2(gen_current_clk_reg[4]),
        .I3(slv_reg4[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(slv_reg5[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg5[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(slv_reg6[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg6[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(slv_reg8[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg8[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__3
       (.I0(slv_reg9[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg9[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry_i_6__4
       (.I0(gen_idle_clks0[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(gen_idle_clks0[4]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[4]),
        .O(i__carry_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__5
       (.I0(slv_reg7[5]),
        .I1(gen_current_clk_reg[5]),
        .I2(slv_reg7[4]),
        .I3(gen_current_clk_reg[4]),
        .O(i__carry_i_6__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(gen_current_clk_reg[3]),
        .I1(slv_reg4[3]),
        .I2(gen_current_clk_reg[2]),
        .I3(slv_reg4[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(slv_reg5[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg5[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(slv_reg6[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg6[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(slv_reg8[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg8[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__3
       (.I0(slv_reg9[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg9[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_7__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry_i_7__4
       (.I0(gen_idle_clks0[2]),
        .I1(gen_current_clk_reg[2]),
        .I2(gen_idle_clks0[3]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[3]),
        .O(i__carry_i_7__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__5
       (.I0(slv_reg7[3]),
        .I1(gen_current_clk_reg[3]),
        .I2(slv_reg7[2]),
        .I3(gen_current_clk_reg[2]),
        .O(i__carry_i_7__5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(gen_current_clk_reg[1]),
        .I1(slv_reg4[1]),
        .I2(gen_current_clk_reg[0]),
        .I3(slv_reg4[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(slv_reg5[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg5[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(slv_reg6[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg6[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(slv_reg8[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg8[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__3
       (.I0(slv_reg9[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg9[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h0000009033333309)) 
    i__carry_i_8__4
       (.I0(gen_idle_clks2__97_carry_n_7),
        .I1(gen_current_clk_reg[0]),
        .I2(gen_idle_clks0[1]),
        .I3(i__carry_i_10_n_0),
        .I4(i__carry_i_9_n_0),
        .I5(gen_current_clk_reg[1]),
        .O(i__carry_i_8__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__5
       (.I0(slv_reg7[1]),
        .I1(gen_current_clk_reg[1]),
        .I2(slv_reg7[0]),
        .I3(gen_current_clk_reg[0]),
        .O(i__carry_i_8__5_n_0));
  LUT5 #(
    .INIT(32'h0000FF8A)) 
    i__carry_i_9
       (.I0(gen_idle_clks2__97_carry__2_n_4),
        .I1(i__carry_i_13_n_0),
        .I2(i__carry_i_14_n_0),
        .I3(gen_idle_clks2__97_carry__3_n_7),
        .I4(i__carry_i_15_n_0),
        .O(i__carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(c0_u[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(c0_u[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(c0_u[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(c0_u[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S(c0_u[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S(c0_u[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S(c0_u[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S(c0_u[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],plusOp[31:29]}),
        .S({1'b0,c0_u[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\c1_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({\c1_u_reg_n_0_[4] ,\c1_u_reg_n_0_[3] ,\c1_u_reg_n_0_[2] ,\c1_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({\c1_u_reg_n_0_[8] ,\c1_u_reg_n_0_[7] ,\c1_u_reg_n_0_[6] ,\c1_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({\c1_u_reg_n_0_[12] ,\c1_u_reg_n_0_[11] ,\c1_u_reg_n_0_[10] ,\c1_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .S({\c1_u_reg_n_0_[16] ,\c1_u_reg_n_0_[15] ,\c1_u_reg_n_0_[14] ,\c1_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .S({\c1_u_reg_n_0_[20] ,\c1_u_reg_n_0_[19] ,\c1_u_reg_n_0_[18] ,\c1_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__4_n_4 ,\plusOp_inferred__0/i__carry__4_n_5 ,\plusOp_inferred__0/i__carry__4_n_6 ,\plusOp_inferred__0/i__carry__4_n_7 }),
        .S({\c1_u_reg_n_0_[24] ,\c1_u_reg_n_0_[23] ,\c1_u_reg_n_0_[22] ,\c1_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__5_n_4 ,\plusOp_inferred__0/i__carry__5_n_5 ,\plusOp_inferred__0/i__carry__5_n_6 ,\plusOp_inferred__0/i__carry__5_n_7 }),
        .S({\c1_u_reg_n_0_[28] ,\c1_u_reg_n_0_[27] ,\c1_u_reg_n_0_[26] ,\c1_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__0/i__carry__6_n_5 ,\plusOp_inferred__0/i__carry__6_n_6 ,\plusOp_inferred__0/i__carry__6_n_7 }),
        .S({1'b0,\c1_u_reg_n_0_[31] ,\c1_u_reg_n_0_[30] ,\c1_u_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__1/i__carry_n_0 ,\plusOp_inferred__1/i__carry_n_1 ,\plusOp_inferred__1/i__carry_n_2 ,\plusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(\c2_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry_n_4 ,\plusOp_inferred__1/i__carry_n_5 ,\plusOp_inferred__1/i__carry_n_6 ,\plusOp_inferred__1/i__carry_n_7 }),
        .S({\c2_u_reg_n_0_[4] ,\c2_u_reg_n_0_[3] ,\c2_u_reg_n_0_[2] ,\c2_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__0 
       (.CI(\plusOp_inferred__1/i__carry_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__0_n_0 ,\plusOp_inferred__1/i__carry__0_n_1 ,\plusOp_inferred__1/i__carry__0_n_2 ,\plusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__0_n_4 ,\plusOp_inferred__1/i__carry__0_n_5 ,\plusOp_inferred__1/i__carry__0_n_6 ,\plusOp_inferred__1/i__carry__0_n_7 }),
        .S({\c2_u_reg_n_0_[8] ,\c2_u_reg_n_0_[7] ,\c2_u_reg_n_0_[6] ,\c2_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__1 
       (.CI(\plusOp_inferred__1/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__1_n_0 ,\plusOp_inferred__1/i__carry__1_n_1 ,\plusOp_inferred__1/i__carry__1_n_2 ,\plusOp_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__1_n_4 ,\plusOp_inferred__1/i__carry__1_n_5 ,\plusOp_inferred__1/i__carry__1_n_6 ,\plusOp_inferred__1/i__carry__1_n_7 }),
        .S({\c2_u_reg_n_0_[12] ,\c2_u_reg_n_0_[11] ,\c2_u_reg_n_0_[10] ,\c2_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__2 
       (.CI(\plusOp_inferred__1/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__2_n_0 ,\plusOp_inferred__1/i__carry__2_n_1 ,\plusOp_inferred__1/i__carry__2_n_2 ,\plusOp_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__2_n_4 ,\plusOp_inferred__1/i__carry__2_n_5 ,\plusOp_inferred__1/i__carry__2_n_6 ,\plusOp_inferred__1/i__carry__2_n_7 }),
        .S({\c2_u_reg_n_0_[16] ,\c2_u_reg_n_0_[15] ,\c2_u_reg_n_0_[14] ,\c2_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__3 
       (.CI(\plusOp_inferred__1/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__3_n_0 ,\plusOp_inferred__1/i__carry__3_n_1 ,\plusOp_inferred__1/i__carry__3_n_2 ,\plusOp_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__3_n_4 ,\plusOp_inferred__1/i__carry__3_n_5 ,\plusOp_inferred__1/i__carry__3_n_6 ,\plusOp_inferred__1/i__carry__3_n_7 }),
        .S({\c2_u_reg_n_0_[20] ,\c2_u_reg_n_0_[19] ,\c2_u_reg_n_0_[18] ,\c2_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__4 
       (.CI(\plusOp_inferred__1/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__4_n_0 ,\plusOp_inferred__1/i__carry__4_n_1 ,\plusOp_inferred__1/i__carry__4_n_2 ,\plusOp_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__4_n_4 ,\plusOp_inferred__1/i__carry__4_n_5 ,\plusOp_inferred__1/i__carry__4_n_6 ,\plusOp_inferred__1/i__carry__4_n_7 }),
        .S({\c2_u_reg_n_0_[24] ,\c2_u_reg_n_0_[23] ,\c2_u_reg_n_0_[22] ,\c2_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__5 
       (.CI(\plusOp_inferred__1/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__1/i__carry__5_n_0 ,\plusOp_inferred__1/i__carry__5_n_1 ,\plusOp_inferred__1/i__carry__5_n_2 ,\plusOp_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__1/i__carry__5_n_4 ,\plusOp_inferred__1/i__carry__5_n_5 ,\plusOp_inferred__1/i__carry__5_n_6 ,\plusOp_inferred__1/i__carry__5_n_7 }),
        .S({\c2_u_reg_n_0_[28] ,\c2_u_reg_n_0_[27] ,\c2_u_reg_n_0_[26] ,\c2_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__1/i__carry__6 
       (.CI(\plusOp_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__1/i__carry__6_n_2 ,\plusOp_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__1/i__carry__6_n_5 ,\plusOp_inferred__1/i__carry__6_n_6 ,\plusOp_inferred__1/i__carry__6_n_7 }),
        .S({1'b0,\c2_u_reg_n_0_[31] ,\c2_u_reg_n_0_[30] ,\c2_u_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__2/i__carry_n_0 ,\plusOp_inferred__2/i__carry_n_1 ,\plusOp_inferred__2/i__carry_n_2 ,\plusOp_inferred__2/i__carry_n_3 }),
        .CYINIT(\c3_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry_n_4 ,\plusOp_inferred__2/i__carry_n_5 ,\plusOp_inferred__2/i__carry_n_6 ,\plusOp_inferred__2/i__carry_n_7 }),
        .S({\c3_u_reg_n_0_[4] ,\c3_u_reg_n_0_[3] ,\c3_u_reg_n_0_[2] ,\c3_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__0 
       (.CI(\plusOp_inferred__2/i__carry_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__0_n_0 ,\plusOp_inferred__2/i__carry__0_n_1 ,\plusOp_inferred__2/i__carry__0_n_2 ,\plusOp_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__0_n_4 ,\plusOp_inferred__2/i__carry__0_n_5 ,\plusOp_inferred__2/i__carry__0_n_6 ,\plusOp_inferred__2/i__carry__0_n_7 }),
        .S({\c3_u_reg_n_0_[8] ,\c3_u_reg_n_0_[7] ,\c3_u_reg_n_0_[6] ,\c3_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__1 
       (.CI(\plusOp_inferred__2/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__1_n_0 ,\plusOp_inferred__2/i__carry__1_n_1 ,\plusOp_inferred__2/i__carry__1_n_2 ,\plusOp_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__1_n_4 ,\plusOp_inferred__2/i__carry__1_n_5 ,\plusOp_inferred__2/i__carry__1_n_6 ,\plusOp_inferred__2/i__carry__1_n_7 }),
        .S({\c3_u_reg_n_0_[12] ,\c3_u_reg_n_0_[11] ,\c3_u_reg_n_0_[10] ,\c3_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__2 
       (.CI(\plusOp_inferred__2/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__2_n_0 ,\plusOp_inferred__2/i__carry__2_n_1 ,\plusOp_inferred__2/i__carry__2_n_2 ,\plusOp_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__2_n_4 ,\plusOp_inferred__2/i__carry__2_n_5 ,\plusOp_inferred__2/i__carry__2_n_6 ,\plusOp_inferred__2/i__carry__2_n_7 }),
        .S({\c3_u_reg_n_0_[16] ,\c3_u_reg_n_0_[15] ,\c3_u_reg_n_0_[14] ,\c3_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__3 
       (.CI(\plusOp_inferred__2/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__3_n_0 ,\plusOp_inferred__2/i__carry__3_n_1 ,\plusOp_inferred__2/i__carry__3_n_2 ,\plusOp_inferred__2/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__3_n_4 ,\plusOp_inferred__2/i__carry__3_n_5 ,\plusOp_inferred__2/i__carry__3_n_6 ,\plusOp_inferred__2/i__carry__3_n_7 }),
        .S({\c3_u_reg_n_0_[20] ,\c3_u_reg_n_0_[19] ,\c3_u_reg_n_0_[18] ,\c3_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__4 
       (.CI(\plusOp_inferred__2/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__4_n_0 ,\plusOp_inferred__2/i__carry__4_n_1 ,\plusOp_inferred__2/i__carry__4_n_2 ,\plusOp_inferred__2/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__4_n_4 ,\plusOp_inferred__2/i__carry__4_n_5 ,\plusOp_inferred__2/i__carry__4_n_6 ,\plusOp_inferred__2/i__carry__4_n_7 }),
        .S({\c3_u_reg_n_0_[24] ,\c3_u_reg_n_0_[23] ,\c3_u_reg_n_0_[22] ,\c3_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__5 
       (.CI(\plusOp_inferred__2/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__2/i__carry__5_n_0 ,\plusOp_inferred__2/i__carry__5_n_1 ,\plusOp_inferred__2/i__carry__5_n_2 ,\plusOp_inferred__2/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__2/i__carry__5_n_4 ,\plusOp_inferred__2/i__carry__5_n_5 ,\plusOp_inferred__2/i__carry__5_n_6 ,\plusOp_inferred__2/i__carry__5_n_7 }),
        .S({\c3_u_reg_n_0_[28] ,\c3_u_reg_n_0_[27] ,\c3_u_reg_n_0_[26] ,\c3_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__2/i__carry__6 
       (.CI(\plusOp_inferred__2/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__2/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__2/i__carry__6_n_2 ,\plusOp_inferred__2/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__2/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__2/i__carry__6_n_5 ,\plusOp_inferred__2/i__carry__6_n_6 ,\plusOp_inferred__2/i__carry__6_n_7 }),
        .S({1'b0,\c3_u_reg_n_0_[31] ,\c3_u_reg_n_0_[30] ,\c3_u_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__3/i__carry_n_0 ,\plusOp_inferred__3/i__carry_n_1 ,\plusOp_inferred__3/i__carry_n_2 ,\plusOp_inferred__3/i__carry_n_3 }),
        .CYINIT(\c4_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry_n_4 ,\plusOp_inferred__3/i__carry_n_5 ,\plusOp_inferred__3/i__carry_n_6 ,\plusOp_inferred__3/i__carry_n_7 }),
        .S({\c4_u_reg_n_0_[4] ,\c4_u_reg_n_0_[3] ,\c4_u_reg_n_0_[2] ,\c4_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__0 
       (.CI(\plusOp_inferred__3/i__carry_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__0_n_0 ,\plusOp_inferred__3/i__carry__0_n_1 ,\plusOp_inferred__3/i__carry__0_n_2 ,\plusOp_inferred__3/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__0_n_4 ,\plusOp_inferred__3/i__carry__0_n_5 ,\plusOp_inferred__3/i__carry__0_n_6 ,\plusOp_inferred__3/i__carry__0_n_7 }),
        .S({\c4_u_reg_n_0_[8] ,\c4_u_reg_n_0_[7] ,\c4_u_reg_n_0_[6] ,\c4_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__1 
       (.CI(\plusOp_inferred__3/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__1_n_0 ,\plusOp_inferred__3/i__carry__1_n_1 ,\plusOp_inferred__3/i__carry__1_n_2 ,\plusOp_inferred__3/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__1_n_4 ,\plusOp_inferred__3/i__carry__1_n_5 ,\plusOp_inferred__3/i__carry__1_n_6 ,\plusOp_inferred__3/i__carry__1_n_7 }),
        .S({\c4_u_reg_n_0_[12] ,\c4_u_reg_n_0_[11] ,\c4_u_reg_n_0_[10] ,\c4_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__2 
       (.CI(\plusOp_inferred__3/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__2_n_0 ,\plusOp_inferred__3/i__carry__2_n_1 ,\plusOp_inferred__3/i__carry__2_n_2 ,\plusOp_inferred__3/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__2_n_4 ,\plusOp_inferred__3/i__carry__2_n_5 ,\plusOp_inferred__3/i__carry__2_n_6 ,\plusOp_inferred__3/i__carry__2_n_7 }),
        .S({\c4_u_reg_n_0_[16] ,\c4_u_reg_n_0_[15] ,\c4_u_reg_n_0_[14] ,\c4_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__3 
       (.CI(\plusOp_inferred__3/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__3_n_0 ,\plusOp_inferred__3/i__carry__3_n_1 ,\plusOp_inferred__3/i__carry__3_n_2 ,\plusOp_inferred__3/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__3_n_4 ,\plusOp_inferred__3/i__carry__3_n_5 ,\plusOp_inferred__3/i__carry__3_n_6 ,\plusOp_inferred__3/i__carry__3_n_7 }),
        .S({\c4_u_reg_n_0_[20] ,\c4_u_reg_n_0_[19] ,\c4_u_reg_n_0_[18] ,\c4_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__4 
       (.CI(\plusOp_inferred__3/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__4_n_0 ,\plusOp_inferred__3/i__carry__4_n_1 ,\plusOp_inferred__3/i__carry__4_n_2 ,\plusOp_inferred__3/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__4_n_4 ,\plusOp_inferred__3/i__carry__4_n_5 ,\plusOp_inferred__3/i__carry__4_n_6 ,\plusOp_inferred__3/i__carry__4_n_7 }),
        .S({\c4_u_reg_n_0_[24] ,\c4_u_reg_n_0_[23] ,\c4_u_reg_n_0_[22] ,\c4_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__5 
       (.CI(\plusOp_inferred__3/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__3/i__carry__5_n_0 ,\plusOp_inferred__3/i__carry__5_n_1 ,\plusOp_inferred__3/i__carry__5_n_2 ,\plusOp_inferred__3/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__3/i__carry__5_n_4 ,\plusOp_inferred__3/i__carry__5_n_5 ,\plusOp_inferred__3/i__carry__5_n_6 ,\plusOp_inferred__3/i__carry__5_n_7 }),
        .S({\c4_u_reg_n_0_[28] ,\c4_u_reg_n_0_[27] ,\c4_u_reg_n_0_[26] ,\c4_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__3/i__carry__6 
       (.CI(\plusOp_inferred__3/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__3/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__3/i__carry__6_n_2 ,\plusOp_inferred__3/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__3/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__3/i__carry__6_n_5 ,\plusOp_inferred__3/i__carry__6_n_6 ,\plusOp_inferred__3/i__carry__6_n_7 }),
        .S({1'b0,\c4_u_reg_n_0_[31] ,\c4_u_reg_n_0_[30] ,\c4_u_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__4/i__carry_n_0 ,\plusOp_inferred__4/i__carry_n_1 ,\plusOp_inferred__4/i__carry_n_2 ,\plusOp_inferred__4/i__carry_n_3 }),
        .CYINIT(\c5_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry_n_4 ,\plusOp_inferred__4/i__carry_n_5 ,\plusOp_inferred__4/i__carry_n_6 ,\plusOp_inferred__4/i__carry_n_7 }),
        .S({\c5_u_reg_n_0_[4] ,\c5_u_reg_n_0_[3] ,\c5_u_reg_n_0_[2] ,\c5_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__0 
       (.CI(\plusOp_inferred__4/i__carry_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__0_n_0 ,\plusOp_inferred__4/i__carry__0_n_1 ,\plusOp_inferred__4/i__carry__0_n_2 ,\plusOp_inferred__4/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__0_n_4 ,\plusOp_inferred__4/i__carry__0_n_5 ,\plusOp_inferred__4/i__carry__0_n_6 ,\plusOp_inferred__4/i__carry__0_n_7 }),
        .S({\c5_u_reg_n_0_[8] ,\c5_u_reg_n_0_[7] ,\c5_u_reg_n_0_[6] ,\c5_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__1 
       (.CI(\plusOp_inferred__4/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__1_n_0 ,\plusOp_inferred__4/i__carry__1_n_1 ,\plusOp_inferred__4/i__carry__1_n_2 ,\plusOp_inferred__4/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__1_n_4 ,\plusOp_inferred__4/i__carry__1_n_5 ,\plusOp_inferred__4/i__carry__1_n_6 ,\plusOp_inferred__4/i__carry__1_n_7 }),
        .S({\c5_u_reg_n_0_[12] ,\c5_u_reg_n_0_[11] ,\c5_u_reg_n_0_[10] ,\c5_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__2 
       (.CI(\plusOp_inferred__4/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__2_n_0 ,\plusOp_inferred__4/i__carry__2_n_1 ,\plusOp_inferred__4/i__carry__2_n_2 ,\plusOp_inferred__4/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__2_n_4 ,\plusOp_inferred__4/i__carry__2_n_5 ,\plusOp_inferred__4/i__carry__2_n_6 ,\plusOp_inferred__4/i__carry__2_n_7 }),
        .S({\c5_u_reg_n_0_[16] ,\c5_u_reg_n_0_[15] ,\c5_u_reg_n_0_[14] ,\c5_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__3 
       (.CI(\plusOp_inferred__4/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__3_n_0 ,\plusOp_inferred__4/i__carry__3_n_1 ,\plusOp_inferred__4/i__carry__3_n_2 ,\plusOp_inferred__4/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__3_n_4 ,\plusOp_inferred__4/i__carry__3_n_5 ,\plusOp_inferred__4/i__carry__3_n_6 ,\plusOp_inferred__4/i__carry__3_n_7 }),
        .S({\c5_u_reg_n_0_[20] ,\c5_u_reg_n_0_[19] ,\c5_u_reg_n_0_[18] ,\c5_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__4 
       (.CI(\plusOp_inferred__4/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__4_n_0 ,\plusOp_inferred__4/i__carry__4_n_1 ,\plusOp_inferred__4/i__carry__4_n_2 ,\plusOp_inferred__4/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__4_n_4 ,\plusOp_inferred__4/i__carry__4_n_5 ,\plusOp_inferred__4/i__carry__4_n_6 ,\plusOp_inferred__4/i__carry__4_n_7 }),
        .S({\c5_u_reg_n_0_[24] ,\c5_u_reg_n_0_[23] ,\c5_u_reg_n_0_[22] ,\c5_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__5 
       (.CI(\plusOp_inferred__4/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__4/i__carry__5_n_0 ,\plusOp_inferred__4/i__carry__5_n_1 ,\plusOp_inferred__4/i__carry__5_n_2 ,\plusOp_inferred__4/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__4/i__carry__5_n_4 ,\plusOp_inferred__4/i__carry__5_n_5 ,\plusOp_inferred__4/i__carry__5_n_6 ,\plusOp_inferred__4/i__carry__5_n_7 }),
        .S({\c5_u_reg_n_0_[28] ,\c5_u_reg_n_0_[27] ,\c5_u_reg_n_0_[26] ,\c5_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__4/i__carry__6 
       (.CI(\plusOp_inferred__4/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__4/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__4/i__carry__6_n_2 ,\plusOp_inferred__4/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__4/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__4/i__carry__6_n_5 ,\plusOp_inferred__4/i__carry__6_n_6 ,\plusOp_inferred__4/i__carry__6_n_7 }),
        .S({1'b0,\c5_u_reg_n_0_[31] ,\c5_u_reg_n_0_[30] ,\c5_u_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__5/i__carry_n_0 ,\plusOp_inferred__5/i__carry_n_1 ,\plusOp_inferred__5/i__carry_n_2 ,\plusOp_inferred__5/i__carry_n_3 }),
        .CYINIT(\c6_u_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry_n_4 ,\plusOp_inferred__5/i__carry_n_5 ,\plusOp_inferred__5/i__carry_n_6 ,\plusOp_inferred__5/i__carry_n_7 }),
        .S({\c6_u_reg_n_0_[4] ,\c6_u_reg_n_0_[3] ,\c6_u_reg_n_0_[2] ,\c6_u_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__0 
       (.CI(\plusOp_inferred__5/i__carry_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__0_n_0 ,\plusOp_inferred__5/i__carry__0_n_1 ,\plusOp_inferred__5/i__carry__0_n_2 ,\plusOp_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__0_n_4 ,\plusOp_inferred__5/i__carry__0_n_5 ,\plusOp_inferred__5/i__carry__0_n_6 ,\plusOp_inferred__5/i__carry__0_n_7 }),
        .S({\c6_u_reg_n_0_[8] ,\c6_u_reg_n_0_[7] ,\c6_u_reg_n_0_[6] ,\c6_u_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__1 
       (.CI(\plusOp_inferred__5/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__1_n_0 ,\plusOp_inferred__5/i__carry__1_n_1 ,\plusOp_inferred__5/i__carry__1_n_2 ,\plusOp_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__1_n_4 ,\plusOp_inferred__5/i__carry__1_n_5 ,\plusOp_inferred__5/i__carry__1_n_6 ,\plusOp_inferred__5/i__carry__1_n_7 }),
        .S({\c6_u_reg_n_0_[12] ,\c6_u_reg_n_0_[11] ,\c6_u_reg_n_0_[10] ,\c6_u_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__2 
       (.CI(\plusOp_inferred__5/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__2_n_0 ,\plusOp_inferred__5/i__carry__2_n_1 ,\plusOp_inferred__5/i__carry__2_n_2 ,\plusOp_inferred__5/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__2_n_4 ,\plusOp_inferred__5/i__carry__2_n_5 ,\plusOp_inferred__5/i__carry__2_n_6 ,\plusOp_inferred__5/i__carry__2_n_7 }),
        .S({\c6_u_reg_n_0_[16] ,\c6_u_reg_n_0_[15] ,\c6_u_reg_n_0_[14] ,\c6_u_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__3 
       (.CI(\plusOp_inferred__5/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__3_n_0 ,\plusOp_inferred__5/i__carry__3_n_1 ,\plusOp_inferred__5/i__carry__3_n_2 ,\plusOp_inferred__5/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__3_n_4 ,\plusOp_inferred__5/i__carry__3_n_5 ,\plusOp_inferred__5/i__carry__3_n_6 ,\plusOp_inferred__5/i__carry__3_n_7 }),
        .S({\c6_u_reg_n_0_[20] ,\c6_u_reg_n_0_[19] ,\c6_u_reg_n_0_[18] ,\c6_u_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__4 
       (.CI(\plusOp_inferred__5/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__4_n_0 ,\plusOp_inferred__5/i__carry__4_n_1 ,\plusOp_inferred__5/i__carry__4_n_2 ,\plusOp_inferred__5/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__4_n_4 ,\plusOp_inferred__5/i__carry__4_n_5 ,\plusOp_inferred__5/i__carry__4_n_6 ,\plusOp_inferred__5/i__carry__4_n_7 }),
        .S({\c6_u_reg_n_0_[24] ,\c6_u_reg_n_0_[23] ,\c6_u_reg_n_0_[22] ,\c6_u_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__5 
       (.CI(\plusOp_inferred__5/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__5/i__carry__5_n_0 ,\plusOp_inferred__5/i__carry__5_n_1 ,\plusOp_inferred__5/i__carry__5_n_2 ,\plusOp_inferred__5/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__5/i__carry__5_n_4 ,\plusOp_inferred__5/i__carry__5_n_5 ,\plusOp_inferred__5/i__carry__5_n_6 ,\plusOp_inferred__5/i__carry__5_n_7 }),
        .S({\c6_u_reg_n_0_[28] ,\c6_u_reg_n_0_[27] ,\c6_u_reg_n_0_[26] ,\c6_u_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__5/i__carry__6 
       (.CI(\plusOp_inferred__5/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__5/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__5/i__carry__6_n_2 ,\plusOp_inferred__5/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__5/i__carry__6_O_UNCONNECTED [3],\plusOp_inferred__5/i__carry__6_n_5 ,\plusOp_inferred__5/i__carry__6_n_6 ,\plusOp_inferred__5/i__carry__6_n_7 }),
        .S({1'b0,\c6_u_reg_n_0_[31] ,\c6_u_reg_n_0_[30] ,\c6_u_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    ppm_ff1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(s00_ppm_in),
        .Q(ppm_ff1),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    ppm_ff2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ppm_ff1),
        .Q(ppm_ff2),
        .R(clear));
  LUT6 #(
    .INIT(64'h55DFFFFF55DF0000)) 
    s00_ppm_out_INST_0
       (.I0(s00_ppm_out_INST_0_i_1_n_0),
        .I1(gen_ps[2]),
        .I2(s00_ppm_out_INST_0_i_2_n_0),
        .I3(s00_ppm_out_INST_0_i_3_n_0),
        .I4(slv_reg0),
        .I5(s00_ppm_in),
        .O(s00_ppm_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA8AAAB)) 
    s00_ppm_out_INST_0_i_1
       (.I0(s00_ppm_out_INST_0_i_4_n_0),
        .I1(gen_ps[0]),
        .I2(gen_ps[1]),
        .I3(gen_ps[2]),
        .I4(\gen_ns1_inferred__5/i__carry__2_n_0 ),
        .I5(gen_ps[3]),
        .O(s00_ppm_out_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s00_ppm_out_INST_0_i_10
       (.I0(gen_current_clk_reg[30]),
        .I1(gen_current_clk_reg[27]),
        .I2(gen_current_clk_reg[31]),
        .I3(gen_current_clk_reg[25]),
        .O(s00_ppm_out_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    s00_ppm_out_INST_0_i_2
       (.I0(data5),
        .I1(\gen_ns1_inferred__2/i__carry__2_n_0 ),
        .I2(\gen_ns1_inferred__1/i__carry__2_n_0 ),
        .I3(gen_ps[0]),
        .I4(\gen_ns1_inferred__0/i__carry__2_n_0 ),
        .I5(gen_ps[1]),
        .O(s00_ppm_out_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00040C04FFFFFFFF)) 
    s00_ppm_out_INST_0_i_3
       (.I0(\gen_ns1_inferred__3/i__carry__2_n_0 ),
        .I1(gen_ps[2]),
        .I2(gen_ps[1]),
        .I3(gen_ps[0]),
        .I4(\gen_ns1_inferred__4/i__carry__2_n_0 ),
        .I5(gen_ps[3]),
        .O(s00_ppm_out_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h000D)) 
    s00_ppm_out_INST_0_i_4
       (.I0(gen_current_clk_reg[15]),
        .I1(s00_ppm_out_INST_0_i_5_n_0),
        .I2(s00_ppm_out_INST_0_i_6_n_0),
        .I3(s00_ppm_out_INST_0_i_7_n_0),
        .O(s00_ppm_out_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF7F)) 
    s00_ppm_out_INST_0_i_5
       (.I0(gen_current_clk_reg[12]),
        .I1(gen_current_clk_reg[11]),
        .I2(gen_current_clk_reg[10]),
        .I3(s00_ppm_out_INST_0_i_8_n_0),
        .I4(gen_current_clk_reg[14]),
        .I5(gen_current_clk_reg[13]),
        .O(s00_ppm_out_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s00_ppm_out_INST_0_i_6
       (.I0(gen_current_clk_reg[17]),
        .I1(gen_current_clk_reg[19]),
        .I2(gen_current_clk_reg[16]),
        .I3(gen_current_clk_reg[18]),
        .I4(s00_ppm_out_INST_0_i_9_n_0),
        .O(s00_ppm_out_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s00_ppm_out_INST_0_i_7
       (.I0(gen_current_clk_reg[26]),
        .I1(gen_current_clk_reg[28]),
        .I2(gen_current_clk_reg[22]),
        .I3(gen_current_clk_reg[24]),
        .I4(s00_ppm_out_INST_0_i_10_n_0),
        .O(s00_ppm_out_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    s00_ppm_out_INST_0_i_8
       (.I0(gen_current_clk_reg[8]),
        .I1(gen_current_clk_reg[7]),
        .I2(gen_current_clk_reg[9]),
        .I3(gen_current_clk_reg[6]),
        .O(s00_ppm_out_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    s00_ppm_out_INST_0_i_9
       (.I0(gen_current_clk_reg[29]),
        .I1(gen_current_clk_reg[21]),
        .I2(gen_current_clk_reg[23]),
        .I3(gen_current_clk_reg[20]),
        .O(s00_ppm_out_INST_0_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(p_1_in[0]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(clear));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(clear));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(clear));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(clear));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(clear));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(clear));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(clear));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(clear));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(clear));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(clear));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(clear));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0__0[1]),
        .R(clear));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(clear));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(clear));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(clear));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(clear));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(clear));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(clear));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(clear));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(clear));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(clear));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(clear));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0__0[2]),
        .R(clear));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(clear));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(clear));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0__0[3]),
        .R(clear));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(clear));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(clear));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(clear));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[0]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(clear));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(clear));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(clear));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(clear));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(clear));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(clear));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(clear));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(clear));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(clear));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(clear));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(clear));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(clear));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(clear));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(clear));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(clear));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(clear));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(clear));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(clear));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(clear));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(clear));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(clear));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(clear));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(clear));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(clear));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(clear));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(clear));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(clear));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(clear));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(clear));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(clear));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(clear));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(clear));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(clear));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[2]),
        .I5(p_0_in[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(clear));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(clear));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(clear));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(clear));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(clear));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(clear));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(clear));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(clear));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(clear));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(clear));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(clear));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(clear));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(clear));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(clear));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(clear));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(clear));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(clear));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(clear));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(clear));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(clear));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(clear));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(clear));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(clear));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(clear));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(clear));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(clear));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(clear));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(clear));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(clear));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(clear));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(clear));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(clear));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(clear));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(clear));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(clear));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(clear));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(clear));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(clear));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(clear));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(clear));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(clear));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(clear));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(clear));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(clear));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(clear));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(clear));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(clear));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(clear));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(clear));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(clear));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(clear));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(clear));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(clear));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(clear));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(clear));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(clear));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(clear));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(clear));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(clear));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(clear));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(clear));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(clear));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(clear));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(clear));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(clear));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(clear));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(clear));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(clear));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(clear));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(clear));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(clear));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(clear));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(clear));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(clear));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(clear));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(clear));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(clear));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(clear));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(clear));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(clear));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(clear));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(clear));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(clear));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(clear));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(clear));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(clear));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(clear));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(clear));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(clear));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(clear));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(clear));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(clear));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(clear));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(clear));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(clear));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(clear));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(clear));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(clear));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(clear));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(clear));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(clear));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(clear));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(clear));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(clear));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(clear));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(clear));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(clear));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(clear));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(clear));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(clear));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(clear));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(clear));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(clear));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(clear));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(clear));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(clear));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(clear));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(clear));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(clear));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(clear));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(clear));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(clear));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(clear));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(clear));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(clear));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(clear));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(clear));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(clear));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(clear));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(clear));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(clear));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(clear));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(clear));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(clear));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(clear));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(clear));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(clear));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(clear));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(clear));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(clear));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(clear));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(clear));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(clear));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(clear));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(clear));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(clear));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(clear));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(clear));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(clear));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(clear));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(clear));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(clear));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(clear));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(clear));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(clear));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(clear));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(clear));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(clear));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(clear));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(clear));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(clear));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(clear));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(clear));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(clear));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(clear));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(clear));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(clear));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(clear));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(clear));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(clear));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(clear));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(clear));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(clear));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(clear));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(clear));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(clear));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(clear));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(clear));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(clear));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(clear));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(clear));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(clear));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(clear));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(clear));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(clear));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(clear));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(clear));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(clear));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(clear));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(clear));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(clear));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(clear));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(clear));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(clear));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(clear));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(clear));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(clear));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(clear));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(clear));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(clear));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(clear));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(clear));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(clear));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(clear));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(clear));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(clear));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(clear));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(clear));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(clear));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(clear));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(clear));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(clear));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(clear));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(clear));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(clear));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(clear));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(clear));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
