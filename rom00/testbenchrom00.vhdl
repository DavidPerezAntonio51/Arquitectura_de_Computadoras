library ieee;
use ieee.std_logic_1164.all;

entity testbenchrom00 is

end entity;

architecture testbenchrom0 of testbenchrom00 is
	component rom00 is port(
	clk: in std_logic;
	en: in std_logic;
	contread: inout std_logic_vector(4 downto 0);
	outword: out std_logic_vector(6 downto 0)
	);
	end component;
	signal clk, en: std_logic;
	signal contread: std_logic_vector(4 downto 0);
	signal outword: std_logic_vector(6 downto 0);
begin
	Rom: rom00 port map(
	clk => clk,
	en => en,
	contread => contread,
	outword => outword
	);
	clkp: process
	begin
	clk<='1';
	wait for 10 ns;
	clk<='0';
	wait for 10 ns;
	end process;
	
	enp: process
	begin
	en<='0';
	wait for 15 ns;
	en<='1';
	wait;
	end process;
end architecture;