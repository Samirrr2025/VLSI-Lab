library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_top is
    port (
        CLK   : in  std_logic;
        RESET : in  std_logic;
        Q     : out std_logic_vector(7 downto 0);   -- ACC
        Z     : out std_logic;
        PC    : out std_logic_vector(3 downto 0)
    );
end cpu_top;

architecture structural of cpu_top is
    signal pc_s    : std_logic_vector(3 downto 0);
    signal instr_s : std_logic_vector(11 downto 0);
    signal sel_s   : std_logic_vector(2 downto 0);
    signal we_s    : std_logic;
    signal acc_s   : std_logic_vector(7 downto 0);
    signal res_s   : std_logic_vector(7 downto 0);
begin
    U_PC  : entity work.pc
        port map (CLK => CLK, RESET => RESET, PC_OUT => pc_s);

    U_ROM : entity work.prog_rom
        port map (ADDR => pc_s, DATA => instr_s);

    U_CU  : entity work.control_unit
        port map (OPCODE => instr_s(11 downto 8), ALU_SEL => sel_s, ACC_WE => we_s);

    U_ALU : entity work.alu
        port map (ACC => acc_s, OPERAND => instr_s(7 downto 0), SEL => sel_s, RESULT => res_s);

    U_ACC : entity work.acc_z
        port map (CLK => CLK, RESET => RESET, WE => we_s, D => res_s, ACC => acc_s, Z => Z);

    Q  <= acc_s;
    PC <= pc_s;
end structural;
