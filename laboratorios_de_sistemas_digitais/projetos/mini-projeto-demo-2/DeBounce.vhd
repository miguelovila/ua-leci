LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY DeBounce IS
    PORT (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC := '0';
        dirtyIn : IN STD_LOGIC;
        cleanOut : OUT STD_LOGIC
    );
END DeBounce;

ARCHITECTURE Behavioral OF DeBounce IS

    CONSTANT COUNT_MAX : INTEGER := 10000;
    --set it '1' if the button creates a high pulse when its pressed, otherwise '0'.
    CONSTANT BTN_ACTIVE : STD_LOGIC := '0';

    SIGNAL count : INTEGER := 0;
    TYPE state_type IS (idle, wait_time); --state machine
    SIGNAL state : state_type := idle;

BEGIN

    PROCESS (Reset, Clock)
    BEGIN
        IF (Reset = '1') THEN
            state <= idle;
            cleanOut <= '0';
        ELSIF (rising_edge(Clock)) THEN
            CASE (state) IS
                WHEN idle =>
                    IF (dirtyIn = BTN_ACTIVE) THEN
                        state <= wait_time;
                    ELSE
                        state <= idle; --wait until button is pressed.
                    END IF;
                    cleanOut <= '0';
                WHEN wait_time =>
                    IF (count = COUNT_MAX) THEN
                        count <= 0;
                        IF (dirtyIn = BTN_ACTIVE) THEN
                            cleanOut <= '1';
                        END IF;
                        state <= idle;
                    ELSE
                        count <= count + 1;
                    END IF;
            END CASE;
        END IF;
    END PROCESS;

END ARCHITECTURE Behavioral;