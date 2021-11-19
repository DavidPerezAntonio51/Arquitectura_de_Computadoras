library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packageram00.all;

entity ram00 is port(
	clk0: in std_logic;
	re0: in std_logic;
	rw0: in std_logic;
	inkey0: in std_logic_vector(3 downto 0);
	outr0: inout std_logic_vector(3 downto 0);
	outcontw0: inout std_logic_vector(5 downto 0);
	outcontr0: inout std_logic_vector(5 downto 0);
	outword0: out std_logic_vector(6 downto 0);
	outtransist0: out std_logic_vector(5 downto 0);
	outflag0: inout std_logic
);
end entity;

architecture ram0 of ram00 is
signal swordcoder: std_logic_vector(6 downto 0);
signal swordram: std_logic_vector(6 downto 0);
begin
outtransist<="111110";
RA00: contring00 port map(
	clkr=>clk0,
	resetr=>re0,
	rwr=>rw0,
	outr=>outr0
);

RA01: coder00 port map(
	clkc=>clk0,
	resetc=>re0,
	rwc=>rw0,
	incontc=>outr0,
	inkey=>inkey0,
	outflagc=>outflag0,
	outcontwritec=>outcontw0,
	outwordc=>swordcoder
);

RA02: memram00 port map(
	clkra=>clk0,
	resetra=>re0,
	rwra=>rw0,
	inFlagra=>outflag0,
	inwordra=>swordcoder,
	incontwritera=>outcontw0,
	incontreadra=>outcontr0,
	outwordra=>swordram
);

RA03: contread00 port map(
	clkcr=>clk0,
	resetcr=>re0,
	rwcr=>rw0,
	incontwcr=>outcontw0,
	outcr=>outcontr0
);

RA04: muxram00 port map(
	resetmu=>re0,
	rwmu=>rw0,
	inwordcodermu=>swordcoder,
	inwordrammu=>swordram,
	outwordmu=>
);
end architecture;