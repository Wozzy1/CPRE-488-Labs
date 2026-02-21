library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_ppm4_v1_0 is
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
        s00_ppm_in : in std_logic;
        s00_ppm_out: out std_logic;
        s00_reg0_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg10_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg11_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg12_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg13_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg14_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s00_reg15_out: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
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
--		s00_slv_reg10 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--        s00_slv_reg11 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--        s00_slv_reg12 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--        s00_slv_reg13 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--        s00_slv_reg14 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--        s00_slv_reg15 : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0)
        
	);
end axi_ppm4_v1_0;

architecture arch_imp of axi_ppm4_v1_0 is

    type state_type is (IDLE, PULSE1, PULSE2, PULSE3, PULSE4, PULSE5, PULSE6, PULSE7,
                        C1, C2, C3, C4, C5, C6);

    -- user added signals 
    signal eof : std_logic;     -- high after all 6 channels are recorded
    signal ppm_in : std_logic;  -- ppm from off chip
    signal s_ppm : std_logic;
    signal currentChannel : std_logic_vector(3 downto 0) := (others => '0'); -- value of current channel being recorded
    signal PS, NS, GenPS, GenNS : state_type;
    signal ppm_ff1, ppm_ff2 : std_logic;    -- FF for off chip signal
    signal reg0, reg1, reg2, reg3, reg4, reg5, reg6 : std_logic_vector(32-1 downto 0);
    
    -- 0 IDLE
    -- 1 C1
    -- ... 
    -- 6 C6
    -- 7 PULSE TIME wasted
--    type channels is array (0 to 7) of unsigned(31 downto 0);
    
    signal c0_u, c1_u, c2_u, c3_u, c4_u, c5_u, c6_u, c7_u : unsigned(31 downto 0) := (others => '0');
    constant TIMEOUT_CLKS : unsigned(31 downto 0) := to_unsigned(200000, 32);
    
    signal currentClk, GenIdleClks : unsigned(31 downto 0);
    constant PULSE_CLKS : unsigned(31 downto 0) := to_unsigned(40000, 32);


	-- component declaration
	component axi_ppm4_v1_0_S00_AXI is
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
		S_AXI_RREADY	: in std_logic;
		S_SLV_REG0  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG10	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG11	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG12	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG13	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG14	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_SLV_REG15	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG0  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG10	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG11	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG12	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG13	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG14	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        SO_SLV_REG15	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)

		);
	end component axi_ppm4_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
axi_ppm4_v1_0_S00_AXI_inst : axi_ppm4_v1_0_S00_AXI
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
		S_AXI_RREADY	=> s00_axi_rready,
		S_SLV_REG0  => reg0,
		S_SLV_REG10	=> reg1,
        S_SLV_REG11	=> reg2,
        S_SLV_REG12	=> reg3,
        S_SLV_REG13	=> reg4,
        S_SLV_REG14	=> reg5,
        S_SLV_REG15	=> reg6,
        
        SO_SLV_REG0     => s00_reg0_out,
        SO_SLV_REG10	=> s00_reg10_out,
        SO_SLV_REG11	=> s00_reg11_out,
        SO_SLV_REG12	=> s00_reg12_out,
        SO_SLV_REG13	=> s00_reg13_out,
        SO_SLV_REG14	=> s00_reg14_out,
        SO_SLV_REG15	=> s00_reg15_out
);

--	-- Add user logic here
    manage_cnt : process( s00_axi_aclk )
    begin
        if ( rising_edge ( s00_axi_aclk )) then
            if ( s00_axi_aresetn = '0') then
                    c0_u <= (others => '0');
                    c1_u <= (others => '0');
                    c2_u <= (others => '0');
                    c3_u <= (others => '0');
                    c4_u <= (others => '0');
                    c5_u <= (others => '0');
                    c6_u <= (others => '0');
                    c7_u <= (others => '0');
                    reg1 <= (others => '0');
                    reg2 <= (others => '0');
                    reg3 <= (others => '0');
                    reg4 <= (others => '0');
                    reg5 <= (others => '0');
                    reg6 <= (others => '0');
                    s00_reg10_out <= (others => '0');
                    s00_reg11_out <= (others => '0');
                    s00_reg12_out <= (others => '0');
                    s00_reg13_out <= (others => '0');
                    s00_reg14_out <= (others => '0');
                    s00_reg15_out <= (others => '0');
                    
            elsif (ppm_ff2 = '1') then
                    if (PS /= NS) then
                        c0_u <= (others => '0');
                    else
                        c0_u <= c0_u + 1;
                    end if;                    
					case currentChannel is
					when x"0" => -- RESET COUNT
						c0_u <= (others => '0');
                        c1_u <= (others => '0');
                        c2_u <= (others => '0');
                        c3_u <= (others => '0');
                        c4_u <= (others => '0');
                        c5_u <= (others => '0');
                        c6_u <= (others => '0');
                        c7_u <= (others => '0');
					when x"1" =>
						c1_u <= c1_u + 1;
					when x"2" =>
						c2_u <= c2_u + 1;
					when x"3" =>
						c3_u <= c3_u + 1;
					when x"4" =>
						c4_u <= c4_u + 1;
					when x"5" =>
						c5_u <= c5_u + 1;
					when x"6" => 
						c6_u <= c6_u + 1;
					when others => -- default update dummy channel
						c7_u <= c7_u + 1;
					end case;
				end if;
            else
                c0_u <= c0_u;
                c1_u <= c1_u;
                c2_u <= c2_u;
                c3_u <= c3_u;
                c4_u <= c4_u;
                c5_u <= c5_u;
                c6_u <= c6_u;
                c7_u <= c7_u;
                
                -- update registers with counts if eof
                if (eof = '1') then
                    reg1 <= std_logic_vector(c1_u);
                    reg2 <= std_logic_vector(c2_u);
                    reg3 <= std_logic_vector(c3_u);
                    reg4 <= std_logic_vector(c4_u);
                    reg5 <= std_logic_vector(c5_u);
                    reg6 <= std_logic_vector(c6_u);
