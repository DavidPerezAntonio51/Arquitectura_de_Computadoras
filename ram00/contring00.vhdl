library ieee;
use ieee.std_logic_1164.all;

entity contring00 is port(
	clkc: in std_logic;
	resetr: in std_logic;
	rwr: in std_logic;
	outc: out std_logic_vector(3 downto 0)
);
end entity;

architecture contring0 of contring00 is
	signal sshift: std_logic_vector(3 downto 0);
	signal scontrol: std_logic_vector(1 downto 0);
begin
scontrol<=(resetr)&(rwr)
	pcont: process(clkc)
	begin
		if(clkc'event and clkc = '1') then
			case scontrol is
				when "00" =>
					outc <= "0000";
					sshift <= "0111";
				when "10" =>
					sshift(3) <= sshift(0);
					sshift(2 downto 0) <= sshift(3 downto 1);
					outc <= sshift;
				when others => null;
			end case;
		end if;
	end process;
end architecture;