--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f69c_wrapper.bd
--Design : bd_f69c_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f69c_wrapper is
  port (
    SLOT_0_VIDEO_TIMING_active_video : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hsync : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vsync : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end bd_f69c_wrapper;

architecture STRUCTURE of bd_f69c_wrapper is
  component bd_f69c is
  port (
    clk : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_active_video : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_hsync : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vblank : in STD_LOGIC;
    SLOT_0_VIDEO_TIMING_vsync : in STD_LOGIC
  );
  end component bd_f69c;
begin
bd_f69c_i: component bd_f69c
     port map (
      SLOT_0_VIDEO_TIMING_active_video => SLOT_0_VIDEO_TIMING_active_video,
      SLOT_0_VIDEO_TIMING_hblank => SLOT_0_VIDEO_TIMING_hblank,
      SLOT_0_VIDEO_TIMING_hsync => SLOT_0_VIDEO_TIMING_hsync,
      SLOT_0_VIDEO_TIMING_vblank => SLOT_0_VIDEO_TIMING_vblank,
      SLOT_0_VIDEO_TIMING_vsync => SLOT_0_VIDEO_TIMING_vsync,
      clk => clk
    );
end STRUCTURE;
