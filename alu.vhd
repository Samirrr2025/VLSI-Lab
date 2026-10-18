library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu is
    port (
        ACC     : in  std_logic_vector(7 downto 0);
        OPERAND : in  std_logic_vector(7 downto 0);
        SEL     : in  std_logic_vector(2 downto 0);
        RESULT  : out std_logic_vector(7 downto 0)
    );
end alu;

architecture rtl of alu is
begin
    process (ACC, OPERAND, SEL)
    begin
        case SEL is
            when "000"  => RESULT <= OPERAND;                                              -- LDI
            when "001"  => RESULT <= std_logic_vector(unsigned(ACC) + unsigned(OPERAND));  -- ADD
            when "010"  => RESULT <= std_logic_vector(unsigned(ACC) - unsigned(OPERAND));  -- SUB
            when "011"  => RESULT <= ACC xor OPERAND;                                      -- XOR
            when "100"  => RESULT <= '0' & ACC(7 downto 1);                                -- SHR
            when others => RESULT <= ACC;
        end case;
    end process;
end rtl;
