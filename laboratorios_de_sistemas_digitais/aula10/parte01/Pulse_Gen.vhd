LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Pulse_Gen IS
    GENERIC (MAX : POSITIVE := 50_000_000);
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        pulse : OUT STD_LOGIC);
END Pulse_Gen;

ARCHITECTURE Behavioral OF Pulse_Gen IS
    SIGNAL s_cnt : NATURAL RANGE 0 TO MAX - 1;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            pulse <= '0';
            IF (reset = '1') THEN
                s_cnt <= 0;
            ELSE
                s_cnt <= s_cnt + 1;
                IF (s_cnt = MAX - 1) THEN
                    s_cnt <= 0;
                    pulse <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;
END Behavioral;