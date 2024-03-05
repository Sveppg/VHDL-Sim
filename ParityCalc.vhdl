LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ParityCalc IS 
    PORT (x :IN std_logic_vector(2 DOWNTO 0);
        y :OUT std_logic_vector(3 DOWNTO 0)
        );
END ParityCalc;

architecture ARCH OF ParityCalc IS 
SIGNAL s_par : std_logic;
SIGNAL s_c : std_logic;
BEGIN 
    s_c <= (x(0) XNOR x(1)) AFTER 5 ns;
    s_par <= (x(2) XNOR s_c) AFTER 5 ns;
    y <= s_par & x;
END ARCH;
