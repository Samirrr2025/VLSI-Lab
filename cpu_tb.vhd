library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cpu_tb is
end cpu_tb;

architecture sim of cpu_tb is
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '1';
    signal Q     : std_logic_vector(7 downto 0);
    signal Z     : std_logic;
    signal PC    : std_logic_vector(3 downto 0);
    signal done  : boolean := false;

    constant CLK_PERIOD : time := 10 ns;

    -- Expected values AFTER each rising edge (Appendix B, Set 3)
    type acc_arr is array (0 to 7) of std_logic_vector(7 downto 0);
    type z_arr   is array (0 to 7) of std_logic;
    type pc_arr  is array (0 to 7) of integer;

    constant EXP_ACC : acc_arr := (x"00", x"80", x"40", x"30", x"3F", x"00", x"07", x"03");
    constant EXP_Z   : z_arr   := ('1',   '0',   '0',   '0',   '0',   '1',   '0',   '0');
    constant EXP_PC  : pc_arr  := (0,     1,     2,     3,     4,     5,     6,     7);
begin
    DUT : entity work.cpu_top
        port map (CLK => CLK, RESET => RESET, Q => Q, Z => Z, PC => PC);

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
        -- Cycle 0: RESET for one rising edge
        RESET <= '1';
        wait until rising_edge(CLK);
        wait for 1 ns;
        assert Q = EXP_ACC(0) and Z = EXP_Z(0) and to_integer(unsigned(PC)) = EXP_PC(0)
            report "Cycle 0 (RESET) MISMATCH" severity error;
        RESET <= '0';

        -- Cycles 1..7: one per instruction
        for i in 1 to 7 loop
            wait until rising_edge(CLK);
            wait for 1 ns;
            assert Q = EXP_ACC(i) and Z = EXP_Z(i) and to_integer(unsigned(PC)) = EXP_PC(i)
                report "Cycle " & integer'image(i) & " MISMATCH" severity error;
        end loop;

        report "Simulation finished: all 8 checks done." severity note;
        wait for CLK_PERIOD;
        done <= true;
        wait;
    end process;
end sim;
