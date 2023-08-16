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