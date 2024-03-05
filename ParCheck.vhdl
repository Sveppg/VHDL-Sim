LIBRARY ieee; 
USE ieee.std_logic_1164.all; --Package

ENTITY ParCheck is
PORT (x2, x1, x0, p: IN BIT;
	cpv: OUT bit_vector(4 downto 0);
	cp: OUT BIT);
END ParCheck;

Architecture Arch OF ParCheck IS
signal cp_signal: bit;
BEGIN
	cp_signal <= (x0 XOR x1) XOR (x2 XOR p);
	cpv <= cp_signal & x1 & x2 & x0 & p;
	cp <= cp_signal;



END ARCHITECTURE ARCH;