LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Down2StateDecrementer IS
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END Down2StateDecrementer;

ARCHITECTURE Behavioral OF Down2StateDecrementer IS
	SIGNAL s_Key0 : STD_LOGIC := '1';
	SIGNAL s_Key1 : STD_LOGIC := '1';
	SIGNAL s_Key0Clean : STD_LOGIC := '0';
	SIGNAL s_Key1Clean : STD_LOGIC := '0';

	SIGNAL s_1HzLane : STD_LOGIC;
	SIGNAL s_2HzLane : STD_LOGIC;
	SIGNAL s_Reset : STD_LOGIC;
	SIGNAL s_DisplayEnable : STD_LOGIC;
	SIGNAL s_NormalBlink : STD_LOGIC := '0';

	SIGNAL s_Count : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	KeySync : PROCESS (CLOCK_50)
	BEGIN
		IF (rising_edge(CLOCK_50)) THEN
			s_Key0 <= KEY(0);
			s_Key1 <= KEY(1);
		END IF;
	END PROCESS;

	SetReset : PROCESS (s_Key0Clean)
	BEGIN
		s_reset <= s_Key0Clean;
	END PROCESS;
	
	SetMode : PROCESS(s_Key1Clean, s_reset)
	BEGIN
		IF (falling_edge(s_Key1Clean)) THEN
			s_NormalBlink <= not s_NormalBlink;
		END IF;
	   IF (s_Reset = '1') THEN
			s_NormalBlink <= '1';
		END IF;
	END PROCESS;
	
	LEDG(0) <= s_NormalBlink;
	
	SetDisplayMode : PROCESS(s_NormalBlink)
	BEGIN
		IF (s_NormalBlink = '0') THEN
			s_DisplayEnable <= '1';
		ELSE
			s_DisplayEnable <= s_1HzLane;
		END IF;
	END PROCESS;

	DebounceKEY0 : ENTITY work.DeBounce(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			dirtyIn => s_Key0,
			cleanOut => s_Key0Clean);

	DebounceKEY1 : ENTITY work.DeBounce(Behavioral)
		PORT MAP(
			clock => CLOCK_50,
			dirtyIn => s_Key1,
			cleanOut => s_Key1Clean);

	Hz1Lane : ENTITY work.PulseGenerator1Hz(Behavioral)
		PORT MAP(
			clk => CLOCK_50,
			reset => s_Reset,
			blink => s_1HzLane);

	Hz2Lane : ENTITY work.PulseGenerator2Hz(Behavioral)
		PORT MAP(
			clk => CLOCK_50,
			reset => s_Reset,
			blink => s_2HzLane);

	Decrementer : ENTITY work.Decrementer4Bit(Behavioral)
		PORT MAP(
			clk => s_2HzLane,
			reset => s_Reset,
			count => s_Count);

	Display : ENTITY work.Bin7SegDecoder(Behavioral)
		PORT MAP(
			enable => s_DisplayEnable,
			binInput => s_Count,
			binOutput => HEX0);
END Behavioral;
/*
	DebounceKEY0 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50_000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => s_Key0,
			pulsedOut => s_Key0Clean);

	DebounceKEY1 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50_000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => s_Key1,
			pulsedOut => s_Key1Clean);
	*/