--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_2_Bit_16x1 is
Port(
	s: in std_logic_vector(4 downto 0);
	D0: in std_logic_vector(1 downto 0);
	D1: in std_logic_vector(1 downto 0);
	D2: in std_logic_vector(1 downto 0);
	D3: in std_logic_vector(1 downto 0);
	D4: in std_logic_vector(1 downto 0);
	D5: in std_logic_vector(1 downto 0);
	D6: in std_logic_vector(1 downto 0);
	D7: in std_logic_vector(1 downto 0);
	D8: in std_logic_vector(1 downto 0);
	D9: in std_logic_vector(1 downto 0);
	D10: in std_logic_vector(1 downto 0);
	D11: in std_logic_vector(1 downto 0);
	D12: in std_logic_vector(1 downto 0);
	D13: in std_logic_vector(1 downto 0);
	D14: in std_logic_vector(1 downto 0);
	D15: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
);
End MUX_2_Bit_16x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_2_Bit_16x1 of MUX_2_Bit_16x1 is

Begin

	MUX_1: entity work.MUX_1_Bit_16x1
		port map(s, D0(0), D1(0), D2(0), D3(0), D4(0), D5(0), D6(0), D7(0),
						D8(0), D9(0), D10(0), D11(0), D12(0), D13(0), D14(0), D15(0), 
						y(0));
		
	MUX_2: entity work.MUX_1_Bit_16x1
		port map(s, D0(1), D1(1), D2(1), D3(1), D4(1), D5(1), D6(1), D7(1),
						D8(1), D9(1), D10(1), D11(1), D12(1), D13(1), D14(1), D15(1),
						y(1));
	
		
End Arch_MUX_2_Bit_16x1;