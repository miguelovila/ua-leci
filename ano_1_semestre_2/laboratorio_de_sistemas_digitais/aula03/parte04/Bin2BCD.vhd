LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bin2bcd IS
	PORT (
		rinport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		minport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		binout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		binout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		binout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END bin2bcd;

ARCHITECTURE behavioral OF bin2bcd IS
	SIGNAL rmsignal : unsigned(7 DOWNTO 0);
BEGIN
	rmsignal <= unsigned(minport) & unsigned(rinport);
	binout2 <= STD_LOGIC_VECTOR(rmsignal/100)(3 DOWNTO 0);
	binout1 <= STD_LOGIC_VECTOR((rmsignal REM 100)/10)(3 DOWNTO 0);
	binout0 <= STD_LOGIC_VECTOR((rmsignal REM 100) REM 10)(3 DOWNTO 0);
END behavioral;