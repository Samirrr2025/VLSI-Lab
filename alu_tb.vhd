library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_tb is
end alu_tb;

architecture sim of alu_tb is
    signal ACC     : std_logic_vector(7 downto 0) := (others => '0');
    signal OPERAND : std_logic_vector(7 downto 0) := (others => '0');
    signal SEL     : std_logic_vector(2 downto 0) := (others => '0');
    signal RESULT  : std_logic_vector(7 downto 0);

    constant N : integer := 11;
    type sel_arr is array (0 to N-1) of std_logic_vector(2 downto 0);
    type byte_arr is array (0 to N-1) of std_logic_vector(7 downto 0);

    --                           LDI    LDI    ADD    ADD    SUB    SUB    XOR    XOR    SHR    SHR    SHR
    constant T_SEL : sel_arr  := ("000", "000", "001", "001", "010", "010", "011", "011", "100", "100", "100");
    constant T_ACC : byte_arr := (x"55", x"FF", x"1E", x"FF", x"40", x"00", x"3F", x"AA", x"80", x"01", x"FF");
    constant T_OPR : byte_arr := (x"1E", x"00", x"22", x"01", x"10", x"01", x"3F", x"55", x"00", x"00", x"00");
    constant T_EXP : byte_arr := (x"1E", x"00", x"40", x"00", x"30", x"FF", x"00", x"FF", x"40", x"00", x"7F");
begin
    DUT : entity work.alu
        port map (ACC => ACC, OPERAND => OPERAND, SEL => SEL, RESULT => RESULT);

    stim_proc : process
    begin
        for i in 0 to N-1 loop
            SEL     <= T_SEL(i);
            ACC     <= T_ACC(i);
            OPERAND <= T_OPR(i);
            wait for 10 ns;
            assert RESULT = T_EXP(i)
                report "ALU test " & integer'image(i) & " MISMATCH"
                severity error;
        end loop;
        report "alu_tb finished: all 11 checks done." severity note;
        wait;
    end process;
end sim;
