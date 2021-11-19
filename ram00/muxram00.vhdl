library ieee;
use ieee.std_logic_1164.all;

entity muxram00 is port(
	resetmu: in std_logic;
	rwmu: in std_logic;
	inwordcodermu: in std_logic_vector(6 downto 0);
	inwordrammu: in std_logic_vector(6 downto 0);
	outwordmu: out std_logic_vector(6 downto 0)
);
end entity;

architecture muxram0 of muxram00 is
signal scontrolmu: std_logic_vector(1 downto 0);
begin
scontrolmu<=(resetmu)&(rwmu);
	with scontrolmu select
		outwordmu<= inwordcodermu when "10",
					inwordrammu when "11",
					"1111111" when others;

end architecture;