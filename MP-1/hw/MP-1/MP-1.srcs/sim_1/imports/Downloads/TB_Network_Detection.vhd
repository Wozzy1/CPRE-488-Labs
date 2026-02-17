-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--                                                                           --
-- File Name: TB_PPM_Receiver.vhd                                                  --
-- Author: Phillip Jones (phjones@iastate.edu  )                             --
-- Date: 2/1/2018                                                           --
--                                                                           --
-- Description: Base testbench for generating stimulus input for             -- 
-- DUT  (Device Under Test)                                                  --
--                                                                           --
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TB_PPM_Receiver is
port
(
my_in : in std_logic -- input needed to keep modelsim from complainning???
);
end TB_PPM_Receiver;

architecture rtl of TB_PPM_Receiver is

----------------------------------------------
--       Component declarations             --
----------------------------------------------

-- Device under test

component ppm3_v1_0
port
(
  ppm_in        : in std_logic;
  ppm_out       : out std_logic;
  s00_axi_aclk	: in std_logic;
    s00_axi_aresetn	: in std_logic;
    s00_axi_awaddr	: in std_logic_vector(6-1 downto 0);
    s00_axi_awprot	: in std_logic_vector(2 downto 0);
    s00_axi_awvalid	: in std_logic;
    s00_axi_awready	: out std_logic;
    s00_axi_wdata	: in std_logic_vector(32-1 downto 0);
    s00_axi_wstrb	: in std_logic_vector((32/8)-1 downto 0);
    s00_axi_wvalid	: in std_logic;
    s00_axi_wready	: out std_logic;
    s00_axi_bresp	: out std_logic_vector(1 downto 0);
    s00_axi_bvalid	: out std_logic;
    s00_axi_bready	: in std_logic;
    s00_axi_araddr	: in std_logic_vector(6-1 downto 0);
    s00_axi_arprot	: in std_logic_vector(2 downto 0);
    s00_axi_arvalid	: in std_logic;
    s00_axi_arready	: out std_logic;
    s00_axi_rdata	: out std_logic_vector(32-1 downto 0);
    s00_axi_rresp	: out std_logic_vector(1 downto 0);
    s00_axi_rvalid	: out std_logic;
    s00_axi_rready	: in std_logic
  
--  sop           : in std_logic;                     -- indicate start of a packet
--  data          : in std_logic_vector(7 downto 0);  -- Packet data
--  valid_data    : in std_logic;                     -- Indicate packet data is valid
--  alert_cnt_out : out std_logic_vector(7 downto 0) -- Number of alerts
);
end component ppm3_v1_0;



----------------------------------------------
--          Signal declarations             --
----------------------------------------------

  -- Make sure to add addtional states here if you want a longer sequence of inputs sent to DUT!!
type my_input_states is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, 
                         S12, S13, S14, S15, STOP_TEST);

signal dut1_inputs : std_logic;  -- inputs to dut 1
--signal dut2_inputs : std_logic_vector(7 downto 0);  

signal dut1_outputs : std_logic; -- outputs from dut 1
--signal dut2_outputs : std_logic_vector(7 downto 0);

signal  input_state    : my_input_states;  -- Direct which input vector to use

signal clk : std_logic;
signal reset : std_logic;
signal ppm_in : std_logic;
signal ppm_out : std_logic;
signal axi_awaddr: std_logic_vector(5 downto 0) := (others => '0');
signal axi_wdata : std_logic_vector(31 downto 0) := (others => '0');

begin


-- Processes

-------------------------------------------
-------------------------------------------
-- Process Name: system_clk_gen          --
--                                       --
-- Description: Generat clock to run the --
-- simulation.                           --
--                                       --
--                                       --
-------------------------------------------
-------------------------------------------  
system_clk_gen : process   -- 100 MHz clock
begin
  clk <= '0';
  wait for 50 ns;
    loop
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
      clk <= '0';
    end loop;
end process system_clk_gen;


-------------------------------------------
-------------------------------------------
-- Process Name: toggle_reset            --
--                                       --
-- Description: Toggle system reset.     --
-- used if DUT requires a reset signal   --
--                                       --
--                                       --
-------------------------------------------
-------------------------------------------  
toggle_reset : process
begin
  reset <= '1'; -- place circuit in reset
  wait for 95 ns;
  reset <= '0'; 
  wait;
end process toggle_reset;




