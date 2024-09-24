library IEEE;
use IEEE.std_logic_1164.all;

entity P5 is
  port(
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    D: in std_logic;
    F: out std_logic
    );
  end P5;

architecture arch_P5 of P5 is

begin
    
    F <= ((not(A))and(not(B))and(not(C)))or((not(B))and(not(D)))or((A)and(B)and(C));


end arch_P5;