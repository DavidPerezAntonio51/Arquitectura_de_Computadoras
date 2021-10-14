library ieee;
use ieee.std_logic_1164.all;

entity testbenchword00 is
end entity;

architecture testbenchword0 of testbenchword00 is
	component word00 is port(
	clk0: in std_logic;
	en0: in std_logic;
	outcoder0: out std_logic_vector(6 downto 0);
	outtransist0: inout std_logic_vector(5 downto 0)
	);
	end component;
	signal clk, en: std_logic;
	signal outcoder: std_logic_vector(6 downto 0);
	signal outtransist: std_logic_vector(5 downto 0);
begin
	Word: word00 port map(
		clk0 => clk,en0=>en,outcoder0=>outcoder,outtransist0=>outtransist
	);
	reloj: process
	begin
		clk<='1';
		wait for 10 ns;
		clk<='0';
		wait for 10 ns;
	end process;
	estimulos: process
	begin
		en <= '0';
		wait for 20 ns;
		en <= '1';
		wait for 120 ns;
		en <= '0';
		wait;
	end process;
end architecture;