-------------------------------------------------------------------------------
--
-- Title       : entidad
-- Design      : lab
-- Author      : FUNDACION UNIVERSIDAD DE LAS AMERICAS PUEBLA
-- Company     : FUNDACION UNIVERSIDAD DE LAS AMERICAS PUEBLA
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\lab_2\lab\src\lab_2.vhd
-- Generated   : Wed Sep 13 08:18:09 2023
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {entidad} architecture {arch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity entidad is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : in STD_LOGIC;
		 F : out STD_LOGIC
	     );
end entidad;

--}} End of automatically maintained section

architecture arch of entidad is
begin

	F<= (not(B)and (D)) or (not(A) and (B) and (not(C))) or ((A) and (not(B)) and (C)) or ((A) and (B) and (not(C)));

end arch;
