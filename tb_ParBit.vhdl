ENTITY tb_ParBit IS -- keine Schnittstellen
END tb_ParBit ;

ARCHITECTURE testbench OF tb_ParBit IS
	
	COMPONENT ParBit -- Komponentendeklaration fuer Device Under Test (DUT )
	PORT (x2, x1, x0: IN bit;
	y: OUT bit_vector(3 downto 0);
	y1: OUT bit);

END COMPONENT;

SIGNAL x0 : bit := '0'; -- Input Stimuli - Signale
	SIGNAL x1 : bit := '0';
	SIGNAL x2 : bit := '0';
	SIGNAL y :bit_vector(3 downto 0) ;
	SIGNAL y1: bit;
BEGIN

CompToTest: ParBit
--dut : MyMux2x1 -- Instantiieren des Device Under Test

PORT MAP ( x0 => x0 ,
	x1 => x1 ,
	x2 => x2 ,
	y => y,
	y1 => y1);

	PROCESS 
	BEGIN
		x0 <= '0';
		wait for 20 ns;
		x0 <= '1';
		wait for 20 ns;
	END PROCESS;

	PROCESS 
	BEGIN
		x1 <= '0';
		wait for 40 ns;
		x1 <= '1';
		wait for 40 ns;
	END PROCESS;

	PROCESS 
	BEGIN
		x2 <= '0';
		wait for 80 ns;
		x2 <= '1';
		wait for 80 ns;
	END PROCESS;

END testbench ;
