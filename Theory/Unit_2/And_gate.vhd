library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity ent_andGate is

    port(A : in std_logic;      -- AND gate input
         B : in std_logic;      -- AND gate input
         Y : out std_logic);    -- AND gate output

end ent_andGate;

-- Architecture definition

architecture arq_andGate of ent_andGate is

 begin
    
    Y <= A and B;

end arq_andGate; 