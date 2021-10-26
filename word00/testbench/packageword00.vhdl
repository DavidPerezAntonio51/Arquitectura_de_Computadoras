library ieee;
use ieee.std_logic_1164.all;

package packageword00 is
	component  contring00 is port(
	clkc: in std_logic;
	enc: in std_logic;
	outc: out std_logic_vector(5 downto 0)
	);
	end component;
	
	component coder00 is port(
	incontc: in std_logic_vector(5 downto 0);
	outcoderc: out std_logic_vector(6 downto 0)
	);
	end component;
end package;