library ieee;
use ieee.std_logic_1164.all;

entity nortestbench00 is
end entity;

architecture nortestbench0 of nortestbench00 is
	component nor00 is port(
	Aa: in std_logic_vector(7 downto 0);
	Ba: in std_logic_vector(7 downto 0);
	Ya: out std_logic_vector(7 downto 0)
	);
	end component;
	signal sAa: std_logic_vector(7 downto 0);
	signal sBa: std_logic_vector(7 downto 0);
	signal sYa: std_logic_vector(7 downto 0);
begin
	NO00: nor00 port map( Aa => sAa, Ba => sBa, Ya=> sYa
	);
	
	estimulos: process
	begin
	-----------------------------------------------------
	sAa<= "11110000";
	sBa<= "11000000";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00001111";
	sBa<= "00111100";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00111100";
	sBa<= "11110000";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00111100";
	sBa<= "00001111";
	wait;
	-----------------------------------------------------
	end process;
end architecture;