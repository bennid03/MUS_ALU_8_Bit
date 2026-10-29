--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Register_8_Bit is
Port(
	CLK: in std_logic;
	Load: in std_logic;
	async_Reset: in std_logic;
	sync_Reset: in std_logic;
	Daten: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0);
	Q_negiert: out std_logic_vector(7 downto 0)
);
End Register_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Register_8_Bit of Register_8_Bit is

Begin

	--1-Bit-Register für Bit 0
	Register_1_Bit_0: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(0), Q(0), Q_negiert(0));
		
	--1-Bit-Register für Bit 1
	Register_1_Bit_1: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(1), Q(1), Q_negiert(1));
	
	--1-Bit-Register für Bit 2
	Register_1_Bit_2: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(2), Q(2), Q_negiert(2));
		
	--1-Bit-Register für Bit 3
	Register_1_Bit_3: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(3), Q(3), Q_negiert(3));
		
	--1-Bit-Register für Bit 4
	Register_1_Bit_4: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(4), Q(4), Q_negiert(4));
		
	--1-Bit-Register für Bit 5
	Register_1_Bit_5: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(5), Q(5), Q_negiert(5));
		
	--1-Bit-Register für Bit 6
	Register_1_Bit_6: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(6), Q(6), Q_negiert(6));
		
	--1-Bit-Register für Bit 7
	Register_1_Bit_7: entity work.Register_1_Bit
		port map(CLK, Load, async_Reset, sync_Reset, Daten(7), Q(7), Q_negiert(7));
	


End Arch_Register_8_Bit;