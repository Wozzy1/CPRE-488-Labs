-- new signals
signal eof : std_logic; -- high after all 6 channels are recorded
signal currentChannel : std_logic_vector(3 downto 0); -- value of current channel being recorded
signal ppm_in : std_logic; -- ppm from off chip



-- if at any point the clks for the current channel exceed threshold, break out, go back to IDLE
capture_channel : process (PS, currentChannel, ppm_in)
begin
	NS <= PS; -- default next state is present state
	currentChannel <= x"0";
	eof <= '0';
	
	case PS is 
	
	when IDLE =>
		if (ppm_in = '0') then
			NS <= PULSE1;
			currentChannel = x"0";
			eof <= '0';
		else
			NS <= IDLE;
			currentChannel = x"0";
		end if;
	
	when PULSE1 => 
		if (ppm_in = '1') then
			NS <= C1;
			currentChannel <= x"1";
			eof <= '0';
		else
			NS <= PS;
			currentChannel <= x"0";
			eof <= '0';
		end if;
		
	when C1 => 
		if (ppm_in = '0') then
			NS <= PULSE2;
		end if;
		
	when PULSE2 =>
		if (ppm_in = '1') then
			NS <= C2;
			currentChannel <= x"2";
		else
			
		end if;
	
	when C2 => 
		if (ppm_in = '0') then
			NS <= PULSE3;
		end if;
	
	when PULSE3 =>
		if (ppm_in = '1') then
			NS <= C3;
			currentChannel <= x"3";
		end if;
	
	when C3 => 
		if (ppm_in =  '0') then
			NS <= PULSE4;
		end if;
		
	when PULSE4 =>
		if (ppm_in = '1') then
			NS <= C4;
			currentChannel <= x"4";
		end if;
		
	when C4 =>
		if (ppm_in = '0') then
			NS <= PULSE5;
		end if;
		
	when PULSE5 =>
		if (ppm_in = '1') then
			NS <= C5;
			currentChannel <= x"5";
		end if;
		
	when C5 =>
		if (ppm_in = '0') then
			NS <= PULSE6;
		end if;
	
	when PULSE6 =>
		if (ppm_in = '1') then
			NS <= C6;
			currentChannel <= x"6";
		end if;
		
	when C6 => 
		if (ppm_in = '0') then
		   NS <= PULSE7;
		   currentChannel <= x"0";
		   eof <= '1';
		else
			NS <= C6;
			currentChannel <= x"6";
			eof <= '0';
		end if;
		
	when PULSE7 =>
		if (ppm_in = '1') then
		   NS <= IDLE;
		end if;
		
	when others =>
		NS <= IDLE;
		currentChannel <= x"0";
		
	end case;

end process capture_channel;
