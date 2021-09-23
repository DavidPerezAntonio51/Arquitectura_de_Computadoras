library ieee;
use ieee.std_logic_1164.all;

entity xnora00 is port(
	Axn: in std_logic;
	Bxn: in std_logic;
	Yxn: out std_logic
);
end entity;

architecture xnora0 of xnora00 is
begin
	Yxn<=Axn xnor Bxn;
end architecture;