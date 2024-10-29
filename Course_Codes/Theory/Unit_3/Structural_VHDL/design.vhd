library IEEE;
use IEEE.std_logic_1164.all;

entity SUMADOR is
  port(
    An : in std_logic;
    Bn : in std_logic;
    AC_in : in std_logic;    
    SUM : out std_logic;
    AC_out : out std_logic
    );
end SUMADOR;

architecture arch_SUMADOR of SUMADOR is

component MEDIO_S is
  port(
    An : in std_logic;
    Bn : in std_logic;
    AC_out : out std_logic;
    SUMAA : out std_logic
    );
end component;

signal Media1_sum, Media1_AC, Media2_AC : std_logic;


begin

	HalfAdd1 : MEDIO_S port map (
    	An => An,
    	Bn => Bn,
    	AC_out => Media1_AC,
    	SUMAA => Media1_sum
    );
    
    HalfAdd2 : MEDIO_S port map (
    	An => Media1_sum,
    	Bn => AC_in,
    	AC_out => Media2_AC,
    	SUMAA => SUM
    );
    
    AC_out <= Media1_AC or Media2_AC;
    
	      
end arch_SUMADOR;