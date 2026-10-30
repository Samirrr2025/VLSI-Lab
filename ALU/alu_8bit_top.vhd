library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Top-level 8-bit ALU: AND, OR, XOR, NOT, ADD, SUB
-- OP (op2 op1 op0): 000 = AND, 001 = OR, 010 = XOR, 011 = NOT(A), 100 = ADD, 101 = SUB
entity alu_8bit_top is
    Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
           B    : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK  : in  STD_LOGIC;
           OP   : in  STD_LOGIC_VECTOR (2 downto 0);
           S    : out STD_LOGIC_VECTOR (7 downto 0);
           COUT : out STD_LOGIC);
end alu_8bit_top;

architecture Structural of alu_8bit_top is

    component register_8bit
        Port ( CLK   : in  STD_LOGIC;
               RESET : in  STD_LOGIC;
               LOAD  : in  STD_LOGIC;
               D     : in  STD_LOGIC_VECTOR (7 downto 0);
               Q     : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    component and_8bit
        Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
               B : in STD_LOGIC_VECTOR (7 downto 0);
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    component or_8bit
        Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
               B : in STD_LOGIC_VECTOR (7 downto 0);
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    component xor_8bit
        Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
               B : in STD_LOGIC_VECTOR (7 downto 0);
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    component not_8bit
        Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
               Y : out STD_LOGIC_VECTOR (7 downto 0));
    end component;

    component adder_8bit
        Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
               B    : in  STD_LOGIC_VECTOR (7 downto 0);
               CIN  : in  STD_LOGIC;
               SUM  : out STD_LOGIC_VECTOR (7 downto 0);
               COUT : out STD_LOGIC);
    end component;

    component subtractor_8bit
        Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
               B    : in  STD_LOGIC_VECTOR (7 downto 0);
               D    : out STD_LOGIC_VECTOR (7 downto 0);
               BOUT : out STD_LOGIC);
    end component;

    signal qA, qB                       : STD_LOGIC_VECTOR (7 downto 0);
    signal and_r, or_r, xor_r, not_r    : STD_LOGIC_VECTOR (7 downto 0);
    signal add_r, sub_r                 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_cout, sub_bout           : STD_LOGIC;

begin

    -- Operand registers: load A and B on every rising clock edge
    REG_A: register_8bit port map ( CLK => CLK, RESET => '0', LOAD => '1', D => A, Q => qA );
    REG_B: register_8bit port map ( CLK => CLK, RESET => '0', LOAD => '1', D => B, Q => qB );

    -- All six operation units run in parallel on the stored operands
    U_AND: and_8bit        port map ( A => qA, B => qB, Y => and_r );
    U_OR:  or_8bit         port map ( A => qA, B => qB, Y => or_r );
    U_XOR: xor_8bit        port map ( A => qA, B => qB, Y => xor_r );
    U_NOT: not_8bit        port map ( A => qA, Y => not_r );
    U_ADD: adder_8bit      port map ( A => qA, B => qB, CIN => '0', SUM => add_r, COUT => add_cout );
    U_SUB: subtractor_8bit port map ( A => qA, B => qB, D => sub_r, BOUT => sub_bout );

    -- Output multiplexer selected by OP
    with OP select
        S <= and_r  when "000",
             or_r   when "001",
             xor_r  when "010",
             not_r  when "011",
             add_r  when "100",
             sub_r  when "101",
             x"00"  when others;

    -- Cout: adder carry-out for ADD, subtractor borrow-out for SUB (1 = no borrow)
    with OP select
        COUT <= add_cout when "100",
                sub_bout when "101",
                '0'      when others;

end Structural;
