library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;
use work.packagerom00.all;

entity rom00 is port(
	clk: in std_logic;
	en: in std_logic;
	contread: inout std_logic_vector(4 downto 0);
	outword: out std_logic_vector(6 downto 0)
);
end entity;

architecture rom0 of rom00 is
begin
	R00: contRead00 port map(
	clk=>clk,
	enc=>en,
	outc=>contread
	);
	R01: memrom00 port map(
	incontro => contread,
	outro => outword
	);
end architecture;