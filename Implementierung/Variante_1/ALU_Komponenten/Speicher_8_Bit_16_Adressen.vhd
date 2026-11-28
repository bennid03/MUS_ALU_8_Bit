--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Speicher_8_Bit_16_Adressen is
Port(
	Adresse: in std_logic_vector(3 downto 0);
	Daten_Eingang: in std_logic_vector(7 downto 0);
	async_reset: in std_logic;
	sync_reset: in std_logic;
	CLK: in std_logic;
	read_write: in std_logic;
	Ausgang: out std_logic_vector(7 downto 0)
);
End Speicher_8_Bit_16_Adressen;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Speicher_8_Bit_16_Adressen of Speicher_8_Bit_16_Adressen is

	signal MUX_1_Ausgang: std_logic_vector(15 downto 0);
	signal AND_16x1_Ausgang: std_logic_vector(15 downto 0);
	signal Register_0_Ausgang: std_logic_vector(7 downto 0);
	signal Register_1_Ausgang: std_logic_vector(7 downto 0);
	signal Register_2_Ausgang: std_logic_vector(7 downto 0);
	signal Register_3_Ausgang: std_logic_vector(7 downto 0);
	signal Register_4_Ausgang: std_logic_vector(7 downto 0);
	signal Register_5_Ausgang: std_logic_vector(7 downto 0);
	signal Register_6_Ausgang: std_logic_vector(7 downto 0);
	signal Register_7_Ausgang: std_logic_vector(7 downto 0);
	signal Register_8_Ausgang: std_logic_vector(7 downto 0);
	signal Register_9_Ausgang: std_logic_vector(7 downto 0);
	signal Register_10_Ausgang: std_logic_vector(7 downto 0);
	signal Register_11_Ausgang: std_logic_vector(7 downto 0);
	signal Register_12_Ausgang: std_logic_vector(7 downto 0);
	signal Register_13_Ausgang: std_logic_vector(7 downto 0);
	signal Register_14_Ausgang: std_logic_vector(7 downto 0);
	signal Register_15_Ausgang: std_logic_vector(7 downto 0);

	Begin
	MUX_1: entity work.MUX_16_Bit_16x1
		port map( Adresse,
			  x"0001", x"0002", x"0004", x"0008",
			  x"0010", x"0020", x"0040", x"0080",
			  x"0100", x"0200", x"0400", x"0800",
			  x"1000", x"2000", x"4000", x"8000",
			  MUX_1_Ausgang);
		 
	AND_16x1: entity work.AND_16x1
		port map( MUX_1_Ausgang, read_write, AND_16x1_Ausgang);
		
	Register_0: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(0),
				async_reset, sync_reset, Daten_Eingang,
				Register_0_Ausgang, open);

	Register_1: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(1),
				async_reset, sync_reset, Daten_Eingang,
				Register_1_Ausgang, open);

	Register_2: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(2),
				async_reset, sync_reset, Daten_Eingang,
				Register_2_Ausgang, open);

	Register_3: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(3),
				async_reset, sync_reset, Daten_Eingang,
				Register_3_Ausgang, open);

	Register_4: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(4),
				async_reset, sync_reset, Daten_Eingang,
				Register_4_Ausgang, open);

	Register_5: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(5),
				async_reset, sync_reset, Daten_Eingang,
				Register_5_Ausgang, open);

	Register_6: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(6),
				async_reset, sync_reset, Daten_Eingang,
				Register_6_Ausgang, open);

	Register_7: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(7),
				async_reset, sync_reset, Daten_Eingang,
				Register_7_Ausgang, open);

	Register_8: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(8),
				async_reset, sync_reset, Daten_Eingang,
				Register_8_Ausgang, open);

	Register_9: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(9),
				async_reset, sync_reset, Daten_Eingang,
				Register_9_Ausgang, open);

	Register_10: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(10),
				async_reset, sync_reset, Daten_Eingang,
				Register_10_Ausgang, open);

	Register_11: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(11),
				async_reset, sync_reset, Daten_Eingang,
				Register_11_Ausgang, open);

	Register_12: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(12),
				async_reset, sync_reset, Daten_Eingang,
				Register_12_Ausgang, open);

	Register_13: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(13),
				async_reset, sync_reset, Daten_Eingang,
				Register_13_Ausgang, open);

	Register_14: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(14),
				async_reset, sync_reset, Daten_Eingang,
				Register_14_Ausgang, open);

	Register_15: entity work.Register_8_Bit
			port map( CLK,
				AND_16x1_Ausgang(15),
				async_reset, sync_reset, Daten_Eingang,
				Register_15_Ausgang, open);
		
	MUX_2: entity work.MUX_8_Bit_16x1
		port map( Adresse,
			  Register_0_Ausgang,  Register_1_Ausgang,  Register_2_Ausgang,  Register_3_Ausgang,
			  Register_4_Ausgang,  Register_5_Ausgang,  Register_6_Ausgang,  Register_7_Ausgang,
			  Register_8_Ausgang,  Register_9_Ausgang,  Register_10_Ausgang, Register_11_Ausgang,
			  Register_12_Ausgang, Register_13_Ausgang, Register_14_Ausgang, Register_15_Ausgang,
			  Ausgang);

End Arch_Speicher_8_Bit_16_Adressen;