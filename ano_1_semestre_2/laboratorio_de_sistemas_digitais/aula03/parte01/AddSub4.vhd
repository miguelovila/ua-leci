library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity addsub4 is
	port (a, b : in  std_logic_vector(3 downto 0);
			sub  : in  std_logic                   ;
			sum  : out std_logic_vector(3 downto 0);
			cout : out std_logic                  );
end addsub4;

architecture behavioral of addsub4 is 
  signal s_a, s_b, s_s : unsigned(4 downto 0);
begin 
  s_a  <= '0' & unsigned(a);   -- '0's para capturar o cout do 
  s_b  <= '0' & unsigned(b);   --  do bit mais significativo 
  s_s  <= (s_a + s_b) when (sub = '0') else (s_a - s_b); 
  sum  <= std_logic_vector(s_s(3 downto 0)); 
  cout <= s_s(4); 
end behavioral;

/*
architecture structural of addsub4 is
	signal s_b: std_logic_vector(3 downto 0);
begin
	s_b <= b when (sub = '0') else not b;
	adder: entity work.adder4(structural)
	port map (a => a,
				 b => s_b,
				 cin => sub,
				 s => sum,
				 cout => cout);
	-- A subtracao esta em complemento para 2
end structural;
*/