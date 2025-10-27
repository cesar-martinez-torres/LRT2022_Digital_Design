library IEEE;
use IEEE.std_logic_1164.all;

entity MEDIO_S is
  port(
    An : in std_logic;
    Bn : in std_logic;
    AC_out : out std_logic;
    SUMAA : out std_logic
    );
end MEDIO_S;

architecture arch_MEDIO_S of MEDIO_S is

begin
    
	AC_out <= 	'1' when (An='1' and Bn='1') else 
    			'0';
          
	SUMAA	<= 	'1' when (An='0' and Bn='1') else
    		'1' when (An='1' and Bn='0') else
    	  	'0';
          
end arch_MEDIO_S;