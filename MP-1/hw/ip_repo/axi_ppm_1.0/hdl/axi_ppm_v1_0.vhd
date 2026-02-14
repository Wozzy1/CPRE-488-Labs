library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_ppm_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 6
	);
	port (
		-- Users to add ports here
        ppm_in  : in std_logic;
        ppm_out : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
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
end axi_ppm_v1_0;

architecture arch_imp of axi_ppm_v1_0 is
    
    type state_type is (IDLE, PULSE1, PULSE2, PULSE3, PULSE4, PULSE5, PULSE6, PULSE7,
                        C1, C2, C3, C4, C5, C6, UPDATE_R1);
    type channel_array is array (0 to 5) of integer;
    
    signal channel_count : integer := 0;
    signal clk_count     : integer := 0;
    signal PS, NS : state_type;
    -- component declaration
	component axi_ppm_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component axi_ppm_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
axi_ppm_v1_0_S00_AXI_inst : axi_ppm_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here
    manage_cnt : process( s00_axi_aclk )
    begin
      if ( ppm_in = '1' ) then
      
          if (rising_edge ( s00_axi_aclk )) then
            clk_count <= clk_count + 1;
            -- ALSO UPDATE CHANNEL(COUNT) THING HERE I THINK
          end if;
          
      end if;
    end process;
    
    update_state : process ( s00_axi_aclk )
    begin
        if (rising_edge ( s00_axi_aclk ) ) then
            if ( s00_axi_aresetn = '1' ) then
                PS <= IDLE;
            else
                PS <= NS;            
            end if;
        end if;
    
    end process update_state;
    
    capture_channel : process (PS, clk_count, ppm_in)
    begin
        NS <= PS; -- default next state is present state
        
        case PS is 
        
        when IDLE =>
            -- capture clks until ppm_in is high
            -- then we keep counting clks, 
            -- but later subtract the time spent low since that is pulse time                 
            if (ppm_in = '0') then
                NS <= PULSE1;
            end if;
        
        when PULSE1 => 
            if (ppm_in = '1') then
                NS <= C1;
            end if;
            
        when C1 => 
            if (ppm_in = '0') then
                NS <= PULSE2;
            end if;
            
        when PULSE2 =>
            if (ppm_in = '1') then
                NS <= C2;
            end if;
        
        when C2 => 
            if (ppm_in = '0') then
                NS <= PULSE3;
            end if;
        
        when PULSE3 =>
            if (ppm_in = '1') then
                NS <= C3;
            end if;
        
        when C3 => 
            if (ppm_in =  '0') then
                NS <= PULSE4;
            end if;
            
        when PULSE4 =>
            if (ppm_in = '1') then
                NS <= C4;
            end if;
            
        when C4 =>
            if (ppm_in = '0') then
                NS <= PULSE5;
            end if;
            
        when PULSE5 =>
            if (ppm_in = '1') then
                NS <= C5;
            end if;
            
        when C5 =>
            if (ppm_in = '0') then
                NS <= PULSE6;
            end if;
        
        when PULSE6 =>
            if (ppm_in = '1') then
                NS <= C6;
            end if;
            
        when C6 => 
            if (ppm_in = '0') then
               NS <= PULSE7;
            end if;
            
        when PULSE7 =>
            if (ppm_in = '1') then
               NS <= IDLE;
            end if;
            
        when others =>
            NS <= IDLE;
            
        end case;
    
    end process capture_channel;

	-- User logic ends

end arch_imp;
