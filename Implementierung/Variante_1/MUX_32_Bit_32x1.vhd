--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_32_Bit_32x1 is
Port(
	s: in std_logic_vector(4 downto 0);
	D0: in std_logic_vector(31 downto 0);
	D1: in std_logic_vector(31 downto 0);
	D2: in std_logic_vector(31 downto 0);
	D3: in std_logic_vector(31 downto 0);
	D4: in std_logic_vector(31 downto 0);
	D5: in std_logic_vector(31 downto 0);
	D6: in std_logic_vector(31 downto 0);
	D7: in std_logic_vector(31 downto 0);
	D8: in std_logic_vector(31 downto 0);
	D9: in std_logic_vector(31 downto 0);
	D10: in std_logic_vector(31 downto 0);
	D11: in std_logic_vector(31 downto 0);
	D12: in std_logic_vector(31 downto 0);
	D13: in std_logic_vector(31 downto 0);
	D14: in std_logic_vector(31 downto 0);
	D15: in std_logic_vector(31 downto 0);
	D16: in std_logic_vector(31 downto 0);
	D17: in std_logic_vector(31 downto 0);
	D18: in std_logic_vector(31 downto 0);
	D19: in std_logic_vector(31 downto 0);
	D20: in std_logic_vector(31 downto 0);
	D21: in std_logic_vector(31 downto 0);
	D22: in std_logic_vector(31 downto 0);
	D23: in std_logic_vector(31 downto 0);
	D24: in std_logic_vector(31 downto 0);
	D25: in std_logic_vector(31 downto 0);
	D26: in std_logic_vector(31 downto 0);
	D27: in std_logic_vector(31 downto 0);
	D28: in std_logic_vector(31 downto 0);
	D29: in std_logic_vector(31 downto 0);
	D30: in std_logic_vector(31 downto 0);
	D31: in std_logic_vector(31 downto 0);
	y: out std_logic_vector(31 downto 0)
);
End MUX_32_Bit_32x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_32_Bit_32x1 of MUX_32_Bit_32x1 is

Begin

	MUX_1: entity work.MUX_16_Bit_32x1
		port map(s, D0(15 downto 0), D1(15 downto 0), D2(15 downto 0), D3(15 downto 0),
						D4(15 downto 0), D5(15 downto 0), D6(15 downto 0), D7(15 downto 0),
						D8(15 downto 0), D9(15 downto 0), D10(15 downto 0), D11(15 downto 0),
						D12(15 downto 0), D13(15 downto 0), D14(15 downto 0), D15(15 downto 0),
						D16(15 downto 0), D17(15 downto 0), D18(15 downto 0), D19(15 downto 0),
						D20(15 downto 0), D21(15 downto 0), D22(15 downto 0), D23(15 downto 0),
						D24(15 downto 0), D25(15 downto 0), D26(15 downto 0), D27(15 downto 0),
						D28(15 downto 0), D29(15 downto 0), D30(15 downto 0), D31(15 downto 0), 
						y(15 downto 0));
		
	MUX_2: entity work.MUX_16_Bit_32x1
		port map(s, D0(31 downto 16), D1(31 downto 16), D2(31 downto 16), D3(31 downto 16),
						D4(31 downto 16), D5(31 downto 16), D6(31 downto 16), D7(31 downto 16),
						D8(31 downto 16), D9(31 downto 16), D10(31 downto 16), D11(31 downto 16),
						D12(31 downto 16), D13(31 downto 16), D14(31 downto 16), D15(31 downto 16),
						D16(31 downto 16), D17(31 downto 16), D18(31 downto 16), D19(31 downto 16),
						D20(31 downto 16), D21(31 downto 16), D22(31 downto 16), D23(31 downto 16),
						D24(31 downto 16), D25(31 downto 16), D26(31 downto 16), D27(31 downto 16),
						D28(31 downto 16), D29(31 downto 16), D30(31 downto 16), D31(31 downto 16),
						y(31 downto 16));
	
		
End Arch_MUX_32_Bit_32x1;
