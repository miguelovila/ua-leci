LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

--memória RAM de 16 posições, com um comprimento de palavra de 8 bits e com um porto de acesso para escrita síncrona e leitura assíncrona (i.e. um único endereço para leitura/escrita). Designe e entidade por “RAM_1P_16_8.vhd”. Os portos de entrada e saída da entidade poderão seguir a nomenclatura adotada nas aulas teórico‐práticas, ou seja clk, address, writeEnable, writeData e readData

ENTITY RAM_1P_16_8 IS
    PORT (
        clk : IN STD_LOGIC;
        address : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        writeEnable : IN STD_LOGIC;
        writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        readData : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END RAM_1P_16_8;

ARCHITECTURE Behavioral OF RAM_1P_16_8 IS
    CONSTANT NUM_WORDS : INTEGER := 16;
    CONSTANT WORD_SIZE : INTEGER := 8;

    SUBTYPE TDataWord IS STD_LOGIC_VECTOR(WORD_SIZE - 1 DOWNTO 0);
    TYPE TMemory IS ARRAY (0 TO NUM_WORDS - 1) OF TDataWord;
    SIGNAL s_memory : TMemory;
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF writeEnable = '1' THEN
                s_memory(to_integer(unsigned(address))) <= writeData;
            END IF;
        END IF;
    END PROCESS;
    readData <= s_memory(to_integer(unsigned(address)));
END Behavioral;