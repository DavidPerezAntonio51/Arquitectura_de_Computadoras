library ieee;
use ieee.std_logic_1164.all;

entity anda00 is port(
	Aaa: in std_logic;
	Baa: in std_logic;
	Yaa: out std_logic
);
end anda00;

architecture anda0 of anda00 is
begin
	Yaa <= Aaa and Baa;
end architecture;