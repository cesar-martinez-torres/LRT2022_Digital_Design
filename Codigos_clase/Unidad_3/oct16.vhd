library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador is
    Port ( ABCD : in  STD_LOGIC_VECTOR (3 downto 0);
           R : out STD_LOGIC_VECTOR (2 downto 0));
end sumador;

architecture arch_sumador of sumador is

begin

	with (ABCD) select
    	R <= "000" when "0000",
        	 "001" when "0001",
             "010" when "0010",
             "011" when "0011",
             "001" when "0100",
             "010" when "0101",
             "011" when "0110",
             "100" when "0111",
             "010" when "1000",
             "011" when "1001",
             "100" when "1010",
             "101" when "1011",
             "011" when "1100",
             "100" when "1101",
             "101" when "1110",
             "110" when "1111",
             "000" when others;
             
end arch_sumador;
