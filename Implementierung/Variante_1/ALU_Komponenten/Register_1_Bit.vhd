--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Register_1_Bit is
Port(
	CLK: in std_logic;
	Load: in std_logic;
	async_Reset: in std_logic;
	sync_Reset: in std_logic;
	Daten: in std_logic;
	Q: out std_logic;
	Q_negiert: out std_logic
);
End Register_1_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Register_1_Bit of Register_1_Bit is

	signal D_fuer_Flipflop: std_logic;
	signal D_1: std_logic;
	signal D_2: std_logic;
	signal Q_intern: std_logic;
	signal Q_negiert_intern: std_logic;

Begin

	D_1 <= Q_intern AND (not Load);
	D_2 <= Daten AND (not (not Load));
	D_fuer_Flipflop <= D_1 OR D_2;
	
	D_Flipflop1: entity work.D_Flipflop
		port map(CLK, D_fuer_Flipflop, async_Reset, sync_Reset, Q_intern, Q_negiert_intern);
		
	Q <= Q_intern;
	Q_negiert <= Q_negiert_intern;
		
End Arch_Register_1_Bit;


