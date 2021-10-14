library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagebarrelMux.all;

entity barrelMux00 is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	Sel: in std_logic_vector (1 downto 0);
	control: in std_logic_vector(3 downto 0)
);
end barrelMux00;

architecture barrelMux0 of barrelMux00 is
	signal out0, out1, out2, out3:std_logic_vector(7 downto 0);
begin
	SHRL: barrelshiftRL port map(
	clks=> clks, ens => ens, ins=>ins, outs=> out0, control=>control
	);
	SHLR: barrelshiftLR port map(
	clks=> clks, ens => ens, ins=>ins, outs=> out1, control=>control
	);
	SHRRL: barrelrotationRL port map(
	clks=> clks, ens => ens, ins=>ins, outs=> out2, control=>control
	);
	SHRLR: barrelrotationLR port map(
	clks=> clks, ens => ens, ins=>ins, outs=> out3, control=>control
	);
	with sel select
		outs<=out0 when "00",
			out1 when "01",
			out2 when "10",
			out3 when "11",
			"00000000" when others;
end architecture;