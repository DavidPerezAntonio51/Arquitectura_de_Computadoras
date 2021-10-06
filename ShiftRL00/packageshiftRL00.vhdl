library ieee;
use ieee.std_logic_1164.all;

package packageshiftRL00 is
	component shiftRL00 is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0)
	);
	end component;
end package;