library ieee;
use ieee.std_logic_1164.all;

entity nottestbench00 is
end entity;

architecture nottestbench0 of nottestbench00 is
	component not00 is port(
	Aa: in std_logic_vector(7 downto 0);
	Ya: out std_logic_vector(7 downto 0)
	);
	end component;
	signal sAa: std_logic_vector(7 downto 0);
	signal sYa: std_logic_vector(7 downto 0);
begin
	N00: not00 port map( Aa => sAa, Ya=> sYa
	);
	
	estimulos: process
	begin
	-----------------------------------------------------
	sAa<= "11110000";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00001111";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00111100";
	wait for 20 ns;
	-----------------------------------------------------
	sAa<= "00111100";
	wait;
	-----------------------------------------------------
	end process;
end architecture;