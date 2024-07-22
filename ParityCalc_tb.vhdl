LIBRARY ieee;
USE ieee.std_logic_1164.all; --Packages

ENTITY ParityCalc_tb is
    END ParityCalc_tb;
architecture testbench OF ParityCalc_tb IS

COMPONENT ParityCalc IS
    Port (
        x : in std_logic_vector(2 DOWNTO 0);
        y : OUT std_logic_vector(3 DOWNTO 0)
    );
END COMPONENT;
SIGNAL x : std_logic_vector (2 DOWNTO 0);
SIGNAL y : std_logic_vector (3 DOWNTO 0);
BEGIN
dut : ParityCalc
PORT MAP (x => x,
        y => y);
        x0STIM : PROCESS
        begin
            x(0) <= '0'; WAIT FOR 10 ns;
            x(0) <= 'X'; WAIT FOR 3 ns;
            x(0) <= '1'; WAIT FOR 10 ns;
            x(0) <= 'X'; WAIT FOR 3 ns;
        END PROCESS;

        x1STIM : PROCESS
        begin
            x(1) <= '0' ; WAIT FOR 17 ns;
            x(1) <= 'X' ; WAIT FOR 3 ns;
            x(1) <= '1' ; WAIT FOR 17 ns;
            x(1) <= 'X' ; WAIT FOR 3 ns;
        END PROCESS;

        x2STIM : PROCESS
        begin
            x(2) <= '0' ; WAIT FOR 25 ns;
            x(2) <= 'X' ; WAIT FOR 3 ns;
            x(2) <= '1' ; WAIT FOR 25 ns;
            x(2) <= '1' ; WAIT FOR 3 ns;
        END PROCESS;
END testbench;
