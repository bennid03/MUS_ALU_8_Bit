--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity binary_to_bcd is
Port(
    CLK_50MHz: in std_logic;
    binaer: in std_logic_vector(7 downto 0);
	 BCD: out std_logic_vector(11 downto 0)
);
End binary_to_bcd;


----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_binary_to_bcd of binary_to_bcd is

	signal Umwandlung_Prozess_initialisiert: std_logic := '0';

begin


	Umwandlung_Prozess: process(CLK_50MHz)
	begin
	
		if( rising_edge(CLK_50MHz)) then
		
		
			if( Umwandlung_Prozess_initialisiert = '0') then
				
				BCD <= (others => '0');
				Umwandlung_Prozess_initialisiert <= '1';
				
			else
			
				case to_integer(unsigned(binaer)) is
				
					when 0 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 1 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 2 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 3 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 4 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 5 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 6 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 7 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 8 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 9 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								 BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 10 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 11 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 12 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 13 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 14 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 15 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 16 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 17 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 18 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 19 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 20 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 21 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 22 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 23 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
							 
					when 24 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 25 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 26 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 27 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 28 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 29 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								
					when 30 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
							  	  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
							 	  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 31 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 32 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								  
					when 33 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 34 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 35 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 36 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 37 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 38 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 39 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 40 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 41 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 42 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 43 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 44 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 45 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 46 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 47 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 48 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 49 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 50 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 51 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 52 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 53 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 54 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 55 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 56 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 57 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 58 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 59 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 60 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 61 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 62 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 63 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 64 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 65 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 66 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 67 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 68 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 69 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 70 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 71 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
							 
					when 72 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
							     BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
						        BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 73 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 74 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 75 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 76 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 77 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 78 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 79 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 80 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 81 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
							 
					when 82 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 83 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 84 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 85 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 86 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 87 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 88 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 89 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 90 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 91 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
							 
					when 92 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 93 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 94 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								  
					when 95 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 96 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 97 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 98 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 99 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								  BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								  BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 100 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 101 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 102 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 103 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 104 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 105 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 106 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 107 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 108 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 109 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 110 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 111 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 112 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								
					when 113 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 114 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 115 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 116 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 117 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 118 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 119 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 120 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 121 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 122 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 123 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
							 
					when 124 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 125 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 126 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 127 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
									
					when 128 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 129 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 130 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 131 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 132 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 133 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 134 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 135 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 136 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 137 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 138 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 139 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 140 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 141 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 142 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 143 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 144 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 145 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 146 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 147 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 148 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 149 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 150 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 151 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 152 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 153 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 154 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 155 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 156 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 157 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 158 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 159 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 160 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 161 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 162 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 163 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 164 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 165 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 166 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 167 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 168 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 169 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(6, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 170 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 171 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 172 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 173 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 174 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 175 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 176 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 177 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 178 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 179 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(7, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 180 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 181 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 182 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 183 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 184 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 185 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 186 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 187 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 188 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 189 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(8, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 190 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 191 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 192 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 193 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 194 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 195 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 196 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 197 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 198 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 199 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(9, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 200 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 201 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 202 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 203 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 204 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 205 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 206 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 207 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 208 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 209 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 210 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 211 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 212 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 213 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 214 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 215 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 216 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 217 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 218 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 219 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(1, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 220 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 221 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 222 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 223 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 224 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 225 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 226 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 227 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 228 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 229 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 230 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 231 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 232 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 233 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 234 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 235 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 236 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 237 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 238 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 239 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(3, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 240 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 241 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 242 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 243 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 244 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 245 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when 246 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(6, 4));
								 
					when 247 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(7, 4));
								 
					when 248 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(8, 4));
								 
					when 249 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(4, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(9, 4));
								 
					when 250 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
					when 251 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(1, 4));
								 
					when 252 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(2, 4));
								 
					when 253 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(3, 4));
								 
					when 254 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(4, 4));
								 
					when 255 => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(2, 4));
								   BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(5, 4));
								   BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(5, 4));
								 
					when others => BCD(11 downto 8) <=  std_logic_vector(to_unsigned(0, 4));
								      BCD( 7 downto 4) <=  std_logic_vector(to_unsigned(0, 4));
								      BCD( 3 downto 0) <=  std_logic_vector(to_unsigned(0, 4));
								 
								 
				end case;
				
			
			end if;
			
			
	
		end if;
				
	
	
	
	
	end process;



End Arch_binary_to_bcd;