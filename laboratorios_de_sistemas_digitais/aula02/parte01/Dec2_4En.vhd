library ieee;
use ieee.std_logic_1164.all;

entity dec2_4en is
	port(	enable : in std_logic;
			inputs : in std_logic_vector(1 downto 0);
		  outputs : out std_logic_vector(3 downto 0));
end dec2_4en;

architecture behavequations of dec2_4en is
begin
	outputs(0) <= enable and (not inputs(1)) and (not inputs(0));
	outputs(1) <= enable and (not inputs(1)) and ( inputs(0));
	outputs(2) <= enable and ( inputs(1)) and (not inputs(0));
	outputs(3) <= enable and ( inputs(1)) and ( inputs(0));
end behavequations;

architecture behavassign of dec2_4en is
begin
	outputs <= "0000" when (enable = '0') else
				  "0001" when (inputs = "00") else
              "0010" when (inputs = "01") else
              "0100" when (inputs = "10") else
              "1000";
end behavassign;

architecture behavproc of dec2_4en is
begin
	process(enable, inputs)
	begin
		if (enable = '0') then
			outputs <= "0000";
		elsif (inputs = "00") then
			outputs <= "0001";
		elsif (inputs = "01") then
			outputs <= "0010";
		elsif (inputs = "10") then
			outputs <= "0100";
		else
			outputs <= "1000";
		end if;
--end if;
	end process;
end behavproc;

-- En I1 I0 - O3 O2 O1 O0
-- 0  0  0  - 0  0  0  0 
-- 0  0  1  - 0  0  0  0 
-- 0  1  0  - 0  0  0  0 
-- 0  1  1  - 0  0  0  0
-----
-- 1  0  0  - 0  0  0  1 
-- 1  0  1  - 0  0  1  0 
-- 1  1  0  - 0  1  0  0 
-- 1  1  1  - 1  0  0  0 
