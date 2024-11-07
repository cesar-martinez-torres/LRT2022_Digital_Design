library IEEE;
use ieee.std_logic_1164.all;

entity tb_srff is
end tb_srff;

architecture behavior of tb_srff is

	component sr_flipflop
	port(
		s : in std_logic;
		r : in std_logic;
		Qn : out std_logic
	);
	end component;
	
	signal s : std_logic:= '1';
	signal r : std_logic:= '0';
	
	signal Qn : std_logic;
	
	constant clk : time := 10 ns;
	
begin
	uut : sr_flipflop
		port map(
			s => s,
			r => r,
			Qn => Qn
		);	
	stim_proc : process
	begin
		---- Test 1 (s=0, r=0, Qn=retain)
		s <= '0'; r <= '0';
		wait for clk;
		-- Test 2 (s=0, r=1, Qn=0)
		s <= '0'; r <= '1';
		wait for clk;
        -- Test 3 (s=0, r=0, Qn=retain)
		s <= '0'; r <= '0';
		wait for clk;
		-- Test 4 (s=1, r=0, Qn=1)
		s <= '1'; r <= '0';
		wait for clk;
        -- Test 5 (s=0, r=0, Qn=retain)
		s <= '0'; r <= '0';
		wait for clk;
		-- Test 6 (s=1, r=1, Qn=invalid)
		s <= '1'; r <= '1';
		wait for clk;
		wait;
	end process;
end behavior;