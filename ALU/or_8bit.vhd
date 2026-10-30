library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8-bit bitwise or
entity or_8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end or_8bit;

architecture Behavioral of or_8bit is
begin
    Y <= A or B;
end Behavioral;
