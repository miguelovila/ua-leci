library ieee;
use ieee.std_logic_1164.all;

entity logicunit is
	port(input0 : in std_logic;
		  input1 : in std_logic;
		  invout : out std_logic;
		  andout : out std_logic;
		  orout : out std_logic;
		  xorout : out std_logic;
		  nandout : out std_logic;
		  norout : out std_logic);
end logicunit;

architecture behavioral of logicunit is
begin
	invout <= not input0;
	andout <= input0 and input1;
	orout <= input0 or input1;
	xorout <= input0 xor input1;
	nandout <= input0 nand input1;
	norout <= input0 nor input1;
end behavioral;