--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity MUX_1_Bit_2x1 is
Port(
	s: in std_logic;
	D0: in std_logic;
	D1: in std_logic;
	y: out std_logic
);
End MUX_1_Bit_2x1;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_MUX_1_Bit_2x1 of MUX_1_Bit_2x1 is


Begin

	y <= (D0 AND not s) OR (D1 AND s);

End Arch_MUX_1_Bit_2x1;


