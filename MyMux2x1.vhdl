LIBRARY ieee;
USE ieee.std_logic_1164.all; --Package
ENTITY MyMux2x1 IS
PORT (IA: IN Bit;
    IB : IN bit;
    S: IN bit;
    E: IN bit;
    Y1: OUT bit;
    Y2: OUT bit;
    Y3: OUT bit);
END MyMux2x1;

architecture Arch of MyMux2x1 IS
BEGIN
    Y1 <= ((NOT S and IA) OR (S AND IB)) AND NOT E;

    PROCESS (S, IA, IB, E)
    BEGIN
        CASE S is
            WHEN '0' => Y2 <= (IA AND NOT E);
                        Y3 <= (IA AND NOT E);
            WHEN OTHERS => Y2 <= IB AND NOT E;
                           Y3 <= IB AND NOT E;
        END CASE;
    END PROCESS;
END architecture Arch;
