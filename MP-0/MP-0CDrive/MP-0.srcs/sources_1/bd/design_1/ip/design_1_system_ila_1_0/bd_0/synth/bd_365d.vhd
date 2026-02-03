--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_365d.bd
--Design : bd_365d
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_365d is
  port (
    SLOT_0_VIDEO_TIMING_active_video : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hsync : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vsync : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_365d : entity is "bd_365d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_365d,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_365d : entity is "design_1_system_ila_1_0.hwdef";
end bd_365d;

architecture STRUCTURE of bd_365d is
  component bd_365d_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_365d_ila_lib_0;
  component bd_365d_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    slot_0_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC;
    m_slot_0_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_365d_g_inst_0;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn_TVALID : STD_LOGIC;
  signal SLOT_0_VIDEO_TIMING_active_video_1 : STD_LOGIC;
  signal SLOT_0_VIDEO_TIMING_hblank_1 : STD_LOGIC;
  signal SLOT_0_VIDEO_TIMING_hsync_1 : STD_LOGIC;
  signal SLOT_0_VIDEO_TIMING_vblank_1 : STD_LOGIC;
  signal SLOT_0_VIDEO_TIMING_vsync_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_1_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_1_axis_tkeep : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal net_slot_1_axis_tlast : STD_LOGIC;
  signal net_slot_1_axis_tready : STD_LOGIC;
  signal net_slot_1_axis_tuser : STD_LOGIC_VECTOR ( 0 to 0 );
  signal net_slot_1_axis_tvalid : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resetn_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SLOT_0_VIDEO_TIMING_active_video : signal is "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of SLOT_0_VIDEO_TIMING_hblank : signal is "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HBLANK";
  attribute X_INTERFACE_INFO of SLOT_0_VIDEO_TIMING_hsync : signal is "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING HSYNC";
  attribute X_INTERFACE_INFO of SLOT_0_VIDEO_TIMING_vblank : signal is "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VBLANK";
  attribute X_INTERFACE_INFO of SLOT_0_VIDEO_TIMING_vsync : signal is "xilinx.com:interface:video_timing:2.0 SLOT_0_VIDEO_TIMING VSYNC";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_1_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of SLOT_1_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 25000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tkeep : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP";
  attribute X_INTERFACE_INFO of SLOT_1_AXIS_tuser : signal is "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER";
begin
  Conn_TDATA(31 downto 0) <= SLOT_1_AXIS_tdata(31 downto 0);
  Conn_TKEEP(3 downto 0) <= SLOT_1_AXIS_tkeep(3 downto 0);
  Conn_TLAST <= SLOT_1_AXIS_tlast;
  Conn_TREADY <= SLOT_1_AXIS_tready;
  Conn_TUSER(0) <= SLOT_1_AXIS_tuser(0);
  Conn_TVALID <= SLOT_1_AXIS_tvalid;
  SLOT_0_VIDEO_TIMING_active_video_1 <= SLOT_0_VIDEO_TIMING_active_video;
  SLOT_0_VIDEO_TIMING_hblank_1 <= SLOT_0_VIDEO_TIMING_hblank;
  SLOT_0_VIDEO_TIMING_hsync_1 <= SLOT_0_VIDEO_TIMING_hsync;
  SLOT_0_VIDEO_TIMING_vblank_1 <= SLOT_0_VIDEO_TIMING_vblank;
  SLOT_0_VIDEO_TIMING_vsync_1 <= SLOT_0_VIDEO_TIMING_vsync;
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe1_1(0) <= probe1(0);
  probe2_1(0) <= probe2(0);
  probe3_1(0) <= probe3(0);
  probe4_1(0) <= probe4(0);
  probe5_1(0) <= probe5(0);
  probe6_1(0) <= probe6(0);
  probe7_1(23 downto 0) <= probe7(23 downto 0);
  probe8_1(0) <= probe8(0);
  resetn_1 <= resetn;
g_inst: component bd_365d_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      m_slot_0_axis_tkeep(3 downto 0) => net_slot_1_axis_tkeep(3 downto 0),
      m_slot_0_axis_tlast => net_slot_1_axis_tlast,
      m_slot_0_axis_tready => net_slot_1_axis_tready,
      m_slot_0_axis_tuser(0) => net_slot_1_axis_tuser(0),
      m_slot_0_axis_tvalid => net_slot_1_axis_tvalid,
      slot_0_axis_tdata(31 downto 0) => Conn_TDATA(31 downto 0),
      slot_0_axis_tkeep(3 downto 0) => Conn_TKEEP(3 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tuser(0) => Conn_TUSER(0),
      slot_0_axis_tvalid => Conn_TVALID
    );
ila_lib: component bd_365d_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(0) => SLOT_0_VIDEO_TIMING_hblank_1,
      probe11(0) => SLOT_0_VIDEO_TIMING_hsync_1,
      probe12(0) => SLOT_0_VIDEO_TIMING_vblank_1,
      probe13(0) => SLOT_0_VIDEO_TIMING_vsync_1,
      probe14(31 downto 0) => net_slot_1_axis_tdata(31 downto 0),
      probe15(3 downto 0) => net_slot_1_axis_tkeep(3 downto 0),
      probe16(0) => net_slot_1_axis_tuser(0),
      probe17(0) => net_slot_1_axis_tvalid,
      probe18(0) => net_slot_1_axis_tready,
      probe19(0) => net_slot_1_axis_tlast,
      probe2(0) => probe2_1(0),
      probe3(0) => probe3_1(0),
      probe4(0) => probe4_1(0),
      probe5(0) => probe5_1(0),
      probe6(0) => probe6_1(0),
      probe7(23 downto 0) => probe7_1(23 downto 0),
      probe8(0) => probe8_1(0),
      probe9(0) => SLOT_0_VIDEO_TIMING_active_video_1
    );
end STRUCTURE;
