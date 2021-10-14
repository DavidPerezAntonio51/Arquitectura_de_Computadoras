library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity barrelshiftLR is port(
	clks: in std_logic;
	ens: in std_logic;
	ins: in std_logic_vector(7 downto 0);
	outs: out std_logic_vector(7 downto 0);
	control: in std_logic_vector(3 downto 0)
);
end entity;

architecture barrelshiftLR0 of barrelshiftLR is
	signal sshift: std_logic_vector(7 downto 0);
	signal scontrol: std_logic_vector(3 downto 0);
begin
	pshift: process(clks)
	begin
	if(clks'event and clks = '1') then
		case ens is
			when '0' =>
				outs <= "00000000";
				sshift <= ins;
				scontrol<= "0000";
			when '1'=>
			if(scontrol<control)then
				scontrol <= scontrol + '1';
				-----------------
				sshift(7) <= '0';
				sshift(6 downto 0) <= sshift(7 downto 1);
				outs <= sshift;
			else
				scontrol<=scontrol;
			end if;
			when others => null;
		end case;
	end if;
	end process pshift;
end architecture;