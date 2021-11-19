library ieee;
use ieee.std_logic_1164.all;

package packagerom00 is
	component contRead00 is port(
	clk: in std_logic;
	enc: in std_logic;
	outc: inout std_logic_vector(4 downto 0)
	);
	end component;
	component memrom00 is port(
	incontro: in std_logic_vector(4 downto 0);
	outro: out std_logic_vector(6 downto 0)
	);
	end component;

end package;