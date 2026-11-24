--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_16_Bit_16x1 is
Port(
	s: in std_logic_vector(4 downto 0);
	D0: in std_logic_vector(15 downto 0);
	D1: in std_logic_vector(15 downto 0);
	D2: in std_logic_vector(15 downto 0);
	D3: in std_logic_vector(15 downto 0);
	D4: in std_logic_vector(15 downto 0);
	D5: in std_logic_vector(15 downto 0);
	D6: in std_logic_vector(15 downto 0);
	D7: in std_logic_vector(15 downto 0);
	D8: in std_logic_vector(15 downto 0);
	D9: in std_logic_vector(15 downto 0);
	D10: in std_logic_vector(15 downto 0);
	D11: in std_logic_vector(15 downto 0);
	D12: in std_logic_vector(15 downto 0);
	D13: in std_logic_vector(15 downto 0);
	D14: in std_logic_vector(15 downto 0);
	D15: in std_logic_vector(15 downto 0);
	y: out std_logic_vector(15 downto 0)
);
End MUX_16_Bit_16x1;
----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_16_Bit_16x1 of MUX_16_Bit_16x1 is

Begin

	MUX_1: entity work.MUX_8_Bit_16x1
		port map(s, D0(7 downto 0), D1(7 downto 0), D2(7 downto 0), D3(7 downto 0),
						D4(7 downto 0), D5(7 downto 0), D6(7 downto 0), D7(7 downto 0),
						D8(7 downto 0), D9(7 downto 0), D10(7 downto 0), D11(7 downto 0),
						D12(7 downto 0), D13(7 downto 0), D14(7 downto 0), D15(7 downto 0),
						y(7 downto 0));
		
	MUX_2: entity work.MUX_8_Bit_16x1
		port map(s, D0(15 downto 8), D1(15 downto 8), D2(15 downto 8), D3(15 downto 8),
						D4(15 downto 8), D5(15 downto 8), D6(15 downto 8), D7(15 downto 8),
						D8(15 downto 8), D9(15 downto 8), D10(15 downto 8), D11(15 downto 8),
						D12(15 downto 8), D13(15 downto 8), D14(15 downto 8), D15(15 downto 8),
						y(15 downto 8));
	
		
End Arch_MUX_16_Bit_16x1;
