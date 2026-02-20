signal reg0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal currentClk : unsigned(31 downto 0);
signal currentOutput : std_logic_vector(3 downto 0) := (others => '0');

sign GenPS, GenNS : state_type;

-- other process updates currentClk
-- when currentOutput = x"0" reset currentClk = 0

generate_ppm : process (reg0, reg10, reg11, reg12, rg13, reg14, reg15, currentClk, GenPS)
begin
	ppm_out <= '0';
	
	if ( reg0 = '1' ) then
	-- software
	else
		case GenPS is
		
		when IDLE =>
			-- idle
		when PULSE1 => 
			ppm_out <= '0';
			
	end if;
end process generate_ppm;