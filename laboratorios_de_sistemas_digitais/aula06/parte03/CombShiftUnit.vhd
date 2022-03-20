library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity combshiftunit is
	port(datain : in std_logic_vector(7 downto 0);
		  shamount : in std_logic_vector(2 downto 0);
        clk, loaden, rotate, dirleft, sharith : in std_logic;
        dataout : out std_logic_vector(7 downto 0));
end combshiftunit;

architecture behavioral of combshiftunit is
signal s_shiftreg : std_logic_vector(7 downto 0);  begin  
  process(clk) 
  begin 
    if (falling_edge(clk)) then 
       if (loaden = '1') then 
          s_shiftreg <= datain; 
       elsif (rotate = '1') then 
          if (dirleft = '1') then 
            s_shiftreg <= std_logic_vector(rotate_left(unsigned(s_shiftreg),to_integer(unsigned(shamount))));
          else 
            s_shiftreg <= std_logic_vector(rotate_right(unsigned(s_shiftreg),to_integer(unsigned(shamount)))); 
          end if; 
       elsif (sharith = '1') then 
			if (dirleft = '1') then 
				s_shiftreg <= std_logic_vector(shift_left(signed(s_shiftreg),to_integer(unsigned(shamount))));
         else 
            s_shiftreg <= std_logic_vector(shift_right(signed(s_shiftreg),to_integer(unsigned(shamount)))); 
         end if;
		 else
			if (dirleft = '1') then 
            s_shiftreg <= std_logic_vector(shift_left(unsigned(s_shiftreg),to_integer(unsigned(shamount)))); 
          else 
            s_shiftreg <= std_logic_vector(shift_right(unsigned(s_shiftreg),to_integer(unsigned(shamount)))); 
          end if;
       end if;
    end if; 
  end process; 
  dataout <= s_shiftreg; 
end behavioral;