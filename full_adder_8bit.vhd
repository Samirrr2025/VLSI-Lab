
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_8bit is
    Port ( A0 : in  STD_LOGIC;
	        A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           A4 : in  STD_LOGIC;
           A5 : in  STD_LOGIC;
           A6 : in  STD_LOGIC;
           A7 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B3 : in  STD_LOGIC;
           B4 : in  STD_LOGIC;
           B5 : in  STD_LOGIC;
           B6 : in  STD_LOGIC;
           B7 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S0 : out  STD_LOGIC;
           S1 : out  STD_LOGIC;
           S2 : out  STD_LOGIC;
           S3 : out  STD_LOGIC;
           S4 : out  STD_LOGIC;
           S5 : out  STD_LOGIC;
           S6 : out  STD_LOGIC;
           S7 : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end full_adder_8bit;

architecture structural of full_adder_8bit is
 component full_adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;
 signal C1, C2, C3, C4, C5, C6, C7 : STD_LOGIC;

begin
FA0: full_adder
        port map (
            A    => A0,
            B    => B0,
            Cin  => Cin,
            Sum  => S0,
            Cout => C1
        );

    -- Bit 1
    FA1: full_adder
        port map (
            A    => A1,
            B    => B1,
            Cin  => C1,
            Sum  => S1,
            Cout => C2
        );

    -- Bit 2
    FA2: full_adder
        port map (
            A    => A2,
            B    => B2,
            Cin  => C2,
            Sum  => S2,
            Cout => C3
        );

    -- Bit 3
    FA3: full_adder
        port map (
            A    => A3,
            B    => B3,
            Cin  => C3,
            Sum  => S3,
            Cout => C4
        );

    -- Bit 4
    FA4: full_adder
        port map (
            A    => A4,
            B    => B4,
            Cin  => C4,
            Sum  => S4,
            Cout => C5
        );

    -- Bit 5
    FA5: full_adder
        port map (
            A    => A5,
            B    => B5,
            Cin  => C5,
            Sum  => S5,
            Cout => C6
        );

    -- Bit 6
    FA6: full_adder
        port map (
            A    => A6,
            B    => B6,
            Cin  => C6,
            Sum  => S6,
            Cout => C7
        );

    -- Bit 7
    FA7: full_adder
        port map (
            A    => A7,
            B    => B7,
            Cin  => C7,
            Sum  => S7,
            Cout => Cout
        );

end structural;

