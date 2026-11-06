--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Addierer_Komponente is
Port(
	Uebertrag_In: in std_logic;
	Summand_1: in std_logic;
	Summand_2: in std_logic;
	Ergebnis: out std_logic;
	Uebertrag_Out: out std_logic
);
End Addierer_Komponente;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Addierer_Komponente of Addierer_Komponente is
	
	signal a: std_logic;
	signal b: std_logic;
	signal c: std_logic;

	
	Begin

	a <= Summand_1 XOR Summand_2;
	b <= Summand_1 AND Summand_2;
	c <= a AND Uebertrag_In;
	
	Ergebnis <= a XOR Uebertrag_In;
	Uebertrag_Out <= c OR b;
	
End Arch_Addierer_Komponente;


