----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2026 05:03:29 PM
-- Design Name: 
-- Module Name: tb_ppm_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_ppm_4 is
--  Port ( );
    generic (
        beat : time := 10ns;
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 6
    );
end tb_ppm_4;

architecture Behavioral of tb_ppm_4 is
component axi_ppm4_v1_0 is
	generic (
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		-- Users to add ports here
        s00_ppm_in : in std_logic;
        s00_ppm_out: out std_logic;
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end component axi_ppm4_v1_0;
    
    signal s_ppm_in : std_logic;
    signal s_ppm_out: std_logic;
    signal s_s00_axi_aclk	: std_logic;
    signal s_s00_axi_aresetn	: std_logic;
    signal s_s00_axi_awaddr	: std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal s_s00_axi_awprot	: std_logic_vector(2 downto 0);
    signal s_s00_axi_awvalid	: std_logic;
    signal s_s00_axi_awready	: std_logic;
    signal s_s00_axi_wdata	: std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal s_s00_axi_wstrb	: std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
    signal s_s00_axi_wvalid	: std_logic;
    signal s_s00_axi_wready	: std_logic;
    signal s_s00_axi_bresp	: std_logic_vector(1 downto 0);
    signal s_s00_axi_bvalid	: std_logic;
    signal s_s00_axi_bready	: std_logic;
    signal s_s00_axi_araddr	: std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
    signal s_s00_axi_arprot	: std_logic_vector(2 downto 0);
    signal s_s00_axi_arvalid	: std_logic;
    signal s_s00_axi_arready	: std_logic;
    signal s_s00_axi_rdata	: std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal s_s00_axi_rresp	: std_logic_vector(1 downto 0);
    signal s_s00_axi_rvalid	: std_logic;
    signal s_s00_axi_rready	: std_logic;

begin

PPM_UNDER_TEST: axi_ppm4_v1_0
    generic map (
		C_S00_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,  
		C_S00_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH 
    )
    port map (
    s00_ppm_in  		=> s_ppm_in,
    s00_ppm_out 		=> s_ppm_out,

    s00_axi_aclk	=> s_s00_axi_aclk,
    s00_axi_aresetn	=> s_s00_axi_aresetn,
    s00_axi_awaddr	=> s_s00_axi_awaddr, -- assign values to these
    s00_axi_awprot	=> (others => '0'),
    s00_axi_awvalid	=> '1',
    s00_axi_awready	=> open,
    s00_axi_wdata	=> s_s00_axi_wdata, -- assign values to these
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
--        ppm_in  		=> s_ppm_in,
--        ppm_out 		=> s_ppm_out,
--        s00_axi_aclk	=> s_s00_axi_aclk,
--        s00_axi_aresetn => s_s00_axi_aresetn,
--        s00_axi_awaddr	=> s_s00_axi_awaddr,
--        s00_axi_awprot	=> s_s00_axi_awprot,
--        s00_axi_awvalid => s_s00_axi_awvalid,
--        s00_axi_awready => s_s00_axi_awready,
--        s00_axi_wdata	=> s_s00_axi_wdata,
--        s00_axi_wstrb	=> s_s00_axi_wstrb,
--        s00_axi_wvalid  => s_s00_axi_wvalid,
--        s00_axi_wready  => s_s00_axi_wready,
--        s00_axi_bresp	=> s_s00_axi_bresp,
--        s00_axi_bvalid  => s_s00_axi_bvalid,
--        s00_axi_bready  => s_s00_axi_bready,
--        s00_axi_araddr	=> s_s00_axi_araddr,
--        s00_axi_arprot	=> s_s00_axi_arprot,
--        s00_axi_arvalid => s_s00_axi_arvalid,
--        s00_axi_arready => s_s00_axi_arready,
--        s00_axi_rdata 	=> s_s00_axi_rdata,
--        s00_axi_rresp	=> s_s00_axi_rresp,
--        s00_axi_rvalid 	=> s_s00_axi_rvalid,
--        s00_axi_rready	=> s_s00_axi_rready
    );


CLK_PROC: process 
begin
    s_s00_axi_aclk <= '1';
    wait for 5ns;
    s_s00_axi_aclk <= '0';
    wait for 5ns;

end process;

PPM_RECEIVER_TEST : process
begin
    s_ppm_in <= '1';
    s_s00_axi_aresetn <= '0';
    wait for beat;
    wait for beat;
    
    s_s00_axi_aresetn <= '1';
    
    -- idle
    s_ppm_in <= '1';
    wait for 3ms;
    
    -- p1
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c1
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p2
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c2
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p3
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c3
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p4
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c4
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p5
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c5
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p6
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c6
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p7
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- idle
    s_ppm_in <= '1';
    wait for 11ms;
    
    -- p1
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c1
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p2
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c2
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p3
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c3
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p4
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c4
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p5
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c5
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p6
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c6
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p7
    s_ppm_in <= '0';
    wait for 0.4ms;

    -- idle
    s_ppm_in <= '1';
    wait for 11ms;
    
    -- p1
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c1
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p2
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c2
    s_ppm_in <= '1';
    wait for 0.9ms;
    
    -- p3
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c3
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p4
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c4
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p5
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c5
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p6
    s_ppm_in <= '0';
    wait for 0.4ms;
    
    -- c6
    s_ppm_in <= '1';
    wait for 0.9ms;   
    
    -- p7
    s_ppm_in <= '0';
    wait for 0.4ms;

end process;

end Behavioral;









