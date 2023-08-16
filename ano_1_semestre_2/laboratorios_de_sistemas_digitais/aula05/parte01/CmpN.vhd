library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cmpn is
	generic (N		 : positive := 8);
	port(input0     : in  std_logic_vector((N-1) downto 0);
		  input1     : in  std_logic_vector((N-1) downto 0);
		  equal      : out std_logic;
		  notequal   : out std_logic;
		  ltsigned   : out std_logic;
		  ltunsigned : out std_logic);
end cmpn;

architecture behavioral of cmpn is
begin
	equal      <= '1' when (input0 = input1) else '0';
	notequal   <= '1' when (input0 /= input1) else '0';
	ltsigned   <= '1' when (signed(input0) < signed(input1)) else '0';
	ltunsigned <= '1' when (unsigned(input0) < unsigned(input1)) else '0';
end behavioral;