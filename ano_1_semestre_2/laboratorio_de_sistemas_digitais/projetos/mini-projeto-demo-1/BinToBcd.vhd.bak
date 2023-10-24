LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY BinToBcd IS
	PORT (
		dataIn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		binout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		binout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END BinToBcd;

ARCHITECTURE Behavioral OF BinToBcd IS
	SIGNAL s_DataIn : unsigned(5 DOWNTO 0);
BEGIN
	s_DataIn <= unsigned(dataIn);
	binout1 <= STD_LOGIC_VECTOR(s_DataIn/10)(3 DOWNTO 0);
	binout0 <= STD_LOGIC_VECTOR((s_DataIn REM 10))(3 DOWNTO 0);
END Behavioral;