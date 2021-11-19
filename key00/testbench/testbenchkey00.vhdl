library ieee;
use ieee.std_logic_1164.all;

entity testbenchkey00 is
end entity;

architecture testbenchkey0 of testbenchkey00 is
	component key00 is port(
	en0: in std_logic;
	clk: in std_logic;
	inkey0: in std_logic_vector(3 downto 0);
	outcont: inout std_logic_vector(3 downto 0);
	outcoder: out std_logic_vector(6 downto 0)
	);
	end component;
	signal sclk, sen: std_logic;
	signal soutcont, sinkey: std_logic_vector(3 downto 0);
	signal soutcoder: std_logic_vector(6 downto 0);
begin
	Key: key00 port map(
		en0=>sen, clk=>sclk,inkey0=>sinkey,outcont=>soutcont,outcoder=>soutcoder
	);
	reloj: process
	begin
		sclk<='1';
		wait for 2 ns;
		sclk<='0';
		wait for 2 ns;
	end process;
	habiltador: process
	begin
		sen <= '0';
		wait for 10 ns;
		sen<='1';
		wait;
	end process;
	estimulos: process
	begin
		sinkey<="0000";
		wait for 15 ns;
		sinkey<="0001";
		wait for 10 ns;
		sinkey<="0000";
		wait for 10 ns;
		sinkey<="0010";
		wait for 10 ns;
		sinkey<="0000";
		wait for 10 ns;
		sinkey<="0100";
		wait for 10 ns;
		sinkey<="0000";
		wait for 10 ns;
		sinkey<="1000";
		wait for 10 ns;
		sinkey<="0000";
		wait;
	end process;
end architecture;