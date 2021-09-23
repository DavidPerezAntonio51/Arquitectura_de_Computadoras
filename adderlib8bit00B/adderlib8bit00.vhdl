library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity adderlib8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	SL: in std_logic;
	So: out std_logic_vector(7 downto 0);
	LED: out std_logic
);
end entity;

architecture adderlib8bit0 of adderlib8bit00 is
begin
		with SL select
			So<=Ai+Bi when '0',
				Ai-Bi when '1',
				"00000000" when others;
end architecture;