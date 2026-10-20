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
	Daten: in std_logic;
	Load: in std_logic;
	Register_Ausgang: out std_logic;
	Register_Ausgang_negiert: out std_logic
);
End ALU_8_Bit_TOP;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit_TOP of ALU_8_Bit_TOP is


Begin

		
	Register1: entity work.Register_1_Bit
		port map(Taster_CLK, Load, Daten, Register_Ausgang, Register_Ausgang_negiert);
	


End Arch_ALU_8_Bit_TOP;





