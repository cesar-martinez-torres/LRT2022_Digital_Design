library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component juego is
port(
  PB: in std_logic;
  JAA: in std_logic;
  JAB: in std_logic;
  JBA: in std_logic;
  JBB: in std_logic;
  salida: out std_logic_vector(2 downto 0));
end component;

signal PB_in, JAA_in, JAB_in, JBA_in,JBB_in: std_logic;
signal salida_out: std_logic_vector(2 downto 0);

begin

  -- Connect UUT
  UUT: juego port map(PB_in, JAA_in, JAB_in, JBA_in,JBB_in, salida_out);

  process
  begin
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '0';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns; 
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '0';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '0';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '0';
    JBB_in <= '1';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '0';
    wait for 1 ns;
    
    PB_in <= '1';
    JAA_in <= '1';
    JAB_in <= '1';
    JBA_in <= '1';
    JBB_in <= '1';
    wait for 1 ns;
    
    wait;
    
    
  end process;
end tb;