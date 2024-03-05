LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY DeltaDelay is
    PORT (x : IN std_logic;
        clk, reset : IN std_logic;
        y : OUT std_logic := '0'
        );
END DeltaDelay;
architecture Dele OF DeltaDelay IS 
    SIGNAL a, b : std_logic := '0'; 
    begin 
        dflip1: PROCESS(clk)
        begin
            if (clk'event AND clk = '1')
            THEN a <= x;
            END IF;
        END PROCESS;

        dflip2: PROCESS(clk, reset)
        begin
            IF (reset = '1')
            THEN b <= '0';
            ELSIF (clk'event AND clk = '1')
            THEN b <= a XNOR b;
            END IF;
        END PROCESS;
    y <= b;
END Dele;
