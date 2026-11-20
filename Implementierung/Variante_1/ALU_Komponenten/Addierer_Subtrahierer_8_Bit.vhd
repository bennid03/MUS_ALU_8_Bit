--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Addierer_Subtrahierer_8_Bit is
Port(
	A_S: in std_logic;
	In1: in std_logic_vector(7 downto 0);
	In2: in std_logic_vector(7 downto 0);
	Summe: out std_logic_vector(7 downto 0);
	Uebertrag: out std_logic
);
End Addierer_Subtrahierer_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Addierer_Subtrahierer_8_Bit of Addierer_Subtrahierer_8_Bit is

	signal Addierer_Subtrahierer_Komponente_0_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_1_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_2_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_3_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_4_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_5_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_6_Ergebnis: std_logic;
	signal Addierer_Subtrahierer_Komponente_7_Ergebnis: std_logic;
	
	signal Addierer_Subtrahierer_Komponente_0_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_1_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_2_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_3_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_4_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_5_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_6_Uebertrag: std_logic;
	signal Addierer_Subtrahierer_Komponente_7_Uebertrag: std_logic;
	

Begin
	
	Addierer_Subtrahierer_Komponente_0: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, A_S, In1(0), In2(0),
			Addierer_Subtrahierer_Komponente_0_Ergebnis,
			Addierer_Subtrahierer_Komponente_0_Uebertrag);
			
	Addierer_Subtrahierer_Komponente_1: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_0_Uebertrag,
			In1(1), In2(1),
			Addierer_Subtrahierer_Komponente_1_Ergebnis,
			Addierer_Subtrahierer_Komponente_1_Uebertrag);
	
	Addierer_Subtrahierer_Komponente_2: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_1_Uebertrag,
			In1(2), In2(2),
			Addierer_Subtrahierer_Komponente_2_Ergebnis,
			Addierer_Subtrahierer_Komponente_2_Uebertrag);
	
	Addierer_Subtrahierer_Komponente_3: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_2_Uebertrag,
			In1(3), In2(3),
			Addierer_Subtrahierer_Komponente_3_Ergebnis,
			Addierer_Subtrahierer_Komponente_3_Uebertrag);
	
	Addierer_Subtrahierer_Komponente_4: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_3_Uebertrag,
			In1(4), In2(4),
			Addierer_Subtrahierer_Komponente_4_Ergebnis,
			Addierer_Subtrahierer_Komponente_4_Uebertrag);
			
	Addierer_Subtrahierer_Komponente_5: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_4_Uebertrag,
			In1(5), In2(5),
			Addierer_Subtrahierer_Komponente_5_Ergebnis,
			Addierer_Subtrahierer_Komponente_5_Uebertrag);
		
	Addierer_Subtrahierer_Komponente_6: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_5_Uebertrag,
			In1(6), In2(6),
			Addierer_Subtrahierer_Komponente_6_Ergebnis,
			Addierer_Subtrahierer_Komponente_6_Uebertrag);
		
	Addierer_Subtrahierer_Komponente_7: entity work.Addierer_Subtrahierer_Komponente
		port map(A_S, Addierer_Subtrahierer_Komponente_6_Uebertrag,
			In1(7), In2(7),
			Addierer_Subtrahierer_Komponente_7_Ergebnis,
			Addierer_Subtrahierer_Komponente_7_Uebertrag);

			
	Uebertrag <= (not A_S) AND Addierer_Subtrahierer_Komponente_7_Uebertrag;
	Summe(0) <= Addierer_Subtrahierer_Komponente_0_Ergebnis;
	Summe(1) <= Addierer_Subtrahierer_Komponente_1_Ergebnis;
	Summe(2) <= Addierer_Subtrahierer_Komponente_2_Ergebnis;
	Summe(3) <= Addierer_Subtrahierer_Komponente_3_Ergebnis;
	Summe(4) <= Addierer_Subtrahierer_Komponente_4_Ergebnis;
	Summe(5) <= Addierer_Subtrahierer_Komponente_5_Ergebnis;
	Summe(6) <= Addierer_Subtrahierer_Komponente_6_Ergebnis;
	Summe(7) <= Addierer_Subtrahierer_Komponente_7_Ergebnis;
	
		
End Arch_Addierer_Subtrahierer_8_Bit;

