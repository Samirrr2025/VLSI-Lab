
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY full_adder_8bit_tb IS
END full_adder_8bit_tb;
 
ARCHITECTURE behavior OF full_adder_8bit_tb IS 
 
    
 
    COMPONENT full_adder_8bit
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         A4 : IN  std_logic;
         A5 : IN  std_logic;
         A6 : IN  std_logic;
         A7 : IN  std_logic;
         B0 : IN  std_logic;
         B1 : IN  std_logic;
         B2 : IN  std_logic;
         B3 : IN  std_logic;
         B4 : IN  std_logic;
         B5 : IN  std_logic;
         B6 : IN  std_logic;
         B7 : IN  std_logic;
         Cin : IN  std_logic;
         S0 : OUT  std_logic;
         S1 : OUT  std_logic;
         S2 : OUT  std_logic;
         S3 : OUT  std_logic;
         S4 : OUT  std_logic;
         S5 : OUT  std_logic;
         S6 : OUT  std_logic;
         S7 : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal A4 : std_logic := '0';
   signal A5 : std_logic := '0';
   signal A6 : std_logic := '0';
   signal A7 : std_logic := '0';
   signal B0 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal B2 : std_logic := '0';
   signal B3 : std_logic := '0';
   signal B4 : std_logic := '0';
   signal B5 : std_logic := '0';
   signal B6 : std_logic := '0';
   signal B7 : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S0 : std_logic;
   signal S1 : std_logic;
   signal S2 : std_logic;
   signal S3 : std_logic;
   signal S4 : std_logic;
   signal S5 : std_logic;
   signal S6 : std_logic;
   signal S7 : std_logic;
   signal Cout : std_logic;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_8bit PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          A4 => A4,
          A5 => A5,
          A6 => A6,
          A7 => A7,
          B0 => B0,
          B1 => B1,
          B2 => B2,
          B3 => B3,
          B4 => B4,
          B5 => B5,
          B6 => B6,
          B7 => B7,
          Cin => Cin,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          S4 => S4,
          S5 => S5,
          S6 => S6,
          S7 => S7,
          Cout => Cout
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      
          
        A0 <= '0';
        A1 <= '0';
        A2 <= '0';
        A3 <= '0';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '0';
        B1 <= '0';
        B2 <= '0';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


        
        A0 <= '1';
        A1 <= '0';
        A2 <= '0';
        A3 <= '0';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '1';
        B1 <= '0';
        B2 <= '0';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


        A0 <= '1';
        A1 <= '0';
        A2 <= '1';
        A3 <= '0';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '1';
        B1 <= '1';
        B2 <= '0';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


     
        A0 <= '0';
        A1 <= '1';
        A2 <= '0';
        A3 <= '1';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '1';
        B1 <= '0';
        B2 <= '1';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


 
        A0 <= '1';
        A1 <= '1';
        A2 <= '1';
        A3 <= '1';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '0';
        B1 <= '1';
        B2 <= '0';
        B3 <= '1';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


        
        A0 <= '1';
        A1 <= '1';
        A2 <= '1';
        A3 <= '1';
        A4 <= '1';
        A5 <= '1';
        A6 <= '1';
        A7 <= '1';

        B0 <= '1';
        B1 <= '0';
        B2 <= '0';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '0';

        wait for 10 ns;


      
        A0 <= '1';
        A1 <= '1';
        A2 <= '1';
        A3 <= '1';
        A4 <= '1';
        A5 <= '1';
        A6 <= '1';
        A7 <= '1';

        B0 <= '1';
        B1 <= '1';
        B2 <= '1';
        B3 <= '1';
        B4 <= '1';
        B5 <= '1';
        B6 <= '1';
        B7 <= '1';

        Cin <= '0';

        wait for 10 ns;


    
        A0 <= '1';
        A1 <= '0';
        A2 <= '0';
        A3 <= '0';
        A4 <= '0';
        A5 <= '0';
        A6 <= '0';
        A7 <= '0';

        B0 <= '1';
        B1 <= '0';
        B2 <= '0';
        B3 <= '0';
        B4 <= '0';
        B5 <= '0';
        B6 <= '0';
        B7 <= '0';

        Cin <= '1';

        wait for 10 ns;

      wait;
   end process;

END;
