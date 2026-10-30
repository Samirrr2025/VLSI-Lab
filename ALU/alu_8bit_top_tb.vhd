library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8bit_top_tb is
end alu_8bit_top_tb;

architecture Behavioral of alu_8bit_top_tb is

    component alu_8bit_top
        Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
               B    : in  STD_LOGIC_VECTOR (7 downto 0);
               CLK  : in  STD_LOGIC;
               OP   : in  STD_LOGIC_VECTOR (2 downto 0);
               S    : out STD_LOGIC_VECTOR (7 downto 0);
               COUT : out STD_LOGIC);
    end component;

    signal A_tb, B_tb : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal OP_tb      : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal CLK_tb     : STD_LOGIC := '0';
    signal S_tb       : STD_LOGIC_VECTOR (7 downto 0);
    signal COUT_tb    : STD_LOGIC;

begin

    UUT: alu_8bit_top port map ( A => A_tb, B => B_tb, CLK => CLK_tb,
                                 OP => OP_tb, S => S_tb, COUT => COUT_tb );

    -- Clock: 20 ns period (rising edges at 10, 30, 50 ... ns)
    clk_proc: process
    begin
        wait for 10 ns;
        CLK_tb <= not CLK_tb;
    end process;

    -- Each step: apply inputs, wait one full clock period, then check
    stim_proc: process
    begin
        A_tb <= x"0C"; B_tb <= x"0A";                            -- A = 12, B = 10

        OP_tb <= "000"; wait for 20 ns;                          -- AND -> 8
        assert (S_tb = x"08" and COUT_tb = '0') report "FAIL: AND" severity error;

        OP_tb <= "001"; wait for 20 ns;                          -- OR  -> 14
        assert (S_tb = x"0E" and COUT_tb = '0') report "FAIL: OR" severity error;

        OP_tb <= "010"; wait for 20 ns;                          -- XOR -> 6
        assert (S_tb = x"06" and COUT_tb = '0') report "FAIL: XOR" severity error;

        OP_tb <= "011"; wait for 20 ns;                          -- NOT A -> 243
        assert (S_tb = x"F3" and COUT_tb = '0') report "FAIL: NOT" severity error;

        OP_tb <= "100"; wait for 20 ns;                          -- ADD -> 22
        assert (S_tb = x"16" and COUT_tb = '0') report "FAIL: ADD" severity error;

        OP_tb <= "101"; wait for 20 ns;                          -- SUB -> 2, no borrow
        assert (S_tb = x"02" and COUT_tb = '1') report "FAIL: SUB" severity error;

        -- Extra cases: carry-out and borrow
        A_tb <= x"C8"; B_tb <= x"64";                            -- A = 200, B = 100
        OP_tb <= "100"; wait for 20 ns;                          -- ADD -> 300 = 44 with carry
        assert (S_tb = x"2C" and COUT_tb = '1') report "FAIL: ADD carry" severity error;

        A_tb <= x"0A"; B_tb <= x"0C";                            -- A = 10, B = 12
        OP_tb <= "101"; wait for 20 ns;                          -- SUB -> 254 (-2), borrow
        assert (S_tb = x"FE" and COUT_tb = '0') report "FAIL: SUB borrow" severity error;

        report "PASS: alu_8bit_top testbench completed" severity note;
        wait;
    end process;

end Behavioral;
