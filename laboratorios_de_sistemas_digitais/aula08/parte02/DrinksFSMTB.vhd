LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DrinksFSMTB IS
END DrinksFSMTB;

ARCHITECTURE stimulus OF DrinksFSMTB IS
	SIGNAL s_Vint, s_Cinq, s_Reset, s_Clk, s_Drink : STD_LOGIC;
BEGIN
	uut : ENTITY work.DrinksFSM(Behavioral)
		PORT MAP(
			Vint => s_Vint,
			Cinq => s_Cinq,
			Reset => s_Reset,
			Clk => s_Clk,
			Drink => s_Drink);
	Clock : PROCESS IS
	BEGIN
		s_Clk <= '0';
		WAIT FOR 25 ns;
		s_Clk <= '1';
		WAIT FOR 25 ns;
	END PROCESS;
	Behave : PROCESS IS
	BEGIN
		s_Reset <= '1';
		WAIT FOR 100 ns;
		s_Vint <= '1';
		s_Cinq <= '0';
		WAIT FOR 500 ns;

		s_Reset <= '0';
		WAIT FOR 100 ns;
		s_Vint <= '0';
		s_Cinq <= '1';
		WAIT FOR 500 ns;

		s_Reset <= '1';
		WAIT FOR 100 ns;
		s_Vint <= '1';
		s_Cinq <= '0';
		WAIT FOR 75 ns;
		s_Vint <= '0';
		s_Cinq <= '1';
		WAIT FOR 75 ns;
		s_Vint <= '1';
		s_Cinq <= '0';
		WAIT FOR 75 ns;
		s_Vint <= '0';
		s_Cinq <= '1';
		WAIT FOR 75 ns;
		s_Vint <= '1';
		s_Cinq <= '0';
		WAIT FOR 75 ns;
		s_Vint <= '0';
		s_Cinq <= '1';
		WAIT FOR 75 ns;

		s_Reset <= '0';
	END PROCESS;
END stimulus;