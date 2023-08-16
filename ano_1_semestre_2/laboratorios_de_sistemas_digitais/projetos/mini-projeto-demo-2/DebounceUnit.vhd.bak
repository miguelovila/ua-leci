LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY DebounceUnit IS
    GENERIC (
        kHzClkFreq : POSITIVE := 50000;
        mSecMinInWidth : POSITIVE := 100;
        inPolarity : STD_LOGIC := '0';
        outPolarity : STD_LOGIC := '1');
    PORT (
        refClk : IN STD_LOGIC;
        dirtyIn : IN STD_LOGIC;
        pulsedOut : OUT STD_LOGIC);
END DebounceUnit;
ARCHITECTURE Behavioral OF DebounceUnit IS
    CONSTANT MIN_IN_WIDTH_CYCLES : POSITIVE := mSecMinInWidth * kHzClkFreq;
    SUBTYPE TCounter IS NATURAL RANGE 0 TO MIN_IN_WIDTH_CYCLES;
    SIGNAL s_debounceCnt : TCounter := 0;
    SIGNAL s_dirtyIn, s_previousIn, s_pulsedOut : STD_LOGIC;
BEGIN
    in_sync_proc : PROCESS (refClk)
    BEGIN
        IF (rising_edge(refClk)) THEN
            IF (inPolarity = '1') THEN
                s_dirtyIn <= dirtyIn;
            ELSE
                s_dirtyIn <= NOT dirtyIn;
            END IF;
            s_previousIn <= s_dirtyIn;
        END IF;
    END PROCESS;
    count_proc : PROCESS (refClk)
    BEGIN
        IF (rising_edge(refClk)) THEN
            IF ((s_dirtyIn = '0') OR
                (s_debounceCnt > MIN_IN_WIDTH_CYCLES)) THEN
                s_debounceCnt <= 0;
                s_pulsedOut <= '0';
            ELSIF (s_dirtyIn = '1') THEN
                IF (s_previousIn = '0') THEN
                    s_debounceCnt <= MIN_IN_WIDTH_CYCLES;
                    s_pulsedOut <= '0';
                ELSE
                    IF (s_debounceCnt >= 1) THEN
                        s_debounceCnt <= s_debounceCnt - 1;
                    END IF;
                    IF (s_debounceCnt = 1) THEN
                        s_pulsedOut <= '1';
                    ELSE
                        s_pulsedOut <= '0';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    pulsedOut <= s_pulsedOut WHEN (outPolarity = '1') ELSE
        NOT s_pulsedOut;
END Behavioral;