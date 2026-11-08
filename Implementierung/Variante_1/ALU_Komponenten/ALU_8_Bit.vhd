--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity ALU_8_Bit is
Port(
    CLK: in std_logic;
    Daten: in std_logic_vector(7 downto 0);
    Operation: in std_logic_vector(7 downto 0);
    Akkumulatorwert: out std_logic_vector(7 downto 0)
);
End ALU_8_Bit;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_ALU_8_Bit of ALU_8_Bit is

begin

	--Hier findet später die eigentliche Implementierung der 8-Bit-ALU statt.
	
	
	--Die folgenden Zeilen dienen nur zu Testzwecken
	Akkumulatorwert <= Daten;



End Arch_ALU_8_Bit;