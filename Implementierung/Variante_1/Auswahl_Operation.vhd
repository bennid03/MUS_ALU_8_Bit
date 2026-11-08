--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Auswahl_Operation is
Port(
    CLK_50MHz: in std_logic;
    Taster_Auswahl_Operation: in std_logic;
	 Sieben_Segment_2: out std_logic_vector(6 downto 0);
	 Sieben_Segment_1: out std_logic_vector(6 downto 0);
	 Sieben_Segment_0: out std_logic_vector(6 downto 0);
	 Operation: out std_logic_vector(7 downto 0)
);
End Auswahl_Operation;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Auswahl_Operation of Auswahl_Operation is

	signal Taster_Auswahl_Operation_letzte_CLK: std_logic := '1';
	
	signal weiter_zaehlen: std_logic := '0';
	
	signal Taster_Prozess_initialisiert: std_logic := '0';
	signal Weiterzaehlen_Prozess_initialisiert: std_logic := '0';
	
	signal Operation_binaer_intern: std_logic_vector(7 downto 0);
	signal Operation_BCD: std_logic_vector(11 downto 0);
	
	--Über OPERATION_MAX_WERT wird der maximale Wert der Operationen festgelegt.
	--Beispiel:
	--OPERATION_MAX_WERT = 20
	--Es gibt die Operationen 0 bis 20
	constant OPERATION_MAX_WERT: unsigned(7 downto 0):= to_unsigned(20,8);
	
Begin

	------------------------------------------
	-- Prozess für das Auswerten des Tasters
	------------------------------------------
	Taster_Prozess: process(CLK_50MHz)
	begin
	
		if( rising_edge(CLK_50MHz)) then
		
			if( Taster_Prozess_initialisiert = '0') then
				Taster_Auswahl_Operation_letzte_CLK <= '1';
				weiter_zaehlen <= '0';
				Taster_Prozess_initialisiert <= '1';
			else
			
				Taster_Auswahl_Operation_letzte_CLK <= Taster_Auswahl_Operation;
			
				--Prüfen, ob der Taster gedrückt wurde
				if( (Taster_Auswahl_Operation = '0') and (Taster_Auswahl_Operation_letzte_CLK = '1') ) then
					
					weiter_zaehlen <= '1';
					
				else
					
					weiter_zaehlen <= '0';
				
				end if;
			
			end if;
		
		end if;
	
	end process;
	
	
	------------------------------------------
	-- Prozess für das Weiterzaehlen
	------------------------------------------
	Weiterzaehlen_Prozess: process(CLK_50MHz)
	begin
	
		if( rising_edge(CLK_50MHz)) then
		
			if(Weiterzaehlen_Prozess_initialisiert = '0') then
				Operation_binaer_intern <= "00000000";
				Weiterzaehlen_Prozess_initialisiert <= '1';
			else
					
				if( weiter_zaehlen = '1') then
				
					if( unsigned(Operation_binaer_intern) < OPERATION_MAX_WERT ) then
						
						Operation_binaer_intern <= std_logic_vector( unsigned(Operation_binaer_intern) + 1);
						
					else
					
						Operation_binaer_intern <= "00000000";
					
					
					end if;
				
				
				end if;
				
			
			end if;
				
		end if;
	
	end process;
	
	
	Operation <= Operation_binaer_intern;
	
	
	binary_to_bcd_1: entity work.binary_to_bcd
		port map(CLK_50MHz, Operation_binaer_intern, Operation_BCD);
		
		
	
	bcd_zu_7Segment_2: entity work.BCD_zu_7Segment
		port map(CLK_50MHz, Operation_BCD(11 downto 8), Sieben_Segment_2);
		
	bcd_zu_7Segment_1: entity work.BCD_zu_7Segment
		port map(CLK_50MHz, Operation_BCD(7 downto 4), Sieben_Segment_1);
	
	bcd_zu_7Segment_0: entity work.BCD_zu_7Segment
		port map(CLK_50MHz, Operation_BCD(3 downto 0), Sieben_Segment_0);
	

End Arch_Auswahl_Operation;





