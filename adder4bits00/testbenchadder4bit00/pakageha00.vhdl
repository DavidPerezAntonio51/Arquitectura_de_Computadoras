library ieee;
use ieee.std_logic_1164.all;

package pakageha00 is
	component anda00 port(
	Aaa: in std_logic;
	Baa: in std_logic;
	Yaa: out std_logic
	);
	end component;
	component xora00 port(
	Axa: in std_logic;
	Bxa: in std_logic;
	Yxa: out std_logic
	);
	end component;

end package;