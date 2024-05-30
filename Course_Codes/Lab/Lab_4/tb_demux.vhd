library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture testb of testbench is

component demux is
port(
    Se: in std_logic;
    I0: in std_logic;
    O0: out std_logic;
    O1: out std_logic);
end component;

signal Se_in, I0_in, O0_out, O1_out: std_logic;

begin

  DUT: demux port map(Se_in, I0_in, O0_out, O1_out);

  process
  begin
    Se_in <= '0';
    I0_in <= '0';
    wait for 1 ns;
    
    Se_in <= '0';
    I0_in <= '1';
    wait for 1 ns; 
    
    Se_in <= '1';
    I0_in <= '0';
    wait for 1 ns;
   
    Se_in <= '1';
    I0_in <= '1';
    wait for 1 ns;
    
    --wait;
  end process;
end testb;