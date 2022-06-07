library IEEE; 
use IEEE.STD_LOGIC_1164.all;

-- entidade sem portos
entity binudcntenrst8tb is
end binudcntenrst8tb;

architecture stimulus of binudcntenrst8tb is
	-- sinais para ligar às entradas da uut
	signal s_reset, s_clk : std_logic;
	signal s_enable, s_updown_n : std_logic;
	-- sinal para ligar às saídas da uut
	signal s_cntout : std_logic_vector(3 downto 0);
begin
	-- instanciação da unit under test (uut)
	uut : entity work.binudcntenrst4(behavioral)
			port map(reset => s_reset,
						clk => s_clk,
						enable => s_enable,
						updown_n => s_updown_n,
						cntout => s_cntout);
	-- process clock
	clock_proc : process
					 begin
					     s_clk <= '0'; wait for 100 ns;
						  s_clk <= '1'; wait for 100 ns;
					 end process;
	--process stim
	stim_proc : process
					begin
						s_reset <= '1';
						s_enable <= '0';
						s_updown_n <= '1';
						wait for 325 ns;
						s_reset <= '0';
						wait for 25 ns;
						s_enable <= '1';
						wait for 925 ns;
						s_enable <= '0';
						wait for 375 ns;
						s_updown_n <= '0';
						s_enable <= '1';
						wait for 975 ns;
						s_enable <= '0';
						wait for 125 ns;
					end process;
end stimulus;