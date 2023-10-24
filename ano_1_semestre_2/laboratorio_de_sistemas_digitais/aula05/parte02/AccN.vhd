library ieee;
use ieee.std_logic_1164.all;

entity accn is
	generic (n : positive := 4);
	port 	  (reset   : in std_logic; 
				enable  : in std_logic;
				clock   : in std_logic;
				datain  : in  std_logic_vector((n-1) downto 0);
				dataout : out std_logic_vector((n-1) downto 0));
end accn;

architecture behavioral of accn is
	signal regdataout, adderdataout : std_logic_vector((n-1) downto 0);
begin
	adder : entity work.addern(behavioral)
	generic map(n => n)
	port map(operand0 => datain,
				operand1 => regdataout,
				result => adderdataout);
	reg   : entity work.regn(behavioral)
	generic map(n => n)
	port map(reset => reset,
				enable => enable,
				clock => clock,
			   datain => adderdataout,
				dataout => regdataout);
	dataout <= regdataout;
end behavioral;