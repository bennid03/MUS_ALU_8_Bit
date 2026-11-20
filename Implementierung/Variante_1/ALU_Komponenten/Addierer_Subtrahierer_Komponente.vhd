--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Addierer_Subtrahierer_Komponente is
Port(
	A_S: in std_logic;
	Uebertrag_In: in std_logic;
	Summand_1: in std_logic;
	Summand_2: in std_logic;
	Ergebnis: out std_logic;
	Uebertrag_Out: out std_logic
);
End Addierer_Subtrahierer_Komponente;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Addierer_Subtrahierer_Komponente of Addierer_Subtrahierer_Komponente is
	
	signal a: std_logic;
	signal b: std_logic;
	signal c: std_logic;
	signal d: std_logic;

	
	Begin
	
	a <= Summand_2 XOR A_S;
	b <= Summand_1 XOR a;
	c <= Summand_1 AND a;
	d <= b AND Uebertrag_In;
	
	Ergebnis <= b XOR Uebertrag_In;
	Uebertrag_Out <= c OR d;
	
End Arch_Addierer_Subtrahierer_Komponente;