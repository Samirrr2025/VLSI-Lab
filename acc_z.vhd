library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity acc_z is
    port (
        CLK   : in  std_logic;
        RESET : in  std_logic;
        WE    : in  std_logic;
        D     : in  std_logic_vector(7 downto 0);
        ACC   : out std_logic_vector(7 downto 0);
        Z     : out std_logic
    );
end acc_z;

architecture rtl of acc_z is
    signal acc_r : std_logic_vector(7 downto 0) := (others => '0');
    signal z_r   : std_logic := '1';
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                acc_r <= (others => '0');
                z_r   <= '1';
            elsif WE = '1' then
                acc_r <= D;
                if D = "00000000" then
                    z_r <= '1';
                else
                    z_r <= '0';
                end if;
            end if;   -- NOP: ACC and Z unchanged
        end if;
    end process;

    ACC <= acc_r;
    Z   <= z_r;
end rtl;
