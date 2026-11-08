--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity INV_8_Bit is
Port(
	Operand: in std_logic_vector(7 downto 0);
	Ausgang: out std_logic_vector(7 downto 0)
);
End INV_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_INV_8_Bit of INV_8_Bit is

	Begin
	
	Ausgang(0) <= not Operand(0);
	Ausgang(1) <= not Operand(1);
	Ausgang(2) <= not Operand(2);
	Ausgang(3) <= not Operand(3);
	Ausgang(4) <= not Operand(4);
	Ausgang(5) <= not Operand(5);
	Ausgang(6) <= not Operand(6);
	Ausgang(7) <= not Operand(7);

End Arch_INV_8_Bit;
