library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagekey00.all;

entity key00 is port(
	en0: in std_logic;
	clk: in std_logic;
	inkey0: in std_logic_vector(3 downto 0);
	outcont: inout std_logic_vector(3 downto 0);
	outcoder: out std_logic_vector(6 downto 0)
);
end entity;

architecture key0 of key00 is
begin
	K00: contring00 port map(
		clkr=>clk, enr=>en0, outr=>outcont
	);
	K01: coder00 port map(
		clkc=>clk,incontc=>outcont,inkeyc=>inkey0,outcoderc=>outcoder
	);

end architecture;