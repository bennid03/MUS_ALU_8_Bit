--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_4_Bit_4x1 is
Port(
	s: in std_logic_vector(1 downto 0);
	D0: in std_logic_vector(3 downto 0);
	D1: in std_logic_vector(3 downto 0);
	D2: in std_logic_vector(3 downto 0);
	D3: in std_logic_vector(3 downto 0);
	y: out std_logic_vector(3 downto 0)
);
End MUX_4_Bit_4x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_4_Bit_4x1 of MUX_4_Bit_4x1 is

	signal y_Bit_1_bis_0: std_logic_vector(1 downto 0):= "00";
	signal y_Bit_3_bis_2: std_logic_vector(1 downto 0):= "00";
	
Begin

	MUX_0: entity work.MUX_2_Bit_4x1
		port map(s, D0(1 downto 0), D1(1 downto 0), D2(1 downto 0), D3(1 downto 0), y_Bit_1_bis_0);
		
	MUX_1: entity work.MUX_2_Bit_4x1
		port map(s, D0(3 downto 2), D1(3 downto 2), D2(3 downto 2), D3(3 downto 2), y_Bit_3_bis_2);
		
	y(1 downto 0) <= y_Bit_1_bis_0;
	y(3 downto 2) <= y_Bit_3_bis_2;
		
		
End Arch_MUX_4_Bit_4x1;

