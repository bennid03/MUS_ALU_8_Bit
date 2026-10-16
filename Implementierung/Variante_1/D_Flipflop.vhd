--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Top-Level-Entity 
----------------------------------------------------------------------------------
Entity D_Flipflop is
Port(
	D: in std_logic;
	CLK: in std_logic;
	Q: out std_logic;
	negiertes_Q: out std_logic
);
End D_Flipflop;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_D_Flipflop of D_Flipflop is

signal CLK_1: std_logic;
signal D_1: std_logic;
signal D_2: std_logic;
signal Q_intern: std_logic;
signal negiertes_Q_intern: std_logic;

Begin

	CLK_1 <= CLK AND (NOT CLK);
	
	D_1 <= D NAND CLK_1;
	
	D_2 <= (NOT D) NAND CLK_1;
	
	Q_intern <= D_1 NAND negiertes_Q_intern;
	
	negiertes_Q_intern <= D_2 NAND Q_intern;
	
	
	Q <= Q_intern;
	
	negiertes_Q <= negiertes_Q_intern;
	

End Arch_D_Flipflop;
