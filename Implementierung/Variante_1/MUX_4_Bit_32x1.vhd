--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_4_Bit_32x1 is
Port(
	s: in std_logic_vector(4 downto 0);
	D0: in std_logic_vector(3 downto 0);
	D1: in std_logic_vector(3 downto 0);
	D2: in std_logic_vector(3 downto 0);
	D3: in std_logic_vector(3 downto 0);
	D4: in std_logic_vector(3 downto 0);
	D5: in std_logic_vector(3 downto 0);
	D6: in std_logic_vector(3 downto 0);
	D7: in std_logic_vector(3 downto 0);
	D8: in std_logic_vector(3 downto 0);
	D9: in std_logic_vector(3 downto 0);
	D10: in std_logic_vector(3 downto 0);
	D11: in std_logic_vector(3 downto 0);
	D12: in std_logic_vector(3 downto 0);
	D13: in std_logic_vector(3 downto 0);
	D14: in std_logic_vector(3 downto 0);
	D15: in std_logic_vector(3 downto 0);
	D16: in std_logic_vector(3 downto 0);
	D17: in std_logic_vector(3 downto 0);
	D18: in std_logic_vector(3 downto 0);
	D19: in std_logic_vector(3 downto 0);
	D20: in std_logic_vector(3 downto 0);
	D21: in std_logic_vector(3 downto 0);
	D22: in std_logic_vector(3 downto 0);
	D23: in std_logic_vector(3 downto 0);
	D24: in std_logic_vector(3 downto 0);
	D25: in std_logic_vector(3 downto 0);
	D26: in std_logic_vector(3 downto 0);
	D27: in std_logic_vector(3 downto 0);
	D28: in std_logic_vector(3 downto 0);
	D29: in std_logic_vector(3 downto 0);
	D30: in std_logic_vector(3 downto 0);
	D31: in std_logic_vector(3 downto 0);
	y: out std_logic_vector(3 downto 0)
);
End MUX_4_Bit_32x1;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_4_Bit_32x1 of MUX_4_Bit_32x1 is

Begin

	MUX_1: entity work.MUX_2_Bit_32x1
		port map(s, D0(1 downto 0), D1(1 downto 0), D2(1 downto 0), D3(1 downto 0),
						D4(1 downto 0), D5(1 downto 0), D6(1 downto 0), D7(1 downto 0),
						D8(1 downto 0), D9(1 downto 0), D10(1 downto 0), D11(1 downto 0),
						D12(1 downto 0), D13(1 downto 0), D14(1 downto 0), D15(1 downto 0),
						D16(1 downto 0), D17(1 downto 0), D18(1 downto 0), D19(1 downto 0),
						D20(1 downto 0), D21(1 downto 0), D22(1 downto 0), D23(1 downto 0),
						D24(1 downto 0), D25(1 downto 0), D26(1 downto 0), D27(1 downto 0),
						D28(1 downto 0), D29(1 downto 0), D30(1 downto 0), D31(1 downto 0), 
						y(1 downto 0));
		
	MUX_2: entity work.MUX_2_Bit_32x1
		port map(s, D0(3 downto 2), D1(3 downto 2), D2(3 downto 2), D3(3 downto 2),
						D4(3 downto 2), D5(3 downto 2), D6(3 downto 2), D7(3 downto 2),
						D8(3 downto 2), D9(3 downto 2), D10(3 downto 2), D11(3 downto 2),
						D12(3 downto 2), D13(3 downto 2), D14(3 downto 2), D15(3 downto 2),
						D16(3 downto 2), D17(3 downto 2), D18(3 downto 2), D19(3 downto 2),
						D20(3 downto 2), D21(3 downto 2), D22(3 downto 2), D23(3 downto 2),
						D24(3 downto 2), D25(3 downto 2), D26(3 downto 2), D27(3 downto 2),
						D28(3 downto 2), D29(3 downto 2), D30(3 downto 2), D31(3 downto 2),
						y(3 downto 2));
	
		
End Arch_MUX_4_Bit_32x1;
