--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_1_Bit_32x1 is
Port(
	s: in std_logic_vector(3 downto 0);
	D0: in std_logic;
	D1: in std_logic;
	D2: in std_logic;
	D3: in std_logic;
	D4: in std_logic;
	D5: in std_logic;
	D6: in std_logic;
	D7: in std_logic;
	D8: in std_logic;
	D9: in std_logic;
	D10: in std_logic;
	D11: in std_logic;
	D12: in std_logic;
	D13: in std_logic;
	D14: in std_logic;
	D15: in std_logic;
	D16: in std_logic;
	D17: in std_logic;
	D18: in std_logic;
	D19: in std_logic;
	D20: in std_logic;
	D21: in std_logic;
	D22: in std_logic;
	D23: in std_logic;
	D24: in std_logic;
	D25: in std_logic;
	D26: in std_logic;
	D27: in std_logic;
	D28: in std_logic;
	D29: in std_logic;
	D30: in std_logic;
	D31: in std_logic;
	y: out std_logic
);
End MUX_1_Bit_32x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_1_Bit_32x1 of MUX_1_Bit_32x1 is

	signal MUX_1_y: std_logic:= '0';
	signal MUX_2_y: std_logic:= '0';
	

Begin

	MUX_1: entity work.MUX_1_Bit_16x1
		port map(s(3 downto 0), D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, MUX_1_y);
		
	MUX_2: entity work.MUX_1_Bit_16x1
		port map(s(3 downto 0), D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31, MUX_2_y);
	

	MUX_3: entity work.MUX_1_Bit_2x1
		port map(s(4), MUX_1_y, MUX_2_y, y);
		
End Arch_MUX_1_Bit_32x1;