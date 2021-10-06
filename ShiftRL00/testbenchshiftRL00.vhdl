library ieee;
use ieee.std_logic_1164.all;

entity testbenchshiftRL00 is

end entity;

architecture testbenchshiftRL0 of testbenchshiftRL00 is
	component shiftRL00 is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0)
	);
	end component;
	signal sclks, sens: std_logic;
	signal sins, souts: std_logic_vector(7 downto 0);
begin
	RL: shiftRL00 port map(
		clks=> sclks, ens => sens, ins=>sins, outs=> souts
	);
	reloj: process
		begin
		sclks<='0';
		wait for 20 ns;
		sclks<='1';
		wait for 20 ns;
	end process reloj;
	
	estimulos: process
	begin
		sins<="11000011";
		sens<='0';
		wait for 10 ns;
		sens<='1';
		wait for 60 ns;
	end process estimulos;
end architecture;