--                    reg1 <= reg1;
--                    reg2 <= reg2;
--                    reg3 <= reg3;
--                    reg4 <= reg4;
--                    reg5 <= reg5;
--                    reg6 <= reg6;


                    s00_reg10_out <= std_logic_vector(c1_u);
                    s00_reg11_out <= std_logic_vector(c2_u);
                    s00_reg12_out <= std_logic_vector(c3_u);
                    s00_reg13_out <= std_logic_vector(c4_u);
                    s00_reg14_out <= std_logic_vector(c5_u);
                    s00_reg15_out <= std_logic_vector(c6_u);

                else 
                end if;
            end if;
    end process;
    
    update_state : process ( s00_axi_aclk )
    begin
--    s00_ppm_in => s00_ppm_out;
        if (rising_edge ( s00_axi_aclk ) ) then
            if ( s00_axi_aresetn = '0' ) then
                PS <= IDLE;
                ppm_ff1 <= '0';
                ppm_ff2 <= '0';
            else
                PS <= NS;
                ppm_ff1 <= s00_ppm_in;
                ppm_ff2 <= ppm_ff1;
            end if;
        end if;
    
    end process update_state;
    
    capture_ppm : process (ppm_ff2, PS, c0_u) -- add current clocks
    begin
        -- default values
        NS <= PS;
        currentChannel <= x"0";
        eof <= '0';

        case PS is
        
        when IDLE =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE1;
                currentChannel <= x"0";
                eof <= '0';
            else
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            end if;       
        when PULSE1 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C1;
                currentChannel <= x"1";
                eof <= '0';
            else
                NS <= PULSE1;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C1 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE2;
                currentChannel <= x"2";
                eof <= '0';
            else
                NS <= C1;
                currentChannel <= x"1";
                eof <= '0';
            end if;
        when PULSE2 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C2;
                currentChannel <= x"2";
                eof <= '0';
            else
                NS <= PULSE2;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C2 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE3;
                currentChannel <= x"3";
                eof <= '0';
            else
                NS <= C2;
                currentChannel <= x"2";
                eof <= '0';
            end if;
        when PULSE3 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C3;
                currentChannel <= x"3";
                eof <= '0';
            else
                NS <= PULSE3;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C3 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE4;
                currentChannel <= x"4";
                eof <= '0';
            else
                NS <= C3;
                currentChannel <= x"3";
                eof <= '0';
            end if;
        when PULSE4 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C4;
                currentChannel <= x"4";
                eof <= '0';
            else
                NS <= PULSE4;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C4 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE5;
                currentChannel <= x"5";
                eof <= '0';
            else
                NS <= C4;
                currentChannel <= x"4";
                eof <= '0';
            end if;
        when PULSE5 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C5;
                currentChannel <= x"5";
                eof <= '0';
            else
                NS <= PULSE5;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C5 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE6;
                currentChannel <= x"6";
                eof <= '0';
            else
                NS <= C5;
                currentChannel <= x"5";
                eof <= '0';
            end if;
        when PULSE6 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= C6;
                currentChannel <= x"6";
                eof <= '0';
            else
                NS <= PULSE6;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when C6 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '0') then
                NS <= PULSE7;
                currentChannel <= x"0";
                eof <= '1';
            else
                NS <= C6;
                currentChannel <= x"6";
                eof <= '0';
            end if;
        when PULSE7 =>
            if (c0_u > TIMEOUT_CLKS) then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            elsif (ppm_ff2 = '1') then
                NS <= IDLE;
                currentChannel <= x"0";
                eof <= '0';
            else
                NS <= PULSE7;
                currentChannel <= x"7";
                eof <= '0';
            end if;
        when others =>
            NS <= IDLE;
            currentChannel <= x"0";
            eof <= '0';
        end case;
    end process;

