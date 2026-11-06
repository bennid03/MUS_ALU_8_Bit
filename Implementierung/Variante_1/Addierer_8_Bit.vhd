--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Addierer_8_Bit is
Port(
	Summand_1: in std_logic_vector(7 downto 0);
	Summand_2: in std_logic_vector(7 downto 0);
	Summe: out std_logic_vector(7 downto 0);
	Uebertrag: out std_logic
);
End Addierer_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Addierer_8_Bit of Addierer_8_Bit is

	signal Addierer_Komponente_1_Ergebnis: std_logic;
	signal Addierer_Komponente_2_Ergebnis: std_logic;
	signal Addierer_Komponente_3_Ergebnis: std_logic;
	signal Addierer_Komponente_4_Ergebnis: std_logic;
	signal Addierer_Komponente_5_Ergebnis: std_logic;
	signal Addierer_Komponente_6_Ergebnis: std_logic;
	signal Addierer_Komponente_7_Ergebnis: std_logic;
	
	signal Addierer_Komponente_1_Uebertrag: std_logic;
	signal Addierer_Komponente_2_Uebertrag: std_logic;
	signal Addierer_Komponente_3_Uebertrag: std_logic;
	signal Addierer_Komponente_4_Uebertrag: std_logic;
	signal Addierer_Komponente_5_Uebertrag: std_logic;
	signal Addierer_Komponente_6_Uebertrag: std_logic;
	signal Addierer_Komponente_7_Uebertrag: std_logic;
	
	signal a: std_logic;
	

Begin

	a <= Summand_1(0) and Summand_2(0);
	
	Addierer_Komponente_1: entity work.Addierer_Komponente
		port map(a, Summand_1(1), Summand_2(1), Addierer_Komponente_1_Ergebnis, Addierer_Komponente_1_Uebertrag);
	
	Addierer_Komponente_2: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(2), Summand_2(2), Addierer_Komponente_2_Ergebnis, 
					Addierer_Komponente_2_Uebertrag);
					
	Addierer_Komponente_3: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(3), Summand_2(3), Addierer_Komponente_3_Ergebnis, 
					Addierer_Komponente_3_Uebertrag);
					
	Addierer_Komponente_4: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(4), Summand_2(4), Addierer_Komponente_4_Ergebnis, 
					Addierer_Komponente_4_Uebertrag);
					
	Addierer_Komponente_5: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(5), Summand_2(5), Addierer_Komponente_5_Ergebnis, 
					Addierer_Komponente_5_Uebertrag);
					
	Addierer_Komponente_6: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(6), Summand_2(6), Addierer_Komponente_6_Ergebnis, 
					Addierer_Komponente_6_Uebertrag);
					
	Addierer_Komponente_7: entity work.Addierer_Komponente
		port map(Addierer_Komponente_1_Uebertrag, Summand_1(7), Summand_2(7), Addierer_Komponente_7_Ergebnis, 
					Addierer_Komponente_7_Uebertrag);
	
	
	Summe(0) <= Summand_1(0) XOR Summand_2(0);
	Summe(1) <= Addierer_Komponente_1_Ergebnis;
	Summe(2) <= Addierer_Komponente_2_Ergebnis;
	Summe(3) <= Addierer_Komponente_3_Ergebnis;
	Summe(4) <= Addierer_Komponente_4_Ergebnis;
	Summe(5) <= Addierer_Komponente_5_Ergebnis;
	Summe(6) <= Addierer_Komponente_6_Ergebnis;
	Summe(7) <= Addierer_Komponente_7_Ergebnis;
	
		
End Arch_Addierer_8_Bit;

