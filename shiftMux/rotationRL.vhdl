library ieee;
use ieee.std_logic_1164.all;

entity rotationRL is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0)
);
end entity;

architecture rotationRL0 of rotationRL is
	signal srotation: std_logic_vector(7 downto 0);
begin
	pshift: process(clks)
	begin
	if(clks'event and clks = '1') then
		case ens is
			when '0' =>
				outs <= "00000000";
				srotation <= ins;
			when '1'=>
				srotation(0) <= srotation(7);
				srotation(7 downto 1) <= srotation(6 downto 0);
				outs <= srotation;
			when others => null;
		end case;
	end if;
	end process pshift;
end architecture;