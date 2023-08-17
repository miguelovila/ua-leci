LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ShiftReg6BitsLeftTb IS
END ShiftReg6BitsLeftTb;

ARCHITECTURE stimulus OF ShiftReg6BitsLeftTb IS
	SIGNAL s_ClockIn, s_Reset, s_AddedBit, s_PulseEnable : STD_LOGIC;
	SIGNAL s_DataOut : STD_LOGIC_VECTOR(5 DOWNTO 0);
BEGIN
	uut : ENTITY work.ShiftReg6BitsLeft(Behavioral)
		PORT MAP(
			clockIn => s_ClockIn,
			pulseEnable => s_PulseEnable,
			reset => s_Reset,
			addedBit => s_AddedBit,
			dataOut => s_DataOut);
	Clock : PROCESS IS
	BEGIN
		s_ClockIn <= '0';
		WAIT FOR 10 ns;
		s_ClockIn <= '1';
		WAIT FOR 10 ns;
	END PROCESS;
	Pulse : PROCESS IS
	BEGIN
		s_PulseEnable <= '0';
		WAIT FOR 125 ns;
		s_PulseEnable <= '1';
		WAIT FOR 125 ns;
	END PROCESS;
	Behave : PROCESS IS
	BEGIN
		s_reset <= '0';
		s_AddedBit <= '1';
		WAIT FOR 100 ns;
		s_AddedBit <= '0';
		WAIT FOR 25 ns;
		s_AddedBit <= '1';
		WAIT FOR 25 ns;
		s_reset <= '1';
		WAIT FOR 25 ns;
		s_AddedBit <= '1';
	END PROCESS;
END stimulus;