library IEEE;
use ieee.std_logic_1164.all;

entity sr_flipflop is
	port ( s : in std_logic;
          r : in std_logic;
          Qn : out std_logic
	);
end sr_flipflop;

architecture behavioral of sr_flipflop is
begin
	process(s, r)
   begin
		if (s = '0' and r = '0') then
			-- No change
      elsif (s = '0' and r = '1') then
			Qn <= '0';
      elsif (s = '1' and r = '0') then
			Qn <= '1';
		elsif (s = '1' and r = '1') then 
			Qn <= 'X';
		end if;
	end process;
end behavioral;