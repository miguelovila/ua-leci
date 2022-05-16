library ieee;
use ieee.std_logic_1164.all;

entity penc4_2 is
	port (inputport : in  std_logic_vector(3 downto 0);
	      outpuport : out std_logic_vector(1 downto 0);
			validoutp : out std_logic);
end penc4_2;

architecture behaveproc of penc4_2 is
begin
	process(inputport)
	begin
		if (inputport = "0000") then
			outpuport <= "00";
			validoutp <= '0';
		else
			validoutp <= '1';
			if    (inputport(3) = '1') then
				outpuport <= "11";
			elsif (inputport(2) = '1') then
				outpuport <= "10";
			elsif (inputport(1) = '1') then
				outpuport <= "01";
			else
				outpuport <= "00";
			end if;
		end if;
	end process;
end behaveproc;

/* Encoder4:2 Prioritario
	I3 I2 I1 I0 - O1 O0 VO
	0  0  0  1  - 0  0  1
	0  0  1  0  - 0  1  1
	0  0  1  1  - 0  1  1
	0  1  0  0  - 1  0  1
	0  1  0  1  - 1  0  1
	0  1  1  0  - 1  0  1
	0  1  1  1  - 1  0  1
	1  0  0  0  - 1  1  1
	1  0  0  0  - 1  1  1
	1  0  0  1  - 1  1  1
	1  0  1  0  - 1  1  1
	1  0  1  1  - 1  1  1
	1  1  0  0  - 1  1  1
	1  1  0  1  - 1  1  1
	1  1  1  0  - 1  1  1
	1  1  1  1  - 1  1  1
	0  0  0  0  - 0  0  0 (Output invalida)
*/