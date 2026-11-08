--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity NAND_8_Bit is
Port(
	Operand_1: in std_logic_vector(7 downto 0);
	Operand_2: in std_logic_vector(7 downto 0);
	Ausgang: out std_logic_vector(7 downto 0)
);
End NAND_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_NAND_8_Bit of NAND_8_Bit is

	Begin
	
	Ausgang(0) <= Operand_1(0) NAND Operand_2(0);
	Ausgang(1) <= Operand_1(1) NAND Operand_2(1);
	Ausgang(2) <= Operand_1(2) NAND Operand_2(2);
	Ausgang(3) <= Operand_1(3) NAND Operand_2(3);
	Ausgang(4) <= Operand_1(4) NAND Operand_2(4);
	Ausgang(5) <= Operand_1(5) NAND Operand_2(5);
	Ausgang(6) <= Operand_1(6) NAND Operand_2(6);
	Ausgang(7) <= Operand_1(7) NAND Operand_2(7);

End Arch_NAND_8_Bit;