------------------------------------------------------------
------------------------------------------------------------
--                                                        --
-- Process Name: DUT stimulus                             --
--                                                        --
-- Send inputs to dut. Holds inputs for HOLD_INPUT_reg    --
--  clk cycles                                            --
--                                                        --
------------------------------------------------------------
------------------------------------------------------------
gen_test : process
begin
--    axi_awaddr <= "101000"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;
    
--    axi_awaddr <= "101100"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;
    
--    axi_awaddr <= "110000"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;
    
--    axi_awaddr <= "110100"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;
    
--    axi_awaddr <= "111000"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;
    
--    axi_awaddr <= "111100"; wait for 20 ns;
--    axi_wdata <= x"00015F90"; wait for 40 ns;

end process gen_test;
DUT_stimulus_no_clk : process
begin
-- Initialize the test
if(reset = '0') then
  input_state    <= S0;
  ppm_in    <= '1';
else

  -- Cycle thought DUT input stimulus patteren
--  case input_state is

--  when S0 =>

    ppm_in <= '0'; 
    input_state <= S1;
    wait for 400 ns;
    
--  when S1 =>
    -- c1
    ppm_in <= '1'; 
    input_state <= S2;
    wait for 900 ns;
    
--  when S2 =>

    ppm_in <= '0'; 
    input_state <= S3;
    wait for 400 ns;
    
--  when S3 =>
    -- c2
    ppm_in <= '1'; 
    input_state <= S4;
    wait for 900 ns;
    
--  when S4 =>

    ppm_in <= '0'; 
    input_state <= S5;
    wait for 400 ns;
    
--  when S6 =>
    -- c3
    ppm_in <= '1'; 
    input_state <= S7;
    wait for 900 ns;
    
--  when S7 =>

    ppm_in <= '0'; 
    input_state <= S8;
    wait for 400 ns;
    
--  when S8 =>
    -- c4
    ppm_in <= '1'; 
    input_state <= S9;
    wait for 900 ns;
    
--  when S9 =>

    ppm_in <= '0'; 
    input_state <= S10;
    wait for 400 ns;
    
--  when S10 =>
    -- c5
    ppm_in <= '1'; 
    input_state <= S11;
    wait for 900 ns;
    
--  when S11 =>

    ppm_in <= '0'; 
    input_state <= S12;
    wait for 400 ns;

--  when S12 =>
    -- c6
    ppm_in <= '1'; 
    input_state <= S13;
    wait for 900 ns;
    
--  when S13 =>

    ppm_in <= '0'; 
    input_state <= S15;
    wait for 10.5 ms;

--  when S15 =>

    ppm_in <= '0'; 
    input_state <= STOP_TEST;

--  when STOP_TEST =>

    ppm_in <= '0';
    input_state <= STOP_TEST;
     
     
--  when OTHERS =>

--    input_state <= STOP_TEST;
    
--  end case;  

end if;
end process DUT_stimulus_no_clk;


-- Combinational assignments

  -- none

-- Connect DUT (Network Detection circuit) to the testbench

my_dut : ppm3_v1_0
port map
(
  ppm_in        => dut1_inputs,
  ppm_out       => dut1_outputs,
  
  s00_axi_aclk	=> clk,
    s00_axi_aresetn	=> reset,
    s00_axi_awaddr	=> axi_awaddr,
    s00_axi_awprot	=> (others => '0'),
    s00_axi_awvalid	=> '1',
    s00_axi_awready	=> open,
    s00_axi_wdata	=> axi_wdata,
    s00_axi_wstrb	=> (others => '0'),
    s00_axi_wvalid	=> '1',
    s00_axi_wready	=> open,
    s00_axi_bresp	=> open,
    s00_axi_bvalid	=> open,
    s00_axi_bready	=> '1',
    s00_axi_araddr	=> (others => '0'),
    s00_axi_arprot	=> (others => '0'),
    s00_axi_arvalid	=> '0',
    s00_axi_arready	=> open,
    s00_axi_rdata	=> open,
    s00_axi_rresp	=> open,
    s00_axi_rvalid	=> open,
    s00_axi_rready	=> '0'

--  sop           => dut1_inputs(0),  -- indicate start of a packet
--  data          => dut2_inputs,     -- Packet data
--  valid_data    => dut1_inputs(1),  -- Indicate packet data is valid
--  alert_cnt_out => dut1_outputs     -- Number of alerts
);


end rtl;
