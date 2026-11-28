--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Speicher_8_Bit_64_Adressen is
Port(
	Adresse: in std_logic_vector(5 downto 0);
	Daten_Eingang: in std_logic_vector(7 downto 0);
	async_reset: in std_logic;
	sync_reset: in std_logic;
	CLK: in std_logic;
	read_write: in std_logic;
	Ausgang: out std_logic_vector(7 downto 0)
);
End Speicher_8_Bit_64_Adressen;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Speicher_8_Bit_64_Adressen of Speicher_8_Bit_64_Adressen is

	signal read_write_Speicher_0: std_logic;
	signal read_write_Speicher_1: std_logic;
	signal Speicher_0_Ausgang: std_logic_vector(7 downto 0);
	signal Speicher_1_Ausgang: std_logic_vector(7 downto 0);

	Begin
	
	read_write_Speicher_0 <= read_write AND not Adresse(5);
	read_write_Speicher_1 <= read_write AND Adresse(5);
	
	Speicher_0: entity work.Speicher_8_Bit_32_Adressen
		port map( Adresse(4 downto 0), Daten_Eingang,
			async_reset, sync_reset, CLK,
			read_write_Speicher_0, Speicher_0_Ausgang);
			
	Speicher_1: entity work.Speicher_8_Bit_32_Adressen
		port map( Adresse(4 downto 0), Daten_Eingang,
			async_reset, sync_reset, CLK,
			read_write_Speicher_1, Speicher_1_Ausgang);
			
	MUX: entity work.MUX_8_Bit_2x1
		port map( Adresse(5), Speicher_0_Ausgang,
			Speicher_1_Ausgang, Ausgang);

End Arch_Speicher_8_Bit_64_Adressen;