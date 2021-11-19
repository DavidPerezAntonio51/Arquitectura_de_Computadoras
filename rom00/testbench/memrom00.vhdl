library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memrom00 is port(
	incontro: in std_logic_vector(4 downto 0);
	outro: out std_logic_vector(6 downto 0)
);
end entity;

architecture memrom0 of memrom00 is
	type arrayrom is array(0 to 31) of std_logic_vector (6 downto 0);
	constant wordrom: arrayrom:=("0000000",--0
								 "1001111",--1
								 "0010011",--2
								 "0000110",--3
								 "1001100",--4
								 "0100100",--5
								 "0100000",--6
								 "0001111",--7
								 "0000000",--8
								 "0000100",--9
								 "0001000",--a
								 "1100000",--b
								 "0110001",--c
								 "1000010",--d
								 "0110000",--e
								 "0111000",--f
								 others => "1111111"--when others
	);
begin
	prom: process(incontro)
	begin
		outro<=wordrom(conv_integer(incontro));
	end process;
end architecture;