LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Decrementer4Bit IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END Decrementer4Bit;

ARCHITECTURE Behavioral OF Decrementer4Bit IS
	SIGNAL s_Count : unsigned(3 DOWNTO 0) := "0000";
BEGIN
	PROCESS (reset, clk)
	BEGIN
		IF (reset = '1') THEN
				s_Count <= "0000";
		ELSE
			IF (rising_edge(clk)) THEN
				s_Count <= s_Count - 1;
			END IF;
		END IF;
	END PROCESS;
	count <= STD_LOGIC_VECTOR(s_Count);
END Behavioral;