--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Multiplizierer_8_Bit is
Port(
	Operand_1: in std_logic_vector(7 downto 0);
	Operand_2: in std_logic_vector(7 downto 0);
	Ausgang: out std_logic_vector(15 downto 0)
);
End Multiplizierer_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Multiplizierer_8_Bit of Multiplizierer_8_Bit is

	signal AND_8x1_0_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_1_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_2_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_3_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_4_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_5_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_6_Ergebnis: std_logic_vector(7 downto 0);
	signal AND_8x1_7_Ergebnis: std_logic_vector(7 downto 0);
	
	signal Summand1_Addierer_0: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_0: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_1: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_1: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_2: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_2: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_3: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_3: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_4: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_4: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_5: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_5: std_logic_vector(7 downto 0);
	signal Summand1_Addierer_6: std_logic_vector(7 downto 0);
	signal Summand2_Addierer_6: std_logic_vector(7 downto 0);
	
	signal Addierer_8_Bit_0_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_1_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_2_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_3_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_4_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_5_Ergebnis: std_logic_vector(7 downto 0);
	signal Addierer_8_Bit_6_Ergebnis: std_logic_vector(7 downto 0);
	
	signal Addierer_8_Bit_0_Uebertrag: std_logic;
	signal Addierer_8_Bit_1_Uebertrag: std_logic;
	signal Addierer_8_Bit_2_Uebertrag: std_logic;
	signal Addierer_8_Bit_3_Uebertrag: std_logic;
	signal Addierer_8_Bit_4_Uebertrag: std_logic;
	signal Addierer_8_Bit_5_Uebertrag: std_logic;
	signal Addierer_8_Bit_6_Uebertrag: std_logic;
	
	Begin
	
	AND_8x1_0: entity work.AND_8x1
		port map(Operand_1, Operand_2(0), AND_8x1_0_Ergebnis);

	AND_8x1_1: entity work.AND_8x1
		port map(Operand_1, Operand_2(1), AND_8x1_1_Ergebnis);

	AND_8x1_2: entity work.AND_8x1
		port map(Operand_1, Operand_2(2), AND_8x1_2_Ergebnis);

	AND_8x1_3: entity work.AND_8x1
		port map(Operand_1, Operand_2(3), AND_8x1_3_Ergebnis);

	AND_8x1_4: entity work.AND_8x1
		port map(Operand_1, Operand_2(4), AND_8x1_4_Ergebnis);

	AND_8x1_5: entity work.AND_8x1
		port map(Operand_1, Operand_2(5), AND_8x1_5_Ergebnis);

	AND_8x1_6: entity work.AND_8x1
		port map(Operand_1, Operand_2(6), AND_8x1_6_Ergebnis);

	AND_8x1_7: entity work.AND_8x1
		port map(Operand_1, Operand_2(7), AND_8x1_7_Ergebnis);
		
	Summand1_Addierer_0(0) <= AND_8x1_0_Ergebnis(1);
	Summand1_Addierer_0(1) <= AND_8x1_1_Ergebnis(1);
	Summand1_Addierer_0(2) <= AND_8x1_2_Ergebnis(1);
	Summand1_Addierer_0(3) <= AND_8x1_3_Ergebnis(1);
	Summand1_Addierer_0(4) <= AND_8x1_4_Ergebnis(1);
	Summand1_Addierer_0(5) <= AND_8x1_5_Ergebnis(1);
	Summand1_Addierer_0(6) <= AND_8x1_6_Ergebnis(1);
	Summand1_Addierer_0(7) <= AND_8x1_7_Ergebnis(1);
	
	Summand2_Addierer_0(0) <= AND_8x1_1_Ergebnis(0);
	Summand2_Addierer_0(1) <= AND_8x1_2_Ergebnis(0);
	Summand2_Addierer_0(2) <= AND_8x1_3_Ergebnis(0);
	Summand2_Addierer_0(3) <= AND_8x1_4_Ergebnis(0);
	Summand2_Addierer_0(4) <= AND_8x1_5_Ergebnis(0);
	Summand2_Addierer_0(5) <= AND_8x1_6_Ergebnis(0);
	Summand2_Addierer_0(6) <= AND_8x1_7_Ergebnis(0);
	Summand2_Addierer_0(7) <= '0';
		
	Addierer_8_Bit_0: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_0, Summand2_Addierer_0,
		Addierer_8_Bit_0_Ergebnis, Addierer_8_Bit_0_Uebertrag);
		
	Summand1_Addierer_1(0) <= Addierer_8_Bit_0_Ergebnis(1);
	Summand1_Addierer_1(1) <= Addierer_8_Bit_0_Ergebnis(2);
	Summand1_Addierer_1(2) <= Addierer_8_Bit_0_Ergebnis(3);
	Summand1_Addierer_1(3) <= Addierer_8_Bit_0_Ergebnis(4);
	Summand1_Addierer_1(4) <= Addierer_8_Bit_0_Ergebnis(5);
	Summand1_Addierer_1(5) <= Addierer_8_Bit_0_Ergebnis(6);
	Summand1_Addierer_1(6) <= Addierer_8_Bit_0_Ergebnis(7);
	Summand1_Addierer_1(7) <= Addierer_8_Bit_0_Uebertrag;
	
	Summand2_Addierer_1(0) <= AND_8x1_0_Ergebnis(2);
	Summand2_Addierer_1(1) <= AND_8x1_1_Ergebnis(2);
	Summand2_Addierer_1(2) <= AND_8x1_2_Ergebnis(2);
	Summand2_Addierer_1(3) <= AND_8x1_3_Ergebnis(2);
	Summand2_Addierer_1(4) <= AND_8x1_4_Ergebnis(2);
	Summand2_Addierer_1(5) <= AND_8x1_5_Ergebnis(2);
	Summand2_Addierer_1(6) <= AND_8x1_6_Ergebnis(2);
	Summand2_Addierer_1(7) <= AND_8x1_7_Ergebnis(2);
	
	Addierer_8_Bit_1: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_1, Summand2_Addierer_1,
		Addierer_8_Bit_1_Ergebnis, Addierer_8_Bit_1_Uebertrag);
		
	Summand1_Addierer_2(0) <= Addierer_8_Bit_1_Ergebnis(1);
	Summand1_Addierer_2(1) <= Addierer_8_Bit_1_Ergebnis(2);
	Summand1_Addierer_2(2) <= Addierer_8_Bit_1_Ergebnis(3);
	Summand1_Addierer_2(3) <= Addierer_8_Bit_1_Ergebnis(4);
	Summand1_Addierer_2(4) <= Addierer_8_Bit_1_Ergebnis(5);
	Summand1_Addierer_2(5) <= Addierer_8_Bit_1_Ergebnis(6);
	Summand1_Addierer_2(6) <= Addierer_8_Bit_1_Ergebnis(7);
	Summand1_Addierer_2(7) <= Addierer_8_Bit_1_Uebertrag;
	
	Summand2_Addierer_2(0) <= AND_8x1_0_Ergebnis(3);
	Summand2_Addierer_2(1) <= AND_8x1_1_Ergebnis(3);
	Summand2_Addierer_2(2) <= AND_8x1_2_Ergebnis(3);
	Summand2_Addierer_2(3) <= AND_8x1_3_Ergebnis(3);
	Summand2_Addierer_2(4) <= AND_8x1_4_Ergebnis(3);
	Summand2_Addierer_2(5) <= AND_8x1_5_Ergebnis(3);
	Summand2_Addierer_2(6) <= AND_8x1_6_Ergebnis(3);
	Summand2_Addierer_2(7) <= AND_8x1_7_Ergebnis(3);
	
	Addierer_8_Bit_2: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_2, Summand2_Addierer_2,
		Addierer_8_Bit_2_Ergebnis, Addierer_8_Bit_2_Uebertrag);
		
	Summand1_Addierer_3(0) <= Addierer_8_Bit_2_Ergebnis(1);
	Summand1_Addierer_3(1) <= Addierer_8_Bit_2_Ergebnis(2);
	Summand1_Addierer_3(2) <= Addierer_8_Bit_2_Ergebnis(3);
	Summand1_Addierer_3(3) <= Addierer_8_Bit_2_Ergebnis(4);
	Summand1_Addierer_3(4) <= Addierer_8_Bit_2_Ergebnis(5);
	Summand1_Addierer_3(5) <= Addierer_8_Bit_2_Ergebnis(6);
	Summand1_Addierer_3(6) <= Addierer_8_Bit_2_Ergebnis(7);
	Summand1_Addierer_3(7) <= Addierer_8_Bit_2_Uebertrag;
	
	Summand2_Addierer_3(0) <= AND_8x1_0_Ergebnis(4);
	Summand2_Addierer_3(1) <= AND_8x1_1_Ergebnis(4);
	Summand2_Addierer_3(2) <= AND_8x1_2_Ergebnis(4);
	Summand2_Addierer_3(3) <= AND_8x1_3_Ergebnis(4);
	Summand2_Addierer_3(4) <= AND_8x1_4_Ergebnis(4);
	Summand2_Addierer_3(5) <= AND_8x1_5_Ergebnis(4);
	Summand2_Addierer_3(6) <= AND_8x1_6_Ergebnis(4);
	Summand2_Addierer_3(7) <= AND_8x1_7_Ergebnis(4);
	
	Addierer_8_Bit_3: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_3, Summand2_Addierer_3,
		Addierer_8_Bit_3_Ergebnis, Addierer_8_Bit_3_Uebertrag);
		
	Summand1_Addierer_4(0) <= Addierer_8_Bit_3_Ergebnis(1);
	Summand1_Addierer_4(1) <= Addierer_8_Bit_3_Ergebnis(2);
	Summand1_Addierer_4(2) <= Addierer_8_Bit_3_Ergebnis(3);
	Summand1_Addierer_4(3) <= Addierer_8_Bit_3_Ergebnis(4);
	Summand1_Addierer_4(4) <= Addierer_8_Bit_3_Ergebnis(5);
	Summand1_Addierer_4(5) <= Addierer_8_Bit_3_Ergebnis(6);
	Summand1_Addierer_4(6) <= Addierer_8_Bit_3_Ergebnis(7);
	Summand1_Addierer_4(7) <= Addierer_8_Bit_3_Uebertrag;
	
	Summand2_Addierer_4(0) <= AND_8x1_0_Ergebnis(5);
	Summand2_Addierer_4(1) <= AND_8x1_1_Ergebnis(5);
	Summand2_Addierer_4(2) <= AND_8x1_2_Ergebnis(5);
	Summand2_Addierer_4(3) <= AND_8x1_3_Ergebnis(5);
	Summand2_Addierer_4(4) <= AND_8x1_4_Ergebnis(5);
	Summand2_Addierer_4(5) <= AND_8x1_5_Ergebnis(5);
	Summand2_Addierer_4(6) <= AND_8x1_6_Ergebnis(5);
	Summand2_Addierer_4(7) <= AND_8x1_7_Ergebnis(5);
	
	Addierer_8_Bit_4: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_4, Summand2_Addierer_4,
		Addierer_8_Bit_4_Ergebnis, Addierer_8_Bit_4_Uebertrag);
	
	Summand1_Addierer_5(0) <= Addierer_8_Bit_4_Ergebnis(1);
	Summand1_Addierer_5(1) <= Addierer_8_Bit_4_Ergebnis(2);
	Summand1_Addierer_5(2) <= Addierer_8_Bit_4_Ergebnis(3);
	Summand1_Addierer_5(3) <= Addierer_8_Bit_4_Ergebnis(4);
	Summand1_Addierer_5(4) <= Addierer_8_Bit_4_Ergebnis(5);
	Summand1_Addierer_5(5) <= Addierer_8_Bit_4_Ergebnis(6);
	Summand1_Addierer_5(6) <= Addierer_8_Bit_4_Ergebnis(7);
	Summand1_Addierer_5(7) <= Addierer_8_Bit_4_Uebertrag;
	
	Summand2_Addierer_5(0) <= AND_8x1_0_Ergebnis(6);
	Summand2_Addierer_5(1) <= AND_8x1_1_Ergebnis(6);
	Summand2_Addierer_5(2) <= AND_8x1_2_Ergebnis(6);
	Summand2_Addierer_5(3) <= AND_8x1_3_Ergebnis(6);
	Summand2_Addierer_5(4) <= AND_8x1_4_Ergebnis(6);
	Summand2_Addierer_5(5) <= AND_8x1_5_Ergebnis(6);
	Summand2_Addierer_5(6) <= AND_8x1_6_Ergebnis(6);
	Summand2_Addierer_5(7) <= AND_8x1_7_Ergebnis(6);
	
	Addierer_8_Bit_5: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_5, Summand2_Addierer_5,
		Addierer_8_Bit_5_Ergebnis, Addierer_8_Bit_5_Uebertrag);
	
	Summand1_Addierer_6(0) <= Addierer_8_Bit_5_Ergebnis(1);
	Summand1_Addierer_6(1) <= Addierer_8_Bit_5_Ergebnis(2);
	Summand1_Addierer_6(2) <= Addierer_8_Bit_5_Ergebnis(3);
	Summand1_Addierer_6(3) <= Addierer_8_Bit_5_Ergebnis(4);
	Summand1_Addierer_6(4) <= Addierer_8_Bit_5_Ergebnis(5);
	Summand1_Addierer_6(5) <= Addierer_8_Bit_5_Ergebnis(6);
	Summand1_Addierer_6(6) <= Addierer_8_Bit_5_Ergebnis(7);
	Summand1_Addierer_6(7) <= Addierer_8_Bit_5_Uebertrag;
	
	Summand2_Addierer_6(0) <= AND_8x1_0_Ergebnis(7);
	Summand2_Addierer_6(1) <= AND_8x1_1_Ergebnis(7);
	Summand2_Addierer_6(2) <= AND_8x1_2_Ergebnis(7);
	Summand2_Addierer_6(3) <= AND_8x1_3_Ergebnis(7);
	Summand2_Addierer_6(4) <= AND_8x1_4_Ergebnis(7);
	Summand2_Addierer_6(5) <= AND_8x1_5_Ergebnis(7);
	Summand2_Addierer_6(6) <= AND_8x1_6_Ergebnis(7);
	Summand2_Addierer_6(7) <= AND_8x1_7_Ergebnis(7);
	
	Addierer_8_Bit_6: entity work.Addierer_8_Bit
		port map(Summand1_Addierer_6, Summand2_Addierer_6,
		Addierer_8_Bit_6_Ergebnis, Addierer_8_Bit_6_Uebertrag);
	
	Ausgang(0) <= AND_8x1_0_Ergebnis(0);
	Ausgang(1) <= Addierer_8_Bit_0_Ergebnis(0);
	Ausgang(2) <= Addierer_8_Bit_1_Ergebnis(0);
	Ausgang(3) <= Addierer_8_Bit_2_Ergebnis(0);
	Ausgang(4) <= Addierer_8_Bit_3_Ergebnis(0);
	Ausgang(5) <= Addierer_8_Bit_4_Ergebnis(0);
	Ausgang(6) <= Addierer_8_Bit_5_Ergebnis(0);
	Ausgang(7) <= Addierer_8_Bit_6_Ergebnis(0);
	Ausgang(8) <= Addierer_8_Bit_6_Ergebnis(1);
	Ausgang(9) <= Addierer_8_Bit_6_Ergebnis(2);
	Ausgang(10) <= Addierer_8_Bit_6_Ergebnis(3);
	Ausgang(11) <= Addierer_8_Bit_6_Ergebnis(4);
	Ausgang(12) <= Addierer_8_Bit_6_Ergebnis(5);
	Ausgang(13) <= Addierer_8_Bit_6_Ergebnis(6);
	Ausgang(14) <= Addierer_8_Bit_6_Ergebnis(7);
	Ausgang(15) <= Addierer_8_Bit_6_Uebertrag;

End Arch_Multiplizierer_8_Bit;