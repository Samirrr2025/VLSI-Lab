library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc is
    port (
        CLK    : in  std_logic;
        RESET  : in  std_logic;
        PC_OUT : out std_logic_vector(3 downto 0)
    );
end pc;

architecture rtl of pc is
    signal cnt : unsigned(3 downto 0) := (others => '0');
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                cnt <= (others => '0');
            else
                cnt <= cnt + 1;      -- Set 3 has no JZ, so always PC + 1
            end if;
        end if;
    end process;

    PC_OUT <= std_logic_vector(cnt);
end rtl;
