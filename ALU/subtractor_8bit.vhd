library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8-bit subtractor, D = A - B, using two's complement: A + (not B) + 1
-- BOUT = 1 : no borrow (A >= B)
-- BOUT = 0 : borrow occurred (A < B)
entity subtractor_8bit is
    Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
           B    : in  STD_LOGIC_VECTOR (7 downto 0);
           D    : out STD_LOGIC_VECTOR (7 downto 0);
           BOUT : out STD_LOGIC);
end subtractor_8bit;

architecture Structural of subtractor_8bit is

    component adder_8bit
        Port ( A    : in  STD_LOGIC_VECTOR (7 downto 0);
               B    : in  STD_LOGIC_VECTOR (7 downto 0);
               CIN  : in  STD_LOGIC;
               SUM  : out STD_LOGIC_VECTOR (7 downto 0);
               COUT : out STD_LOGIC);
    end component;

    signal nB : STD_LOGIC_VECTOR (7 downto 0);

begin

    nB <= not B;

    SUBTRACT: adder_8bit port map (
        A => A, B => nB, CIN => '1', SUM => D, COUT => BOUT
    );

end Structural;
