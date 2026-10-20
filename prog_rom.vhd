library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prog_rom is
    port (
        ADDR : in  std_logic_vector(3 downto 0);
        DATA : out std_logic_vector(11 downto 0)
    );
end prog_rom;

architecture rtl of prog_rom is
    type rom_t is array (0 to 15) of std_logic_vector(11 downto 0);
    constant ROM : rom_t := (
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
    DATA <= ROM(to_integer(unsigned(ADDR)));   -- combinational read
end rtl;
