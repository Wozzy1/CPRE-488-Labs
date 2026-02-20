signal reg0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal currentClk : unsigned(31 downto 0);
-- signal currentOutput : std_logic_vector(3 downto 0) := (others => '0');
constant PULSE_CLKS : unsigned(31 downto 0) := to_unsigned(40000, 32)
signal GenPS, GenNS : state_type;
signal GenIdleClks : unsigned(31 downto 0);

-- other process updates currentClk
-- when currentOutput = x"0" reset currentClk = 0

gen_clk_proc : process ( s00_axi_aclk )
begin
	if (rising_edge ( s00_axi_aclk ) ) then
		if ( s00_axi_aresetn = '0' ) then
			GenPS <= IDLE;
			currentClk <= to_unsigned(0, 32);
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

compute_generate_idle_clks : process (eof, reg10, reg11, reg12, reg13, reg14, reg15)
begin
	if ( eof = '1' ) then
		GenIdleClks <= to_unsigned(2000000, 32) 
					   - unsigned(reg10)
					   - unsigned(reg11)
					   - unsigned(reg12)
					   - unsigned(reg13)
					   - unsigned(reg14)
					   - unsigned(reg15)
					   - to_unsigned(PULSE_CLKS * 7, 32);
   else
		GenIdleClks <= to_unsigned(200000, 32);
	end if;
end process compute_generate_idle_clks;

generate_ppm : process (reg0, reg10, reg11, reg12, rg13, reg14, reg15, currentClk, GenPS, GenIdleClks)
begin
	GenNS <= IDLE;
	s00_ppm_out <= '1';
	
	if ( reg0 = '1' ) then
	-- software
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
			if ( currentClk < reg10 ) then
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
			if ( currentClk < reg11 ) then
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
			if ( currentClk < reg12 ) then
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
			if ( currentClk < reg13 ) then
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
			if ( currentClk < reg14 ) then
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
			if ( currentClk < reg15 ) then
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
end process generate_ppm;