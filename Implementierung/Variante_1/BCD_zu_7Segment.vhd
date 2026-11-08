--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity BCD_zu_7Segment is
Port(
    CLK_50MHz: in std_logic;
	 BCD_Wert: IN std_logic_vector(3 downto 0);
	 Sieben_Segment: OUT std_logic_vector(6 downto 0)
);
End BCD_zu_7Segment;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_BCD_zu_7Segment of BCD_zu_7Segment is

	signal Umwandlung_Prozess_initialisiert: std_logic := '0';

begin

	Umwandlung_Prozess: process(CLK_50MHz)
	begin
	
		if( rising_edge(CLK_50MHz)) then
		
		
			if( Umwandlung_Prozess_initialisiert = '0') then
				
				Sieben_Segment <= "1111111";
				Umwandlung_Prozess_initialisiert <= '1';
			
			else 
				
				case BCD_Wert is
					when "0000" => Sieben_Segment <= "1000000";
					when "0001" => Sieben_Segment <= "1111001";
					when "0010" => Sieben_Segment <= "0100100";
					when "0011" => Sieben_Segment <= "0110000";
					when "0100" => Sieben_Segment <= "0011001";
					when "0101" => Sieben_Segment <= "0010010";
					when "0110" => Sieben_Segment <= "0000010";
					when "0111" => Sieben_Segment <= "1111000";
					when "1000" => Sieben_Segment <= "0000000";
					when "1001" => Sieben_Segment <= "0010000";
					when others => Sieben_Segment <= "1111111";
				end case;
			
			
			end if;
			
			
		end if;
		
	end process;



End Arch_BCD_zu_7Segment;