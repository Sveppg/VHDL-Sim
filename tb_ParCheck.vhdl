ENTITY tb_ParCheck IS -- keine Schnittstellen
END tb_ParCheck ;

ARCHITECTURE testbench OF tb_ParCheck IS
	
	COMPONENT ParCheck -- Komponentendeklaration fuer Device Under Test (DUT )
	PORT (x2, x1, x0, p: IN bit;
	cpv: OUT bit_vector(3 downto 0);
	cp: OUT bit);

END COMPONENT;

	SIGNAL x0 : bit := '0'; -- Input Stimuli - Signale
	SIGNAL x1 : bit := '0';
	SIGNAL x2 : bit := '0';
	SIGNAL p : bit := '0' ;
	SIGNAL cpv :bit_vector(4 downto 0) ;
	SIGNAL cp: bit;
BEGIN

CompToTest: ParCheck
--dut : MyMux2x1 -- Instantiieren des Device Under Test

PORT MAP ( x0 => x0 ,
	x1 => x1 ,
	x2 => x2 ,
	p => p,
	cpv => cpv,
	cp => cp);

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

	PROCESS 
	BEGIN
		p <= '0';
		wait for 160 ns;
		p <= '1';
		wait for 160 ns;
	END PROCESS;

END testbench ;
