library ieee;
use ieee.std_logic_1164.all;

entity mux4_1 is
	port(selport : in  std_logic_vector(1 downto 0);
		  inpport : in  std_logic_vector(3 downto 0);
		  outport : out std_logic                  );
end mux4_1;

architecture behaviour of mux4_1 is
begin
	outport <= inpport(0) when (selport = "00") else
				  inpport(1) when (selport = "01") else
				  inpport(2) when (selport = "10") else
				  inpport(3) when (selport = "11");
end behaviour;