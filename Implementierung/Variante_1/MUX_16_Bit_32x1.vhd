--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_16_Bit_32x1 is
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
	D16: in std_logic_vector(15 downto 0);
	D17: in std_logic_vector(15 downto 0);
	D18: in std_logic_vector(15 downto 0);
	D19: in std_logic_vector(15 downto 0);
	D20: in std_logic_vector(15 downto 0);
	D21: in std_logic_vector(15 downto 0);
	D22: in std_logic_vector(15 downto 0);
	D23: in std_logic_vector(15 downto 0);
	D24: in std_logic_vector(15 downto 0);
	D25: in std_logic_vector(15 downto 0);
	D26: in std_logic_vector(15 downto 0);
	D27: in std_logic_vector(15 downto 0);
	D28: in std_logic_vector(15 downto 0);
	D29: in std_logic_vector(15 downto 0);
	D30: in std_logic_vector(15 downto 0);
	D31: in std_logic_vector(15 downto 0);
	y: out std_logic_vector(15 downto 0)
);
End MUX_16_Bit_32x1;
----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_16_Bit_32x1 of MUX_16_Bit_32x1 is

Begin

	MUX_1: entity work.MUX_8_Bit_32x1
		port map(s, D0(7 downto 0), D1(7 downto 0), D2(7 downto 0), D3(7 downto 0),
						D4(7 downto 0), D5(7 downto 0), D6(7 downto 0), D7(7 downto 0),
						D8(7 downto 0), D9(7 downto 0), D10(7 downto 0), D11(7 downto 0),
						D12(7 downto 0), D13(7 downto 0), D14(7 downto 0), D15(7 downto 0),
						D16(7 downto 0), D17(7 downto 0), D18(7 downto 0), D19(7 downto 0),
						D20(7 downto 0), D21(7 downto 0), D22(7 downto 0), D23(7 downto 0),
						D24(7 downto 0), D25(7 downto 0), D26(7 downto 0), D27(7 downto 0),
						D28(7 downto 0), D29(7 downto 0), D30(7 downto 0), D31(7 downto 0), 
						y(7 downto 0));
		
	MUX_2: entity work.MUX_8_Bit_32x1
		port map(s, D0(15 downto 8), D1(15 downto 8), D2(15 downto 8), D3(15 downto 8),
						D4(15 downto 8), D5(15 downto 8), D6(15 downto 8), D7(15 downto 8),
						D8(15 downto 8), D9(15 downto 8), D10(15 downto 8), D11(15 downto 8),
						D12(15 downto 8), D13(15 downto 8), D14(15 downto 8), D15(15 downto 8),
						D16(15 downto 8), D17(15 downto 8), D18(15 downto 8), D19(15 downto 8),
						D20(15 downto 8), D21(15 downto 8), D22(15 downto 8), D23(15 downto 8),
						D24(15 downto 8), D25(15 downto 8), D26(15 downto 8), D27(15 downto 8),
						D28(15 downto 8), D29(15 downto 8), D30(15 downto 8), D31(15 downto 8),
						y(15 downto 8));
	
		
End Arch_MUX_16_Bit_32x1;
