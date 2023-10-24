library ieee;
use ieee.std_logic_1164.all;

entity eqcmp8 is
	port(input0 : in std_logic_vector(7 downto 0);
		  input1 : in std_logic_vector(7 downto 0);
		  cmpout : out std_logic);
end eqcmp8;

architecture behavioral of eqcmp8 is
begin
	cmpout <= '1' when (input0 = input1) else '0';
end behavioral;