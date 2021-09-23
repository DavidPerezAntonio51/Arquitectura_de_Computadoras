library ieee;
use ieee.std_logic_1164.all;

entity mult8bitTestBench00 is
end entity;

architecture mult8bitTestBench0 of mult8bitTestBench00 is
	component mult8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	Ro: out std_logic_vector(15 downto 0)
	);
	end component;
	signal sAi,sBi: std_logic_vector(7 downto 0);
	signal sRo: std_logic_vector(15 downto 0);
begin
	Mult: mult8bit00 port map(
		Ai=>sAi,Bi=>sBi,Ro=>sRo
	);
	estimulos: process
	begin
	sAi<="00000001";
	sBi<="00000001";
	wait for 20 ns;
	sAi<="00000010";
	sBi<="00000010";
	wait for 20 ns;
	sAi<="00000100";
	sBi<="00000100";
	wait for 20 ns;
	sAi<="00001000";
	sBi<="00001000";
	wait for 20 ns;
	sAi<="00010000";
	sBi<="00010000";
	wait for 20 ns;
	sAi<="00100000";
	sBi<="00100000";
	wait for 20 ns;
	sAi<="01000000";
	sBi<="01000000";
	wait for 20 ns;
	sAi<="10000000";
	sBi<="10000000";
	wait for 20 ns;
	sAi<="11111111";
	sBi<="11111111";
	wait;
	end process;
end architecture;