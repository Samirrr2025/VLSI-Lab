library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8-bit bitwise and
entity and_8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end and_8bit;

architecture Behavioral of and_8bit is
begin
    Y <= A and B;
end Behavioral;
