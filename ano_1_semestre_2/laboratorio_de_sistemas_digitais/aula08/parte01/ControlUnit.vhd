library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ControlUnit is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  statop	: in  std_logic;
		  laprst	: in  std_logic;
		  cntRst	: out std_logic;
		  cntEnb	: out std_logic;
		  regEnb	: out std_logic;
		  debugl : out std_logic_vector(4 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is

	type TState is (CLEARED, STARTED, STOPPED, LAPVIEW, LAPSTOP);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= CLEARED;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, statop, laprst)
	begin
		case (s_currentState) is
		when CLEARED =>
			debugl <= "10000";
			cntRst <= '1';
			cntEnb <= '1';
			regEnb <= '1';
			if (statop = '1') then
				s_nextState <= STARTED;
			else
				s_nextState <= CLEARED;
			end if;
		when STARTED =>
			debugl <= "01000";
			cntRst <= '0';
			cntEnb <= '1';
			regEnb <= '1';
			if (laprst = '1') then
				s_nextState <= LAPVIEW;
			elsif (statop = '1') then
				s_nextState <= STOPPED;
			else
				s_nextState <= STARTED;
			end if;
		when STOPPED =>
			debugl <= "00100";
			cntRst <= '0';
			cntEnb <= '0';
			regEnb <= '1';
			if (statop = '1') then
				s_nextState <= STARTED;
			elsif (laprst = '1') then
				s_nextState <= CLEARED;
			else
				s_nextState <= STOPPED;
			end if;
		when LAPVIEW =>
			debugl <= "00010";
			cntRst <= '0';
			cntEnb <= '1';
			regEnb <= '0';
			if (laprst = '1') then
				s_nextState <= STARTED;
			else
				s_nextState <= LAPVIEW;
			end if;
		when LAPSTOP =>
			debugl <= "00001";
			cntRst <= '0';
			cntEnb <= '0';
			regEnb <= '0';
			if (laprst = '1') then
				s_nextState <= STARTED;
			else
				s_nextState <= LAPSTOP;
			end if;
		end case;
	end process;
end Behavioral;
