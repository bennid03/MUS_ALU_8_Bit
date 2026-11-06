--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Schieberegister_8_Bit is
Port(
    Enable: in std_logic;
	 s: in std_logic_vector(1 downto 0);
	 CLK: in std_logic;
	 Daten: in std_logic_vector(7 downto 0);
	 D_SHR: in std_logic;
	 D_SHL: in std_logic;
	 async_reset: in std_logic;
	 sync_reset: in std_logic;
	 Ausgang: out std_logic_vector(7 downto 0)
);
End Schieberegister_8_Bit;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Schieberegister_8_Bit of Schieberegister_8_Bit is

	signal MUX_0_y: std_logic;
	signal MUX_1_y: std_logic;
	signal MUX_2_y: std_logic;
	signal MUX_3_y: std_logic;
	signal MUX_4_y: std_logic;
	signal MUX_5_y: std_logic;
	signal MUX_6_y: std_logic;
	signal MUX_7_y: std_logic;
	
	signal Register_0_y: std_logic;
	signal Register_1_y: std_logic;
	signal Register_2_y: std_logic;
	signal Register_3_y: std_logic;
	signal Register_4_y: std_logic;
	signal Register_5_y: std_logic;
	signal Register_6_y: std_logic;
	signal Register_7_y: std_logic;
	
	signal Register_0_y_negiert: std_logic;
	signal Register_1_y_negiert: std_logic;
	signal Register_2_y_negiert: std_logic;
	signal Register_3_y_negiert: std_logic;
	signal Register_4_y_negiert: std_logic;
	signal Register_5_y_negiert: std_logic;
	signal Register_6_y_negiert: std_logic;
	signal Register_7_y_negiert: std_logic;
	
	

Begin


	MUX_7: entity work.MUX_1_Bit_4x1
		port map(s, Register_7_y, D_SHR, Register_6_y, Daten(7), MUX_7_y);

	MUX_6: entity work.MUX_1_Bit_4x1
		port map(s, Register_6_y, Register_7_y, Register_5_y, Daten(6), MUX_6_y);
		
	MUX_5: entity work.MUX_1_Bit_4x1
		port map(s, Register_5_y, Register_6_y, Register_4_y, Daten(5), MUX_5_y);
		
	MUX_4: entity work.MUX_1_Bit_4x1
		port map(s, Register_4_y, Register_5_y, Register_3_y, Daten(4), MUX_4_y);
		
	MUX_3: entity work.MUX_1_Bit_4x1
		port map(s, Register_3_y, Register_4_y, Register_2_y, Daten(3), MUX_3_y);

	MUX_2: entity work.MUX_1_Bit_4x1
		port map(s, Register_2_y, Register_3_y, Register_1_y, Daten(2), MUX_2_y);
		
	MUX_1: entity work.MUX_1_Bit_4x1
		port map(s, Register_1_y, Register_2_y, Register_0_y, Daten(1), MUX_1_y);
		
	MUX_0: entity work.MUX_1_Bit_4x1
		port map(s, Register_0_y, Register_1_y, D_SHL, Daten(0), MUX_0_y);


	Register_7: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_7_y, Register_7_y, Register_7_y_negiert);
		
	Register_6: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_6_y, Register_6_y, Register_6_y_negiert);
		
	Register_5: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_5_y, Register_5_y, Register_5_y_negiert);
		
	Register_4: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_4_y, Register_4_y, Register_4_y_negiert);
		
	Register_3: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_3_y, Register_3_y, Register_3_y_negiert);
		
	Register_2: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_2_y, Register_2_y, Register_2_y_negiert);
		
	Register_1: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_1_y, Register_1_y, Register_1_y_negiert);
		
	Register_0: entity work.Register_1_Bit
		port map(CLK, Enable, async_reset, sync_reset, MUX_0_y, Register_0_y, Register_0_y_negiert);
		
		
	Ausgang(7) <= Register_7_y;
	Ausgang(6) <= Register_6_y;
	Ausgang(5) <= Register_5_y;
	Ausgang(4) <= Register_4_y;
	Ausgang(3) <= Register_3_y;
	Ausgang(2) <= Register_2_y;
	Ausgang(1) <= Register_1_y;
	Ausgang(0) <= Register_0_y;
	
	
		
End Arch_Schieberegister_8_Bit;


