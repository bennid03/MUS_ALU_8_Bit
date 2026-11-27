--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_4_Bit_2x1 is
Port(
	s: in std_logic;
	D0: in std_logic_vector(3 downto 0);
	D1: in std_logic_vector(3 downto 0);
	y: out std_logic_vector(3 downto 0)
);
End MUX_4_Bit_2x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_4_Bit_2x1 of MUX_4_Bit_2x1 is

Begin

	MUX_1: entity work.MUX_2_Bit_2x1
		port map(s, D0(1 downto 0), D1(1 downto 0), y(1 downto 0));
		
	MUX_2: entity work.MUX_2_Bit_2x1
		port map(s, D0(3 downto 2), D1(3 downto 2), y(3 downto 2));
	
		
End Arch_MUX_4_Bit_2x1;
