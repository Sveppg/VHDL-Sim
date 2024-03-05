ENTITY tb_Mux2x1 IS -- keine Schnittstellen
END tb_Mux2x1 ;

ARCHITECTURE testbench OF tb_Mux2x1 IS
	
	COMPONENT MyMux2x1 -- Komponentendeklaration fuer Device Under Test (DUT )
	PORT ( IA , IB : IN bit ;
	E: IN bit ;
	S : IN bit ;
	Y1,Y2,Y3: OUT bit);
END COMPONENT;

	SIGNAL IA : bit := '0'; -- Input Stimuli - Signale
	SIGNAL IB : bit := '0';
	SIGNAL S : bit := '0';
	SIGNAL E : bit := '0';
	SIGNAL Y1 : bit ; -- Output Signale
	SIGNAL Y2 :bit ;
	SIGNAL Y3 :bit ;
BEGIN

dut : MyMux2x1 -- Instantiieren des Device Under Test

PORT MAP ( IA => IA ,
	IB => IB ,
	S => S ,
	E => E ,
	Y1 => Y1 ,
	Y2 => Y2,
	Y3 => Y3 );

	PROCESS 
	BEGIN
		IA <= '0';
		wait for 20 ns;
		IA <= '1';
		wait for 20 ns;
	END PROCESS;

	PROCESS 
	BEGIN
		IB <= '0';
		wait for 40 ns;
		IB <= '1';
		wait for 40 ns;
	END PROCESS;

	PROCESS 
	BEGIN
		S <= '0';
		wait for 80 ns;
		S <= '1';
		wait for 80 ns;
	END PROCESS;

	PROCESS 
	BEGIN
		E <= '0';
		wait for 160 ns;
		E <= '1';
		wait for 160 ns;
	END PROCESS;


END testbench ;
