library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contread00 is port(
	clkcr: in std_logic;
	resetcr: in std_logic;
	rwcr: in std_logic;
	incontwcr: in std_logic_vector(5 downto 0);
	outcr: inout std_logic_vector(5 downto 0)
);
end entity;

architecture contread0 of contread00 is
signal scontrolcr: std_logic_vector(1 downto 0);
begin
	pcontcr: process(clkcr)
	begin
		if (clkcr'event and clkcr = '1')then
			case scontrolcr is
				when "00" =>
					outcr<="000000";
				when "01" =>
					outcr<="000000";
				when "10" =>
					outcr<="000000";
				when "11" =>
					if(outcr<incontwcr)then
						outcr<= outcr +1;
					else
						outcr<=outcr;
					end if;
				when others => null;
			end case;
		end if;
	end process;

end architecture;