library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench; 

architecture testbench of testbench is

component SUMADOR is
port(
    An : in std_logic;
    Bn : in std_logic;
    AC_in : in std_logic;    
    SUM : out std_logic;
    AC_out : out std_logic
);
end component;

signal An_in, Bn_in, AC_in_tb, SUM_out_tb, AC_out_tb: std_logic;

begin

  DUT: SUMADOR port map(
  		An => An_in, 
        Bn => Bn_in, 
        AC_in => AC_in_tb, 
        SUM => SUM_out_tb,
        AC_out => AC_out_tb
        );

  process
  begin
    An_in <= '0';
    Bn_in <= '0';
    AC_in_tb <= '0';
    wait for 1 ns;
    
    An_in <= '0';
    Bn_in <= '0';
    AC_in_tb <= '1';
    wait for 1 ns; 
    
    An_in <= '0';
    Bn_in <= '1';
    AC_in_tb <= '0';
    wait for 1 ns;
   
    An_in <= '0';
    Bn_in <= '1';
    AC_in_tb <= '1';
    wait for 1 ns;
    
    An_in <= '1';
    Bn_in <= '0';
    AC_in_tb <= '0';
    wait for 1 ns;
    
    An_in <= '1';
    Bn_in <= '0';
    AC_in_tb <= '1';
    wait for 1 ns; 
    
    An_in <= '1';
    Bn_in <= '1';
    AC_in_tb <= '0';
    wait for 1 ns;
   
    An_in <= '1';
    Bn_in <= '1';
    AC_in_tb <= '1';
    wait for 1 ns;
    
    wait;
  end process;
end testbench;