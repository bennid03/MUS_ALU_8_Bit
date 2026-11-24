--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_8_Bit_2x1 is
Port(
	s: in std_logic;
	D0: in std_logic_vector(7 downto 0);
	D1: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(7 downto 0)
);
End MUX_8_Bit_2x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_8_Bit_2x1 of MUX_8_Bit_2x1 is

Begin

	MUX_1: entity work.MUX_4_Bit_2x1
		port map(s, D0(3 downto 0), D1(3 downto 0), y(3 downto 0));
		
	MUX_2: entity work.MUX_4_Bit_2x1
		port map(s, D0(7 downto 4), D1(7 downto 4), y(7 downto 4));
	
		
End Arch_MUX_8_Bit_2x1;
