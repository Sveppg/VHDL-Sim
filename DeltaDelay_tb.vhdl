library ieee;
use IEEE.std_logic_1164.all;

entity DeltaDelay_tb is 
END DeltaDelay_tb;
Architecture testbench OF DeltaDelay_tb is 
    COMPONENT delta 
    PORT (x : IN std_logic;
        clk, reset : IN std_logic;
        y : OUT std_logic
        );
    END COMPONENT;

    SIGNAL s_clk : std_logic := '0';
    SIGNAL s_reset : std_logic := '0';
    SIGNAL s_x, s_y : std_logic := '0';

begin
    dut: delta 
    PORT MAP (x => s_x,
        clk => s_clk,
        reset => s_reset,
        y => s_y
        );
s_reset <= '1' AFTER 0 ps , '0' AFTER 160 ps;
clockstim : PROCESS
begin
    s_clk <= '0'; WAIT FOR 100 ps;
    s_clk <= '1'; WAIT FOR 100 ps;
END PROCESS;

datastimuli: PROCESS 
begin
    s_x <= '0'; WAIT FOR 750 ps;
    s_x <= '1'; WAIT FOR 900 ps; 
    s_x <= '0'; WAIT FOR 500 ps;
    s_x <= '1'; WAIT FOR 1 ps;
END PROCESS;

END testbench;
