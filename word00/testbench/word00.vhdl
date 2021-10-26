library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageword00.all;

entity word00 is port(
	clk0: in std_logic;
	en0: in std_logic;
	outcoder0: out std_logic_vector(6 downto 0);
	outtransist0: inout std_logic_vector(5 downto 0)
);
end entity;

architecture word0 of word00 is
begin
	W0: contring00 port map(
		clkc=> clk0, enc => en0, outc => outtransist0
	); 
	W1: coder00 port map(
		incontc => outtransist0, outcoderc => outcoder0
	);
end architecture;