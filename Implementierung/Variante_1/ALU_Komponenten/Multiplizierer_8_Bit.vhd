--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Multiplizierer_8_Bit is
Port(
	Operand_1: in std_logic_vector(7 downto 0);
	Operand_2: in std_logic_vector(7 downto 0);
	Ausgang: out std_logic_vector(15 downto 0)
);
End Multiplizierer_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Multiplizierer_8_Bit of Multiplizierer_8_Bit is

	Begin
	


End Arch_Multiplizierer_8_Bit;