--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_8_Bit_4x1 is
Port(
	s: in std_logic_vector(1 downto 0);
	D0: in std_logic_vector(7 downto 0);
	D1: in std_logic_vector(7 downto 0);
	D2: in std_logic_vector(7 downto 0);
	D3: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(7 downto 0)
);
End MUX_8_Bit_4x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_8_Bit_4x1 of MUX_8_Bit_4x1 is

	signal y_Bit_3_bis_0: std_logic_vector(3 downto 0):= "0000";
	signal y_Bit_7_bis_4: std_logic_vector(3 downto 0):= "0000";
	
Begin

	MUX_0: entity work.MUX_4_Bit_4x1
		port map(s, D0(3 downto 0), D1(3 downto 0), D2(3 downto 0), D3(3 downto 0), y_Bit_3_bis_0);
		
	MUX_1: entity work.MUX_4_Bit_4x1
		port map(s, D0(7 downto 4), D1(7 downto 4), D2(7 downto 4), D3(7 downto 4), y_Bit_7_bis_4);
		
	y(3 downto 0) <= y_Bit_3_bis_0;
	y(7 downto 4) <= y_Bit_7_bis_4;
		
		
End Arch_MUX_8_Bit_4x1;


