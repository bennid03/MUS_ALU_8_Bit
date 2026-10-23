--Einbinden einer Bibliothek für die Verwendung von std_logic_vector
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------
-- Entity 
----------------------------------------------------------------------------------
Entity D_Flipflop is
Port(
    CLK: in std_logic;
    D: in std_logic;
    Reset: in std_logic;
    Q: out std_logic;
    negiertes_Q: out std_logic
);
End D_Flipflop;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------
Architecture Arch_D_Flipflop of D_Flipflop is

    --Master-Latch
    signal M1: std_logic;
    signal M2: std_logic;
    signal Master_Q: std_logic;
    signal Master_Q_negiert: std_logic;

    --Slave-Latch
    signal S1: std_logic;
    signal S2: std_logic;
    signal Slave_Q: std_logic;
    signal Slave_Q_negiert: std_logic;

Begin

    -- Master-Latch
    M1 <= (D NAND (not CLK)) OR Reset;
    M2 <= ((not D) NAND (not CLK)) AND (not Reset);
    Master_Q <= M1 NAND Master_Q_negiert;
    Master_Q_negiert <= M2 NAND Master_Q;

    -- Slave-Latch
    S1 <= (Master_Q NAND CLK) OR Reset;
    S2 <= (Master_Q_negiert NAND CLK) AND (not Reset);
    Slave_Q <= S1 NAND Slave_Q_negiert;
    Slave_Q_negiert <= S2 NAND Slave_Q;

    -- Ausgänge
    Q <= Slave_Q;
    negiertes_Q <= Slave_Q_negiert;

End Arch_D_Flipflop;
