--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_1_Bit_4x1 is
Port(
	s: in std_logic_vector(1 downto 0);
	D0: in std_logic;
	D1: in std_logic;
	D2: in std_logic;
	D3: in std_logic;
	y: out std_logic
);
End MUX_1_Bit_4x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_1_Bit_4x1 of MUX_1_Bit_4x1 is

	signal MUX_1_y: std_logic:= '0';
	signal MUX_2_y: std_logic:= '0';
	

Begin

	MUX_1: entity work.MUX_1_Bit_2x1
		port map(s(0), D0, D1, MUX_1_y);
		
	MUX_2: entity work.MUX_1_Bit_2x1
		port map(s(0), D2, D3, MUX_2_y);
	

	MUX_3: entity work.MUX_1_Bit_2x1
		port map(s(1), MUX_1_y, MUX_2_y, y);
		
End Arch_MUX_1_Bit_4x1;

