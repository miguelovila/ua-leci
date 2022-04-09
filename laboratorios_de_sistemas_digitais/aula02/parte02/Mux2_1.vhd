library ieee;
use ieee.std_logic_1164.all;

--    MUX 2:1
-- I1 I0 S0 - O0
-- x  0  0  - 0 
-- x  1  0  - 1 
-- 0  x  1  - 0 
-- 1  x  1  - 1 

entity mux2_1 is
	port(inputs : in  std_logic_vector(2 downto 0);
		  output : out std_logic                  );
end mux2_1;

architecture behaveproc of mux2_1 is
begin
	process(inputs)
	begin
		if (inputs(2) = '0') then
			output <= inputs(0);
		else
			output <= inputs(1);
		end if;
	end process;
end behaveproc;