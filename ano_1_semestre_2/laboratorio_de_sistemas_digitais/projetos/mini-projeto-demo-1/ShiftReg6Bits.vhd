LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ShiftReg6Bits IS
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		LEDG : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END ShiftReg6Bits;

ARCHITECTURE Structural OF ShiftReg6Bits IS
	-- Linha com frequencia 1Hz
	SIGNAL s_1HzLane : STD_LOGIC;
	-- Inputs sujos
	SIGNAL s_Swi0 : STD_LOGIC := '0';
	-- Inputs limpos (Se o debouncer funcionasse)
	SIGNAL s_Key0Clean : STD_LOGIC := '0';
	SIGNAL s_Key1Clean : STD_LOGIC := '0';
	SIGNAL s_Swi0Clean : STD_LOGIC := '0';
	SIGNAL s_DataOut : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL s_DataOutBCDDezenas : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL s_DataOutBCDUnidades : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL s_DataDisplay5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL s_DataDisplay4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
	-- Decimal(1) Binario(0)
	SIGNAL s_Mode : STD_LOGIC := '1';
BEGIN
	InputSync : PROCESS (CLOCK_50)
	BEGIN
		IF (rising_edge(CLOCK_50)) THEN
			s_Swi0 <= SW(0);
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
			pulsedOut => s_Key0Clean);
		
	DebounceKEY1 : ENTITY work.DebounceUnit(Behavioral)
		GENERIC MAP(
			kHzClkFreq => 50000,
			mSecMinInWidth => 100,
			inPolarity => '0',
			outPolarity => '1')
		PORT MAP(
			refClk => CLOCK_50,
			dirtyIn => KEY(1),
			pulsedOut => s_Key1Clean);
	
	Hz1Lane : ENTITY work.PulseGenerator1Hz(Behavioral)
		PORT MAP(
			clockIn => CLOCK_50,
			reset => s_Key0Clean,
			blink => s_1HzLane);
	
	ShiftReg : ENTITY work.ShiftReg6BitsLeft(Behavioral)
		PORT MAP(
			clockIn => CLOCK_50,
			pulseEnable => s_1HzLane,
			reset => s_Key0Clean,
			addedBit => s_Swi0,
			dataOut => s_DataOut);
			
	Bin2Bcd : ENTITY work.BinToBcd(Behavioral)
		PORT MAP(
			dataIn => s_DataOut,
			binout0 => s_DataOutBCDUnidades,
			binout1 => s_DataOutBCDDezenas);
	
	Display5 : ENTITY work.Bin7SegDec(Behavioral)
		PORT MAP(
			enable => s_Mode,
			binInput => s_DataOutBCDDezenas,
			binOutput => s_DataDisplay5);
	
	Display4 : ENTITY work.Bin7SegDec(Behavioral)
		PORT MAP(
			enable => s_Mode,
			binInput => s_DataOutBCDUnidades,
			binOutput => s_DataDisplay4);
	
	ModeManager : PROCESS (s_Key1Clean)
	BEGIN
		IF (falling_edge(s_Key1Clean)) THEN
			s_Mode <= not(s_Mode);
		END IF;
	END PROCESS;
	
	LedModeManager : PROCESS(s_Mode, s_DataOut)
	BEGIN
		IF (s_Mode = '0') THEN
			LEDG(5 DOWNTO 0) <= s_DataOut;
		ELSE
			LEDG(5 DOWNTO 0) <= "000000";
		END IF;
	END PROCESS;
	HEX5(6 DOWNTO 0) <= s_DataDisplay5;
	HEX4(6 DOWNTO 0) <= s_DataDisplay4;
END Structural;