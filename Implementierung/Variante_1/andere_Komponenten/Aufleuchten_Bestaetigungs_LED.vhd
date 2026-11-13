--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity Aufleuchten_Bestaetigungs_LED is
Port(
    CLK_50MHz: in std_logic;
	 Taster: in std_logic;
    Bestaetigungs_LED: out std_logic
);
End Aufleuchten_Bestaetigungs_LED;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_Aufleuchten_Bestaetigungs_LED of Aufleuchten_Bestaetigungs_LED is

--Die LED soll nach Betätigung des Tasters für 1 Sekunde aufleuchten.
--Für das Messen der 1 Sekunde verwenden wir einen Zähler. 
signal Zaehler: std_logic_vector(31 downto 0) := (others => '0');

signal Prozess_initialisiert: std_logic := '0';
signal Taster_letzte_CLK: std_logic := '1';


begin

	-----------------------------------------------------------------------
	-- Prozess für die Auswertung des Tasters und die Steuerung der LED
	-----------------------------------------------------------------------
	Taster_Prozess: process(CLK_50MHz)
	begin
	
		if( rising_edge(CLK_50MHz)) then
		
			if( Prozess_initialisiert = '0') then
				Taster_letzte_CLK <= '1';
				Prozess_initialisiert <= '1';
				Zaehler <= (others => '0');
				Bestaetigungs_LED <= '0';
			else
			
				Taster_letzte_CLK <= Taster;
				
				--Prüfen, ob der Taster gedrückt wurde
				if( (Taster = '0') and (Taster_letzte_CLK = '1') ) then	
					-- Taster wurde gedrückt
					Bestaetigungs_LED <= '1';
					Zaehler <= std_logic_vector(to_unsigned(50000000, Zaehler'length));
					
				--Prüfen, ob der Zähler ungleich 0 ist
				elsif( unsigned(Zaehler) /= 0) then
					--Der Zähler ist ungleich 0. Er muss also um 1 heruntergezählt werden. 
					Zaehler <= std_logic_vector(unsigned(Zaehler) - 1);
					
				else
					--Der Zähler ist auf 0.
					--Die LED muss also aus sein. 
					Bestaetigungs_LED <= '0';
				end if;
			
			end if;
			
		
		end if;
	
	
	end process;
	


End Arch_Aufleuchten_Bestaetigungs_LED;



