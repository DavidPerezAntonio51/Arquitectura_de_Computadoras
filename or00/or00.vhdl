library ieee;
use ieee.std_logic_1164.all;

entity or00 is port(
	Aa: in std_logic_vector(7 downto 0);
	Ba: in std_logic_vector(7 downto 0);
	Ya: out std_logic_vector(7 downto 0)
);
end entity;

architecture or0 of or00 is
begin
	Ya <= Aa or Ba;
end architecture;