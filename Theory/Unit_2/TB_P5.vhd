library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture testb of testbench is

component P5 is
port(
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    D: in std_logic;
    F: out std_logic
    );
  end component;

signal A_in, B_in, C_in, D_in, F_out: std_logic;

begin

  DUT: P5 port map(A_in, B_in, C_in, D_in, F_out);

 process
begin
A_in <= '0';
B_in <= '0';
C_in <= '0';
D_in <= '0';
Wait for 1 ns;

A_in <= '0';
B_in <= '0';
C_in <= '0';
D_in <= '1';
Wait for 1 ns;

A_in <= '0';
B_in <= '0';
C_in <= '1';
D_in <= '0';
Wait for 1 ns;

A_in <= '0';
B_in <= '0';
C_in <= '1';
D_in <= '1';
Wait for 1 ns;

A_in <= '0';
B_in <= '1';
C_in <= '0';
D_in <= '0';
Wait for 1 ns;

A_in <= '0';
B_in <= '1';
C_in <= '0';
D_in <= '1';
Wait for 1 ns;

A_in <= '0';
B_in <= '1';
C_in <= '1';
D_in <= '0';
Wait for 1 ns;

A_in <= '0';
B_in <= '1';
C_in <= '1';
D_in <= '1';
Wait for 1 ns;

A_in <= '1';
B_in <= '0';
C_in <= '0';
D_in <= '0';
Wait for 1 ns;

A_in <= '1';
B_in <= '0';
C_in <= '0';
D_in <= '1';
Wait for 1 ns;

A_in <= '1';
B_in <= '0';
C_in <= '1';
D_in <= '0';
Wait for 1 ns;

A_in <= '1';
B_in <= '0';
C_in <= '1';
D_in <= '1';
Wait for 1 ns;

A_in <= '1';
B_in <= '1';
C_in <= '0';
D_in <= '0';
Wait for 1 ns;

A_in <= '1';
B_in <= '1';
C_in <= '0';
D_in <= '1';
Wait for 1 ns;

A_in <= '1';
B_in <= '1';
C_in <= '1';
D_in <= '0';
Wait for 1 ns;

A_in <= '1';
B_in <= '1';
C_in <= '1';
D_in <= '1';
Wait for 1 ns;

-- Clear inputs
A_in <= '0';
B_in <= '0';
C_in <= '0';
D_in <= '0';

wait;
end process;
end testb;