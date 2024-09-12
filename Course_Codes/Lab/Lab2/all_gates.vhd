library IEEE;
use IEEE.std_logic_1164.all;

entity gates is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 F_AND : out STD_LOGIC;
		 F_OR : out STD_LOGIC;
		 F_XOR : out STD_LOGIC
	     );
end gates;

architecture arch_gates of gates is
begin

	F_AND <= A AND B;
	F_OR <= A OR B;
	F_XOR <= A XOR B;

end arch_gates;
