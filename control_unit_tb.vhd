library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit_tb is
end control_unit_tb;

architecture sim of control_unit_tb is
    signal OPCODE  : std_logic_vector(3 downto 0) := (others => '0');
    signal ALU_SEL : std_logic_vector(2 downto 0);
    signal ACC_WE  : std_logic;

    type op_arr  is array (0 to 7) of std_logic_vector(3 downto 0);
    type sel_arr is array (0 to 7) of std_logic_vector(2 downto 0);
    type we_arr  is array (0 to 7) of std_logic;

    --                              LDI     ADD     SUB     XOR     SHR     NOP     unused  unused
    constant OPS  : op_arr  := ("0001", "0010", "0011", "0110", "1001", "0000", "0100", "1111");
    constant SELS : sel_arr := ("000",  "001",  "010",  "011",  "100",  "000",  "000",  "000");
    constant WES  : we_arr  := ('1',    '1',    '1',    '1',    '1',    '0',    '0',    '0');
begin
    DUT : entity work.control_unit
        port map (OPCODE => OPCODE, ALU_SEL => ALU_SEL, ACC_WE => ACC_WE);

    stim_proc : process
    begin
        for i in 0 to 7 loop
            OPCODE <= OPS(i);
            wait for 10 ns;
            assert ALU_SEL = SELS(i) and ACC_WE = WES(i)
                report "Control unit test " & integer'image(i) & " MISMATCH"
                severity error;
        end loop;
        report "control_unit_tb finished: all 8 opcodes checked." severity note;
        wait;
    end process;
end sim;
