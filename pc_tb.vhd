library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc_tb is
end pc_tb;

architecture sim of pc_tb is
    signal CLK    : std_logic := '0';
    signal RESET  : std_logic := '1';
    signal PC_OUT : std_logic_vector(3 downto 0);
    signal done   : boolean := false;
    constant CLK_PERIOD : time := 10 ns;

    procedure check(signal pc : in std_logic_vector(3 downto 0);
                    exp : in integer; msg : in string) is
    begin
        assert to_integer(unsigned(pc)) = exp
            report msg & ": expected PC=" & integer'image(exp) &
                   " got " & integer'image(to_integer(unsigned(pc)))
            severity error;
    end procedure;
begin
    DUT : entity work.pc
        port map (CLK => CLK, RESET => RESET, PC_OUT => PC_OUT);

    clk_proc : process
    begin
        while not done loop
            CLK <= '0'; wait for CLK_PERIOD/2;
            CLK <= '1'; wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    stim_proc : process
    begin
        -- RESET asserted for two rising edges: PC = 0
        RESET <= '1';
        wait until rising_edge(CLK);
        wait until rising_edge(CLK);
        wait for 1 ns;
        check(PC_OUT, 0, "after RESET");
        RESET <= '0';

        -- 6 rising edges after RESET is released: 1..6
        for i in 1 to 6 loop
            wait until rising_edge(CLK);
            wait for 1 ns;
            check(PC_OUT, i, "count up");
        end loop;

        -- RESET asserted again: PC = 0
        RESET <= '1';
        wait until rising_edge(CLK);
        wait for 1 ns;
        check(PC_OUT, 0, "second RESET");
        RESET <= '0';

        -- 4 rising edges after RESET is released: 1..4
        for i in 1 to 4 loop
            wait until rising_edge(CLK);
            wait for 1 ns;
            check(PC_OUT, i, "count up again");
        end loop;

        report "pc_tb finished: all checks done." severity note;
        done <= true;
        wait;
    end process;
end sim;
