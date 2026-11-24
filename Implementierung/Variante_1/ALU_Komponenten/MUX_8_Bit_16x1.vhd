--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_8_Bit_16x1 is
Port(
	s: in std_logic_vector(4 downto 0);
	D0: in std_logic_vector(7 downto 0);
	D1: in std_logic_vector(7 downto 0);
	D2: in std_logic_vector(7 downto 0);
	D3: in std_logic_vector(7 downto 0);
	D4: in std_logic_vector(7 downto 0);
	D5: in std_logic_vector(7 downto 0);
	D6: in std_logic_vector(7 downto 0);
	D7: in std_logic_vector(7 downto 0);
	D8: in std_logic_vector(7 downto 0);
	D9: in std_logic_vector(7 downto 0);
	D10: in std_logic_vector(7 downto 0);
	D11: in std_logic_vector(7 downto 0);
	D12: in std_logic_vector(7 downto 0);
	D13: in std_logic_vector(7 downto 0);
	D14: in std_logic_vector(7 downto 0);
	D15: in std_logic_vector(7 downto 0);
	y: out std_logic_vector(7 downto 0)
);
End MUX_8_Bit_16x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_8_Bit_16x1 of MUX_8_Bit_16x1 is

Begin

	MUX_1: entity work.MUX_4_Bit_16x1
		port map(s, D0(3 downto 0), D1(3 downto 0), D2(3 downto 0), D3(3 downto 0),
						D4(3 downto 0), D5(3 downto 0), D6(3 downto 0), D7(3 downto 0),
						D8(3 downto 0), D9(3 downto 0), D10(3 downto 0), D11(3 downto 0),
						D12(3 downto 0), D13(3 downto 0), D14(3 downto 0), D15(3 downto 0), 
						y(3 downto 0));
		
	MUX_2: entity work.MUX_4_Bit_16x1
		port map(s, D0(7 downto 4), D1(7 downto 4), D2(7 downto 4), D3(7 downto 4),
						D4(7 downto 4), D5(7 downto 4), D6(7 downto 4), D7(7 downto 4),
						D8(7 downto 4), D9(7 downto 4), D10(7 downto 4), D11(7 downto 4),
						D12(7 downto 4), D13(7 downto 4), D14(7 downto 4), D15(7 downto 4),
						y(7 downto 4));
	
		
End Arch_MUX_8_Bit_16x1;
