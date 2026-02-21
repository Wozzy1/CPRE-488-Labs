--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_36cd_wrapper.bd
--Design : bd_36cd_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_36cd_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end bd_36cd_wrapper;

architecture STRUCTURE of bd_36cd_wrapper is
  component bd_36cd is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_36cd;
begin
bd_36cd_i: component bd_36cd
     port map (
      clk => clk,
      probe0(0) => probe0(0),
      probe1(31 downto 0) => probe1(31 downto 0),
      probe2(31 downto 0) => probe2(31 downto 0),
      probe3(31 downto 0) => probe3(31 downto 0),
      probe4(31 downto 0) => probe4(31 downto 0),
      probe5(31 downto 0) => probe5(31 downto 0),
      probe6(31 downto 0) => probe6(31 downto 0),
      probe7(31 downto 0) => probe7(31 downto 0)
    );
end STRUCTURE;
