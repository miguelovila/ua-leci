LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DrinksMachine IS
    PORT (
        CLOCK_50 : IN STD_LOGIC;
        KEY : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        LEDG : OUT STD_LOGIC_VECTOR(0 DOWNTO 0));
END DrinksMachine;

ARCHITECTURE Structural of DrinksMachine IS
    SIGNAL s_1HzLane : STD_LOGIC;
    SIGNAL s_CleanSW0 : STD_LOGIC;
    SIGNAL s_CleanSW1 : STD_LOGIC;
    SIGNAL s_CleanKEY0 : STD_LOGIC;
BEGIN
    InputSync : PROCESS (CLOCK_50)
    BEGIN
        IF (rising_edge(CLOCK_50)) THEN
            s_CleanSW0 <= SW(0);
            s_CleanSW1 <= SW(1);
        END IF;
    END PROCESS;

    DebounceKEY0 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => KEY(0),
			pulsedOut => s_CleanKey0);

    
END Structural;
