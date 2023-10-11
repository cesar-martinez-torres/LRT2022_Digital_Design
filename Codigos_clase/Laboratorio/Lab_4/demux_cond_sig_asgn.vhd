library IEEE;
use IEEE.std_logic_1164.all;

entity demux is
  port(
    Se: in std_logic;
    I0: in std_logic;
    O0: out std_logic;
    O1: out std_logic
    );
  end demux;

architecture arch_demux of demux is

begin
    
    O0 <= '1' when (Se='0' and I0='1') else
		  '0';
          
    O1 <= '1' when (Se='1' and I0='1') else 
    	  '0';
          
end arch_demux;