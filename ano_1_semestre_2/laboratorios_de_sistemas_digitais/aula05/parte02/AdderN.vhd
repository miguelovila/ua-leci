library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addern is
	generic (n        : positive := 4);
	port    (operand0 : in  std_logic_vector((n-1) downto 0);
				operand1 : in  std_logic_vector((n-1) downto 0);
				result   : out std_logic_vector((n-1) downto 0));
end addern;

architecture behavioral of addern is
	signal s_operand0, s_operand1,s_result : unsigned((n-1) downto 0);
begin
	s_operand0 <= unsigned(operand0);
	s_operand1 <= unsigned(operand1);
	s_result   <= s_operand0 + s_operand1;
	result <= std_logic_vector(s_result);
end behavioral;