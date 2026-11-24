--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity AND_16x1 is
Port(
	Operand_1_8Bit: in std_logic_vector(15 downto 0);
	Operand_2_1Bit: in std_logic;
	Ausgang: out std_logic_vector(15 downto 0)
);
End AND_16x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_AND_16x1 of AND_16x1 is

	Begin
	
	Ausgang(0) <= Operand_1_8Bit(0) AND Operand_2_1Bit;
	Ausgang(1) <= Operand_1_8Bit(1) AND Operand_2_1Bit;
	Ausgang(2) <= Operand_1_8Bit(2) AND Operand_2_1Bit;
	Ausgang(3) <= Operand_1_8Bit(3) AND Operand_2_1Bit;
	Ausgang(4) <= Operand_1_8Bit(4) AND Operand_2_1Bit;
	Ausgang(5) <= Operand_1_8Bit(5) AND Operand_2_1Bit;
	Ausgang(6) <= Operand_1_8Bit(6) AND Operand_2_1Bit;
	Ausgang(7) <= Operand_1_8Bit(7) AND Operand_2_1Bit;
	Ausgang(8) <= Operand_1_8Bit(8) AND Operand_2_1Bit;
	Ausgang(9) <= Operand_1_8Bit(9) AND Operand_2_1Bit;
	Ausgang(10) <= Operand_1_8Bit(10) AND Operand_2_1Bit;
	Ausgang(11) <= Operand_1_8Bit(11) AND Operand_2_1Bit;
	Ausgang(12) <= Operand_1_8Bit(12) AND Operand_2_1Bit;
	Ausgang(13) <= Operand_1_8Bit(13) AND Operand_2_1Bit;
	Ausgang(14) <= Operand_1_8Bit(14) AND Operand_2_1Bit;
	Ausgang(15) <= Operand_1_8Bit(15) AND Operand_2_1Bit;

End Arch_AND_16x1;