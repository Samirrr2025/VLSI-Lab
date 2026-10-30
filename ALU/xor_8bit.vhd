library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 8-bit bitwise xor
entity xor_8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end xor_8bit;

architecture Behavioral of xor_8bit is
begin
    Y <= A xor B;
end Behavioral;
