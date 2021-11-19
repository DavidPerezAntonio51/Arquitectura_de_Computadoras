library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity coder00 is port(
	clkc: in std_logic;
	resetc: in std_logic;
	rwc: in std_logic;
	incontc: in std_logic_vector(3 downto 0);
	inkey: in std_logic_vector(3 downto 0);
	outflagc: out std_logic;
	outcontwritec: inout std_logic_vector(5 downto 0);
	outwordc: out std_logic_vector(6 downto 0)
);
end entity;

architecture coder0 of coder00 is
signal scontrolc: std_logic_vector(1 downto 01111);
begin
scontrolc<=(resetc)&(rwc);
	pcoder:process (clkc)
	variable aux0: bit:='0';
	begin
		if(clkc'event and clkc='1')then
			case scontrolc is
-----------------------------------------------------
			when "00" =>
				outwordc<="1111111";
				outcontwritec<="00000";
				outflagc<='0';
				aux0:='0';
------------------------------------------------------
			when "01" =>
				if(aux0 = '0')then
						
				else
				end if;
------------------------------------------------------
			when "10" =>
				case incontc is
					when "1000"=>
						case inkey is
							when "0000"=>
								aux0:='0';
							when "0001"=>--1
							if(aux0 = '0')then
								aux0:= '1';
								outwordc<="1001111";
								outcontwritec<=outcontwritec+'1';
								outflagc<='1';
							else
								outcontwrite <= outcontwritec;
								outflagc<='0';
							end if;
							when "0010"=>--2
								if(aux0 = '0')then
								aux0:= '1';
								outwordc<="0010010";
								outcontwritec<=outcontwritec+'1';
								outflagc<='1';
								else
								outcontwrite <= outcontwritec;
								outflagc<='0';
								end if;
							when "0100"=>--3
								if(aux0 = '0')then
								aux0:= '1';
								outwordc<="0000110";
								outcontwritec<=outcontwritec+'1';
								outflagc<='1';
								else
								outcontwrite <= outcontwritec;
								outflagc<='0';
								end if;
							when "1000"=>--A
								if(aux0 = '0')then
								aux0:= '1';
								outwordc<="0001000";
								outcontwritec<=outcontwritec+'1';
								outflagc<='1';
								else
								outcontwrite <= outcontwritec;
								outflagc<='0';
								end if;
							when others => null;
							end case;
						when "0100"=>
						when "0010"=>
						when "0001"=>
					when others=> null;
				end case;
------------------------------------------------------			
			when others => null;
		end if;
		
	end process;
end architecture;