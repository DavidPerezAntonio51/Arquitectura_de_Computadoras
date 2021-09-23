library ieee;
use ieee.std_logic_1164.all;

entity orao00 is port(
	Aao: in std_logic;
	Bao: in std_logic;
	Yao: out std_logic
);
end entity;

architecture orao0 of orao00 is
begin
	Yao<=Aao or Bao;
end architecture;