--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Top-Level-Entity 
----------------------------------------------------------------------------------
Entity ALU_8_Bit_TOP is
Port(
	Taster_CLK: in std_logic;
	Daten1: in std_logic;
	Flipflop_Ausgang: out std_logic;
	Flipflop_Ausgang_negiert: out std_logic
);
End ALU_8_Bit_TOP;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit_TOP of ALU_8_Bit_TOP is


Begin

		
	D_Flipflop1: entity work.D_Flipflop
		port map(Taster_CLK, Daten1, Flipflop_Ausgang, Flipflop_Ausgang_negiert);
	


End Arch_ALU_8_Bit_TOP;





