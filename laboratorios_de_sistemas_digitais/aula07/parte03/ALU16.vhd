library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
 
entity alu16 is 
   port(op  : in  std_logic_vector(2 downto 0); 
        op0 : in  std_logic_vector(15 downto 0); 
        op1 : in  std_logic_vector(15 downto 0); 
        res : out std_logic_vector(15 downto 0); 
        mhi : out std_logic_vector(15 downto 0)); 
end alu16; 
 
architecture behavioral of alu16 is 
   signal s_mres : std_logic_vector(31 downto 0); 
begin 
  s_mres <= std_logic_vector(unsigned(op0) * unsigned(op1)); 
  process(op, op0, op1, s_mres) 
  begin 
    case op is 
      when "000" => 
        res <= std_logic_vector(unsigned(op0) + unsigned(op1)); 
      when "001" => 
        res <= std_logic_vector(unsigned(op0) - unsigned(op1)); 
      when "010" => 
        res <= s_mres(15 downto 0); 
      when "011" => 
        res <= std_logic_vector(unsigned(op0) / unsigned(op1)); 
      when "100" => 
        res <= std_logic_vector(unsigned(op0) rem unsigned(op1)); 
      when "101" => 
        res <= op0 and op1; 
      when "110" => 
        res <= op0 or  op1; 
      when "111" => 
        res <= op0 xor op1;
		when others =>
		  null;
    end case; 
  end process; 
  mhi <= s_mres(31 downto 16) when (op = "010") else (others => '0'); 
end behavioral;