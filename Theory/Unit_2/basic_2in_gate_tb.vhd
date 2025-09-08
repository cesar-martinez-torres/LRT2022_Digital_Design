library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component ent is
port(
  A: in std_logic;
  B: in std_logic;
  Y: out std_logic);
end component;

signal a_in, b_in, q_out: std_logic;

begin

  -- Connect UUT
  UUT: ent port map(a_in, b_in, q_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
  
    a_in <= '0';
    b_in <= '1';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '1';
    wait for 1 ns;

    wait;
    
  end process;
end tb;
