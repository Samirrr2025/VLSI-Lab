library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prog_rom_tb is
end prog_rom_tb;

architecture sim of prog_rom_tb is
    signal ADDR : std_logic_vector(3 downto 0) := (others => '0');
    signal DATA : std_logic_vector(11 downto 0);

    type rom_arr is array (0 to 15) of std_logic_vector(11 downto 0);
    constant EXPECTED : rom_arr := (
        0      => x"180",   -- LDI 0x80
        1      => x"900",   -- SHR
        2      => x"310",   -- SUB 0x10
        3      => x"20F",   -- ADD 0x0F
        4      => x"63F",   -- XOR 0x3F
        5      => x"207",   -- ADD 0x07
        6      => x"900",   -- SHR
        others => x"000"    -- NOP
    );
begin
    DUT : entity work.prog_rom
        port map (ADDR => ADDR, DATA => DATA);

    stim_proc : process
    begin
        for i in 0 to 15 loop
            ADDR <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns;
            assert DATA = EXPECTED(i)
                report "ROM address " & integer'image(i) & " MISMATCH"
                severity error;
        end loop;
        report "prog_rom_tb finished: all 16 addresses checked." severity note;
        wait;
    end process;
end sim;
