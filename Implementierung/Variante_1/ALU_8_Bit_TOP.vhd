--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Top-Level-Entity 
----------------------------------------------------------------------------------
Entity ALU_8_Bit_TOP is
Port(
	CLK_50MHz: in std_logic;
	Taster_CLK: in std_logic;
	Taster_Auswahl_Operation: in std_logic;
	Operation: out std_logic_vector(7 downto 0);
	Sieben_Segment_5: out std_logic_vector (6 downto 0);
	Sieben_Segment_4: out std_logic_vector (6 downto 0);
	Sieben_Segment_3: out std_logic_vector (6 downto 0)
);
End ALU_8_Bit_TOP;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit_TOP of ALU_8_Bit_TOP is

Begin

	Auswahl_Operation_1: entity work.Auswahl_Operation
		port map(CLK_50MHz, Taster_Auswahl_Operation, Sieben_Segment_5, Sieben_Segment_4, Sieben_Segment_3,
					Operation);
		

End Arch_ALU_8_Bit_TOP;





