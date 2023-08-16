LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ShiftReg6BitsLeft IS
  PORT (
    clockIn : IN STD_LOGIC;
	 pulseEnable : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    addedBit : IN STD_LOGIC;
    dataOut : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END ShiftReg6BitsLeft;

ARCHITECTURE Behavioral OF ShiftReg6BitsLeft IS
  SIGNAL s_ShiftReg : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
BEGIN
  PROCESS (clockIn, reset, pulseEnable)
  BEGIN
	 IF (reset = '1') THEN
		s_ShiftReg <= "000000";
	 ELSIF (rising_edge(pulseEnable)) THEN
		s_ShiftReg <= s_ShiftReg(4 DOWNTO 0) & addedBit;
    END IF;
  END PROCESS;
  dataOut <= s_ShiftReg;
END Behavioral;