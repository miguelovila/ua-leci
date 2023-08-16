LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY contadorincdecnbitstb IS
END contadorincdecnbitstb;

ARCHITECTURE stimulus OF contadorincdecnbitstb IS
	SIGNAL s_resetar, s_incdec, s_entradaclock : STD_LOGIC;
	SIGNAL s_contagem : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	uut : ENTITY work.contadorincdecnbits(behavioral)
		PORT MAP(
			resetar => s_resetar,
			incdec => s_incdec,
			entradaclock => s_entradaclock,
			contagem => s_contagem);
	contagem => s_contagem);
PROCESS IS
		BEGIN
		s_entradaclock <= '0';
		WAIT FOR 100 ns;
		s_entradaclock <= '1';
	WAIT FOR 100 ns;
		END PROCESS;
PROCESS IS
		BEGIN
		s_incdec <= '1';
		WAIT FOR 1000 ns;
		s_incdec <= '0';
		WAIT FOR 1000 ns;
		s_incdec <= '1';
		WAIT FOR 2000 ns;
		s_resetar <= '1';
		WAIT FOR 200 ns;
		s_resetar <= '0';
	WAIT FOR 300 ns;
		END PROCESS;