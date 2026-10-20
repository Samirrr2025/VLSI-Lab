library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    port (
        OPCODE  : in  std_logic_vector(3 downto 0);
        ALU_SEL : out std_logic_vector(2 downto 0);
        ACC_WE  : out std_logic    -- also enables Z update
    );
end control_unit;

architecture rtl of control_unit is
begin
    process (OPCODE)
    begin
        ALU_SEL <= "000";
        ACC_WE  <= '0';             -- default: NOP
        case OPCODE is
            when "0001" => ALU_SEL <= "000"; ACC_WE <= '1';  -- LDI
            when "0010" => ALU_SEL <= "001"; ACC_WE <= '1';  -- ADD
            when "0011" => ALU_SEL <= "010"; ACC_WE <= '1';  -- SUB
            when "0110" => ALU_SEL <= "011"; ACC_WE <= '1';  -- XOR
            when "1001" => ALU_SEL <= "100"; ACC_WE <= '1';  -- SHR
            when others => null;                             -- NOP
        end case;
    end process;
end rtl;
