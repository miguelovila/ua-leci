LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Ram_1P_16_8 IS
END Ram_1P_16_8;

ARCHITECTURE Stimulus OF Ram_1P_16_8 IS
    SIGNAL s_clk, s_writeEnable : STD_LOGIC;
    SIGNAL s_address : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL s_writeData : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_readData : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    ram_ut : ENTITY work.Ram_1P_16_8TB(Behavioral)
        PORT MAP(
            clk => s_clk,
            writeEnable => s_writeEnable,
            address => s_address,
            writeData => s_writeData,
            readData => s_readData);

    clkproc : PROCESS
    BEGIN
        s_clk <= '0';
        WAIT FOR 10 ns;
        s_clk <= '1';
        WAIT FOR 10 ns;
    END PROCESS;

    strproc : PROCESS
    BEGIN
        s_writeEnable <= '0';

    END PROCESS;
END Stimulus;