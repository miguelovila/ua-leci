LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PulseGenerator2Hz IS
	GENERIC (NUMBER_STEPS : POSITIVE := 25_000_000);
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		blink : OUT STD_LOGIC);
END PulseGenerator2Hz;

ARCHITECTURE Behavioral OF PulseGenerator2Hz IS
	SIGNAL s_counter : NATURAL RANGE 0 TO NUMBER_STEPS - 1;
BEGIN
	count_proc : PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			IF (reset = '1') OR (s_counter >= NUMBER_STEPS - 1) THEN
				s_counter <= 0;
			ELSE
				s_counter <= s_counter + 1;
			END IF;
			IF (s_counter >= (NUMBER_STEPS/2)) THEN
				blink <= '1';
			ELSE
				blink <= '0';
			END IF;
		END IF;
	END PROCESS;
END Behavioral;