gen_clk_proc : process ( s00_axi_aclk )
begin
	if (rising_edge ( s00_axi_aclk ) ) then
	    
		if ( s00_axi_aresetn = '0' ) then
			GenPS <= IDLE;
			currentClk <= to_unsigned(0, 32);
			 reg0(0) <= '0';
		elsif ( GenPS /= GenNS ) then
			-- reset currentClk when the NS is different than the PS
			GenPS <= GenNS;
			currentClk <= to_unsigned(0, 32);
		else
			-- increment clk, update PS
			GenPS <= GenNS;
			currentClk <= currentClk + 1;
			
		end if;
	end if;
end process gen_clk_proc;

compute_generate_idle_clks : process (eof, reg1, reg2, reg3, reg4, reg5, reg6)
begin
	if ( eof = '1' ) then
		GenIdleClks <= to_unsigned(2000000, 32) 
					   - unsigned(reg1)
					   - unsigned(reg2)
					   - unsigned(reg3)
					   - unsigned(reg4)
					   - unsigned(reg5)
					   - unsigned(reg6)
					   - resize(unsigned(PULSE_CLKS) * 7, 32);
   else
		GenIdleClks <= to_unsigned(200000, 32);
	end if;
end process compute_generate_idle_clks;


-- s00_ppm_out <= s00_ppm_in;

generate_ppm : process (s00_ppm_in, reg0, reg1, reg2, reg3, reg4, reg5, reg6, currentClk, GenPS, GenIdleClks)
begin
	GenNS <= IDLE;
	s00_ppm_out <= '1';
	
	if ( reg0(0) = '0' ) then
	   -- hardware
        s00_ppm_out <= s00_ppm_in;
        GenNS <= IDLE;
	else
		case GenPS is
		
		when IDLE =>
			-- not sure if we need to enforce minimum clks for idle time
			-- we might need to compute 20ms - (c1 + p1 + c2 + p2 + ... + c6 + p7)
			if ( currentClk < GenIdleClks ) then
				s00_ppm_out <= '1';
				GenNS <= IDLE;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE1;
			end if;
			
			-- once it is past the minimum threshold for idle time, 
			-- how do we say that you can stay idle OR you can start sending?
			-- need some external flag, saying that the reg10-15 are ready with new 
			-- ppm to send
		when PULSE1 => 
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE1;
			else
				s00_ppm_out <= '1';
				GenNS <= C1;
			end if;
		when C1 =>
			if ( std_logic_vector(currentClk) < reg1) then
				s00_ppm_out <= '1';
				GenNS <= C1;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE2;
			end if;
		when PULSE2 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE2;
			else
				s00_ppm_out <= '1';
				GenNS <= C2;
			end if;
		when C2 =>
			if ( std_logic_vector(currentClk) < reg2 ) then
				s00_ppm_out <= '1';
				GenNS <= C2;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE3;
			end if;
		when PULSE3 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE3;
			else
				s00_ppm_out <= '1';
				GenNS <= C3;
			end if;
		when C3 =>
			if ( std_logic_vector(currentClk) < reg3 ) then
				s00_ppm_out <= '1';
				GenNS <= C3;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE4;
			end if;
		when PULSE4 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE4;
			else
				s00_ppm_out <= '1';
				GenNS <= C4;
			end if;
		when C4 =>
			if ( std_logic_vector(currentClk) < reg4 ) then
				s00_ppm_out <= '1';
				GenNS <= C4;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE5;
			end if;
		when PULSE5 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE5;
			else
				s00_ppm_out <= '1';
				GenNS <= C5;
			end if;
		when C5 =>
			if ( std_logic_vector(currentClk) < reg5 ) then
				s00_ppm_out <= '1';
				GenNS <= C5;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE6;
			end if;
		when PULSE6 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE6;
			else
				s00_ppm_out <= '1';
				GenNS <= C6;
			end if;
		when C6 =>
			if ( std_logic_vector(currentClk) < reg6 ) then
				s00_ppm_out <= '1';
				GenNS <= C6;
			else
				s00_ppm_out <= '0';
				GenNS <= PULSE7;
			end if;
		when PULSE7 =>
			if ( currentClk < PULSE_CLKS ) then
				s00_ppm_out <= '0';
				GenNS <= PULSE7;
			else
				s00_ppm_out <= '1';
				GenNS <= IDLE;
			end if;
		when others =>
			s00_ppm_out <= '1';
			GenNS <= IDLE;
		end case;
    end if;
end process generate_ppm;
	-- User logic ends

end arch_imp;
