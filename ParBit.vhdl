LIBRARY ieee; 
USE ieee.std_logic_1164.all; --Package 

ENTITY ParBit is
PORT (x2, x1, x0: IN BIT;
	y: OUT bit_vector(3 downto 0));
END ParBit;

Architecture Arch OF ParBit IS
BEGIN
	y <= (x0 AND (NOT x1) AND (NOT x2)) & ((NOT x0) AND  x1 AND (NOT x2)) & ((NOT x0) AND  (NOT x1) AND  x2) & (x0 AND x1 AND x2);

END ARCHITECTURE ARCH;
