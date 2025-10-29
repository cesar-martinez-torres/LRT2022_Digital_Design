-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity juego is
port (PB, JAA, JAB, JBA, JBB: in std_logic;
	salida: out std_logic_vector(2 downto 0));
end entity;

architecture arch_juego of juego is

signal jugada: std_logic_vector(4 downto 0);
--signal salida: std_logic_vector(2 downto 0);

begin

jugada <= PB & JAA & JAB & JBA & JBB; --creación de vector, Push Botton es el de mayor peso
--salida <= E & GJA & GJB;

with (jugada) select
salida <= "000" when "10000",
		  "000" when "10001",
          "000" when "10010",
          "000" when "10011",
          "000" when "10100",
          "100" when "10101",
          "001" when "10110",
          "010" when "10111",
          "000" when "11000",
          "010" when "11001",
          "100" when "11010",
          "001" when "11011",
          "000" when "11100",
          "001" when "11101",
          "010" when "11110",
          "100" when "11111",
          "000" when others;
          
end architecture;
		

