library ieee;
use ieee.std_logic_1164.all;

package packageram00 is

	component contring00 is port(
	clkc: in std_logic;
	resetr: in std_logic;
	rwr: in std_logic;
	outc: out std_logic_vector(3 downto 0)
	);
	end component;
	
	component coder00 is port(
	clkc: in std_logic;
	resetc: in std_logic;
	rwc: in std_logic;
	incontc: in std_logic_vector(3 downto 0);
	inkey: in std_logic_vector(3 downto 0);
	outflagc: out std_logic;
	outcontwritec: inout std_logic_vector(5 downto 0);
	outwordc: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component memram00 is port(
	clkra: in std_logic;
	resetra: in std_logic;
	rwra: in std_logic;
	inFlagra: in std_logic;
	inwordra: in std_logic_vector(6 downto 0);
	incontwritera: in std_logic_vector(5 downto 0);
	incontreadra: in std_logic_vector(5 downto 0);
	outwordra: out std_logic_vector(6 downto 0)
	);
	end component;
	
	component contread00 is port(
	clkcr: in std_logic;
	resetcr: in std_logic;
	rwcr: in std_logic;
	incontwcr: in std_logic_vector(5 downto 0);
	outcr: inout std_logic_vector(5 downto 0)
	);
	end component;
	
	component muxram00 is port(
	resetmu: in std_logic;
	rwmu: in std_logic;
	inwordcodermu: in std_logic_vector(6 downto 0);
	inwordrammu: in std_logic_vector(6 downto 0);
	outwordmu: out std_logic_vector(6 downto 0)
	);
	end component;

end package;