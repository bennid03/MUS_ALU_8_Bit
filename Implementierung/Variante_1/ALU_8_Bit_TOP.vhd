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
	ALU_CLK: in std_logic;
	ALU_Daten: in std_logic_vector(7 downto 0);
	ALU_Akkumulatorwert: out std_logic_vector(7 downto 0);
	Taster_Auswahl_Operation: in std_logic;
	Sieben_Segment_5: out std_logic_vector (6 downto 0);
	Sieben_Segment_4: out std_logic_vector (6 downto 0);
	Sieben_Segment_3: out std_logic_vector (6 downto 0)
);
End ALU_8_Bit_TOP;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit_TOP of ALU_8_Bit_TOP is
	
	signal Operation: std_logic_vector(7 downto 0);
	
	
Begin
	
	--Über die folgende Einheit legt der Nutzer fest, welche Operation in der ALU durchgeführt werden soll.
	Auswahl_Operation_1: entity work.Auswahl_Operation
		port map(CLK_50MHz, Taster_Auswahl_Operation, Sieben_Segment_5, Sieben_Segment_4, Sieben_Segment_3,
					Operation);
					
	--In der folgenden Einheit ist die eigentliche ALU implementiert
	ALU_8_Bit_1: entity work.ALU_8_Bit
		port map(ALU_CLK, ALU_Daten, Operation, ALU_Akkumulatorwert);
		

End Arch_ALU_8_Bit_TOP;





