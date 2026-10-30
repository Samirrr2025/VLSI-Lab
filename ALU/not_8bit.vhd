library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8-bit bitwise NOT (operates on A only)
entity not_8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end not_8bit;

architecture Behavioral of not_8bit is
begin
    Y <= not A;
end Behavioral;
