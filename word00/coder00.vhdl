library ieee;
use ieee.std_logic_1164.all;

entity coder00 is port(
	incontc: in std_logic_vector(5 downto 0);
	outcoderc: out std_logic_vector(6 downto 0)
);
end entity;

architecture coder0 of coder00 is
begin
	with incontc select
		outcoderc <= "1001000" when "011111",
					 "0000001" when "101111",
					 "1110001" when "110111",
					 "0001000" when "111011",
					 "1111111" when others;
end architecture;