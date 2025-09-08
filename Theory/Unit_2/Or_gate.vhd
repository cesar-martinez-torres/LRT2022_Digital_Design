library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration

entity ent_orGate is

    port(A : in std_logic;      -- OR gate input
         B : in std_logic;      -- OR gate input
         Y : out std_logic);    -- OR gate output

end ent_orGate;

-- Architecture definition

architecture arq_orGate of ent_orGate is

 begin
    
    Y <= A OR B;

end arq_orGate; 