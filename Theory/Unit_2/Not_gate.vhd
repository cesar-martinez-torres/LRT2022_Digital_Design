library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity ent_notGate is

    port(A : in std_logic;      -- NOT gate input
         Y : out std_logic);    -- NOT gate output

end ent_notGate;

-- Architecture definition

architecture arq_notGate of ent_notGate is

 begin
    
    Y <= A NOT B;

end arq_notGate; 