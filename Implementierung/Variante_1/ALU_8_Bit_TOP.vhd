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
	Daten: in std_logic_vector(7 downto 0);
	Load: in std_logic;
	sync_Reset: in std_logic;
	Register_Ausgang: out std_logic_vector(7 downto 0)
);
End ALU_8_Bit_TOP;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit_TOP of ALU_8_Bit_TOP is

	signal Register_Ausgang_negiert: std_logic_vector(7 downto 0);
	signal async_Reset: std_logic:= '0';

Begin

		
	Register_8_Bit_1: entity work.Register_8_Bit
		port map(Taster_CLK, Load, async_Reset, sync_Reset, Daten, Register_Ausgang, Register_Ausgang_negiert);


End Arch_ALU_8_Bit_TOP;





