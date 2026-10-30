library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_1bit_tb is
end register_1bit_tb;

architecture Behavioral of register_1bit_tb is

    component register_1bit
        Port ( CLK   : in  STD_LOGIC;
               RESET : in  STD_LOGIC;
               LOAD  : in  STD_LOGIC;
               D     : in  STD_LOGIC;
               Q     : out STD_LOGIC);
    end component;

    signal CLK_tb   : STD_LOGIC := '0';
    signal RESET_tb : STD_LOGIC := '0';
    signal LOAD_tb  : STD_LOGIC := '0';
    signal D_tb     : STD_LOGIC := '0';
    signal Q_tb     : STD_LOGIC;

begin

    UUT: register_1bit port map ( CLK => CLK_tb, RESET => RESET_tb,
                                  LOAD => LOAD_tb, D => D_tb, Q => Q_tb );

    -- Clock: 20 ns period (rising edges at 10, 30, 50 ... ns)
    clk_proc: process
    begin
        CLK_tb <= '0'; wait for 10 ns;
        CLK_tb <= '1'; wait for 10 ns;
    end process;

    stim_proc: process
    begin
        -- Reset: Q = 0 even though D = 1
        RESET_tb <= '1'; LOAD_tb <= '0'; D_tb <= '1';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '0') report "FAIL: reset did not clear Q" severity error;

        -- Load D = 1
        RESET_tb <= '0'; LOAD_tb <= '1'; D_tb <= '1';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '1') report "FAIL: Q did not load 1" severity error;

        -- Hold: LOAD = 0, D changes to 0, Q must stay 1
        LOAD_tb <= '0'; D_tb <= '0';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '1') report "FAIL: Q changed while LOAD=0 (held 1)" severity error;

        -- Load D = 0
        LOAD_tb <= '1'; D_tb <= '0';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '0') report "FAIL: Q did not load 0" severity error;

        -- Hold: LOAD = 0, D changes to 1, Q must stay 0
        LOAD_tb <= '0'; D_tb <= '1';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '0') report "FAIL: Q changed while LOAD=0 (held 0)" severity error;

        -- Load D = 1 again
        LOAD_tb <= '1'; D_tb <= '1';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '1') report "FAIL: Q did not load 1 (second time)" severity error;

        -- Reset overrides LOAD
        RESET_tb <= '1'; LOAD_tb <= '1'; D_tb <= '1';
        wait until rising_edge(CLK_tb); wait for 2 ns;
        assert (Q_tb = '0') report "FAIL: reset did not override load" severity error;

        report "PASS: register_1bit testbench completed" severity note;
        wait;
    end process;

end Behavioral;
