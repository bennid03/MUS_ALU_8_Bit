--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_2_Bit_4x1 is
Port(
	s: in std_logic_vector(1 downto 0);
	D0: in std_logic_vector(1 downto 0);
	D1: in std_logic_vector(1 downto 0);
	D2: in std_logic_vector(1 downto 0);
	D3: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
);
End MUX_2_Bit_4x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_2_Bit_4x1 of MUX_2_Bit_4x1 is

	signal y_Bit_0: std_logic:= '0';
	signal y_Bit_1: std_logic:= '0';
	
Begin

	MUX_0: entity work.MUX_1_Bit_4x1
		port map(s, D0(0), D1(0), D2(0), D3(0), y_Bit_0);
		
	MUX_1: entity work.MUX_1_Bit_4x1
		port map(s, D0(1), D1(1), D2(1), D3(1), y_Bit_1);
		
	y(0) <= y_Bit_0;
	y(1) <= y_Bit_1;
		
		
End Arch_MUX_2_Bit_4x1;
