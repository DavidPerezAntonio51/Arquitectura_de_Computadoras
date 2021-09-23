library ieee;
use ieee.std_logic_1164.all;

entity mux00 is port(
	Am: in std_logic_vector (7 downto 0);
	Bm: in std_logic_vector (7 downto 0);
	Sel: in std_logic_vector (3 downto 0);
	Ym: out std_logic_vector (7 downto 0)
);
end mux00;

architecture mux0 of mux00 is
begin
	with sel select
		Ym<=(Am and Bm) when "0001",
			(Am or Bm) when "0011",
			(Am xor Bm) when "0010",
			(Am nand Bm) when "0110",
			(Am nor Bm) when "0100",
			(Am xnor Bm) when "0101",
			not (Am) when "0111",
			not (Bm) when "1111",
			"00000000" when others;

end architecture;