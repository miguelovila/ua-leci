library ieee;
use ieee.std_logic_1164.all;

entity down2statecounter2hz is
	generic (n : positive := 4);
	port    (hex0 : out std_logic_vector(6 downto 0);
				ledr : out std_logic_vector(0 downto 0);
	         key  : in  std_logic_vector(1 downto 0);
	         clock_50 : in std_logic);
end down2statecounter2hz;

architecture behavioral of down2statecounter2hz is
	signal s_key0 : std_logic := '1';
	signal s_key1 : std_logic := '1';
	
	signal s_key0_clean : std_logic := '0';
	signal s_reset : std_logic := '0';

	signal s_2hzclock : std_logic;
	signal s_4bitcontagem : std_logic_vector((n-1) downto 0);
	signal s_7segmentosbin : std_logic_vector(6 downto 0);
begin
	sincronizacaobotoes : process(clock_50)
	 begin
	     if (rising_edge(CLOCK_50)) then
		      s_key0 <= KEY(0);
				s_key1 <= KEY(1);
		  end if;
    end process;
	 
	 debouncerKEY0 : entity work.DebouncerUnit(Behavioral)
	                generic map(kHzClkFreq     => 50000,
						             mSecMinInWidth => 100,
										 inPolarity     => '0',
										 outPolarity    => '1')
						 port map(refClk    => clock_50,
						          dirtyIn   => s_key0,
									 pulsedOut => s_key0_clean);
									 
	 process(s_key0_clean)
	 begin
		if (s_key0_clean = '1') then
			ledr(0) <= '1';
		else
			ledr(0) <= '0';
		end if;
	 end process;
	 
	 resetProcess : process(s_key0_clean)
	 begin
	     s_reset <= s_key0_clean;
	 end process;
	 /*
	 debouncerKEY1 : entity work.DebouncerUnit(Behavioral)
	                generic map(kHzClkFreq     => 50000,
						             mSecMinInWidth => 100,
										 inPolarity     => '0',
										 outPolarity    => '1')
						 port map(refClk    => CLOCK_50,
						          dirtyIn   => s_key1,
									 pulsedOut => s_key1_clean);
	*/								 
	/* Nao se pode usar o divisor de frequencia, tem de ser um gerador de pulsos
	
	divisorfrequencia2hz : entity work.divisorfreqn(behavioral)
	generic map (fatordivisao => 25000000)
	port map(entradaclock => clock_50,
				saidaclock => s_clock);
	*/
	pulso2hz : entity work.geradorpulsosn(behavioral)
	generic map (iteracoes => 25000000)
	port map(entradaclock => clock_50,
				saidasinal => s_2hzclock);
	
	decrementador4bits : entity work.contadorincdecnbits(behavioral)
	generic map (n => n)
	port map(incdec => '1',
				resetar => s_key0_clean,
				entradaclock  => s_2hzclock,
			   contagem  => s_4bitcontagem);
				
	desc7segmentos : entity work.descodificador7segmentos(behavioral)
	port map(entradabinaria => s_4bitcontagem,
						   ativo => '1',
				  saidabinaria => s_7segmentosbin);
								
	hex0 <= s_7segmentosbin;
end behavioral;