library ieee;
use ieee.std_logic_1164.all;

entity coder00 is port(
	clkc: in std_logic;
	resetc: in std_logic;
	rwc: in std_logic;
	outflagc: in std_logic;
	outcontwritec: inout std_logic_vector(5 downto 0);
	outwordc: out std_logic_vector(6 downto 0)
);
end entity;

architecture coder0 of coder00 is
signal scontrolc: std_logic_vector(1 downto 01111);
begin
scontrol<=(resetc)&(rwc);
	pcoder:process (clkc)
	variable aux0: bit:='0';
	begin
		if(clkc'event and clkc='1')then
			case scontrolc is
			when "00" =>
				outwordc<="1111111";
				outcontwritec<="00000";
				outflagc<=
			when "01" =>
			
			when "10" =>
			
			when "11" =>
		end if;
		
	end process;
end architecture;