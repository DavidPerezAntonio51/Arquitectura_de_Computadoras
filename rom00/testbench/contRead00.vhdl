library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contRead00 is port(
	clk: in std_logic;
	enc: in std_logic;
	outc: inout std_logic_vector(4 downto 0)
);
end entity;

architecture contRead0 of contRead00 is
begin
	pcont: process(clk)
	begin
		if(clk'event and clk='1')then
			case enc is
				when '1'=>
					if(outc<="10000")then
						outc<=outc+'1';
					else
						outc<=outc;
					end if;
				when '0'=>
					outc <= "00000";
				when others => null;
			end case;
		end if;	
	end process;
end architecture;