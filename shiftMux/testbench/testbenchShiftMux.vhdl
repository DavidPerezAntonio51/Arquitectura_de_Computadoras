library ieee;
use ieee.std_logic_1164.all;

entity testbenchShiftMux is

end entity;

architecture testbenchShiftMux0 of testbenchShiftMux is
	component mux00 is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	Sel: in std_logic_vector (1 downto 0)
	);
	end component;
	signal sclks, sens: std_logic;
	signal sins, souts: std_logic_vector(7 downto 0);
	signal sSel: std_logic_vector(1 downto 0);
begin
	Mux: mux00 port map(
		clks=> sclks, ens => sens, ins=>sins, outs=> souts, sel=> sSel
	);
	reloj: process
		begin
		sclks<='1';
		wait for 10 ns;
		sclks<='0';
		wait for 10 ns;
	end process reloj;
	
	estimulos: process
	begin
		sins<="11000011";
		sens<='0';
		sSel<="00";
		wait for 20 ns;
		sens<='1';
		wait for 200 ns;
		
		sins<="11000011";
		sens<='0';
		sSel<="01";
		wait for 20 ns;
		sens<='1';
		wait for 200 ns;
		
		sins<="11000011";
		sens<='0';
		sSel<="10";
		wait for 20 ns;
		sens<='1';
		wait for 200 ns;
		
		sins<="11000011";
		sens<='0';
		sSel<="11";
		wait for 20 ns;
		sens<='1';
		wait;
		
	end process estimulos;
end architecture;