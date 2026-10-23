library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity acc_z_tb is
end acc_z_tb;

architecture sim of acc_z_tb is
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '1';
    signal WE    : std_logic := '0';
    signal D     : std_logic_vector(7 downto 0) := (others => '0');
    signal ACC   : std_logic_vector(7 downto 0);
    signal Z     : std_logic;
    signal done  : boolean := false;
    constant CLK_PERIOD : time := 10 ns;
begin
    DUT : entity work.acc_z
        port map (CLK => CLK, RESET => RESET, WE => WE, D => D, ACC => ACC, Z => Z);

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
        -- 1. RESET: ACC = 0x00, Z = 1
        RESET <= '1'; WE <= '0'; D <= x"AA";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"00" and Z = '1' report "RESET MISMATCH" severity error;

        -- 2. Load 0x1E: ACC = 0x1E, Z = 0
        RESET <= '0'; WE <= '1'; D <= x"1E";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"1E" and Z = '0' report "Load 1E MISMATCH" severity error;

        -- 3. Hold (WE = 0): ACC and Z unchanged although D = 0xAA
        WE <= '0'; D <= x"AA";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"1E" and Z = '0' report "Hold MISMATCH" severity error;

        -- 4. Load 0x00: ACC = 0x00, Z = 1
        WE <= '1'; D <= x"00";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"00" and Z = '1' report "Load 00 MISMATCH" severity error;

        -- 5. Load 0x80: ACC = 0x80, Z = 0
        D <= x"80";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"80" and Z = '0' report "Load 80 MISMATCH" severity error;

        -- 6. Hold with D = 0x00: Z must stay 0 (NOP does not touch Z)
        WE <= '0'; D <= x"00";
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"80" and Z = '0' report "Hold (D=00) MISMATCH" severity error;

        -- 7. RESET again: ACC = 0x00, Z = 1
        RESET <= '1';
        wait until rising_edge(CLK); wait for 1 ns;
        assert ACC = x"00" and Z = '1' report "Second RESET MISMATCH" severity error;

        report "acc_z_tb finished: all checks done." severity note;
        done <= true;
        wait;
    end process;
end sim;
