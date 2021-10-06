library ieee;
use ieee.std_logic_1164.all;

entity oscTestBench00 is
end entity;

architecture oscTestBench0 of oscTestBench00 is
	component and00 is port(
	Aa: in std_logic;
	Ba: in std_logic;
	Ya: out std_logic
	);
	end component;
	signal sBa, sYa: std_logic;
	signal sclk: std_logic;
	constant periodo: time:= 40 ns;
begin
	O00: and00 port map(
		Aa => sclk,
		Ba => sBa,
		Ya => sYa
	);
	
	pclk: process
		begin
			sclk<='1';
			wait for periodo/2;
			sclk<= '0';
			wait for periodo/2;
	end process;
	
	pestim:process
		begin
			sBa <= '0';
			wait for 60 ns;
			sBa <= '1';
			wait for 80 ns;
			sBa <= '0';
			wait for 40 ns;
			sBa <= '1';
			wait for 120 ns;
			wait;
	end process;
end architecture;