library ieee;
use ieee.std_logic_1164.all;

package packagebarrelMux is
	component barrelshiftRL is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	control: in std_logic_vector(3 downto 0)
	);
	end component;
	component barrelshiftLR is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	control: in std_logic_vector(3 downto 0)
	);
	end component;
	component barrelrotationRL is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	control: in std_logic_vector(3 downto 0)
	);
	end component;
	component barrelrotationLR is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	control: in std_logic_vector(3 downto 0)
	);	
	end component;

end package;