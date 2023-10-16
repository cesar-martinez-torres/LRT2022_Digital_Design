library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity testbench is
end testbench;


architecture arch_tb of testbench is
 
    component sumador
    Port ( ABCD : in  STD_LOGIC_VECTOR (3 downto 0);
           R : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
-- inputs
   signal ABCD_in : std_logic_vector(3 downto 0);

--outputs
   signal R_out : std_logic_vector(2 downto 0);
 
   constant period : time := 10 ns;
 
begin
 
   UUT: sumador PORT MAP (
          ABCD => ABCD_in,
          R => R_out);


   stim_proc: process
   begin 
   
   	  ABCD_in <= "0000";
      
      wait for period;
   
      ABCD_in <= "0001";

      Wait for period;
      
      ABCD_in <= "0010";

      wait for period;
      
      ABCD_in <= "0011";
      
      wait for period;
      
      ABCD_in <= "0100";
      
      wait for period;

      ABCD_in <= "0101";

      wait for period;
      
      ABCD_in <= "0110";

      wait for period;

      ABCD_in <= "0111";
      
      wait for period;

      ABCD_in <= "1000";
      
      wait for period;
      
      ABCD_in <= "1001";
      
      wait for period;
      
      ABCD_in <= "1010";

      wait for period;
      
      ABCD_in <= "1011";
      
      wait for period;
      
      ABCD_in <= "1100";
      
      wait for period;
      
      ABCD_in <= "1101";
      
      wait for period;
      
      ABCD_in <= "1110";
      
      wait for period;
      
      ABCD_in <= "1111";
      
      wait for period;
      
      -- Wait indefinitely.
      wait;
 end process;
end;


