library ieee;
use ieee.std_logic_1164.all;

entity coder00 is port(
	clkc: in std_logic;
	incontc: in std_logic_vector(3 downto 0);
	inkeyc: in std_logic_vector(3 downto 0);
	outcoderc: out std_logic_vector(6 downto 0)
);
end entity;

architecture coder0 of coder00 is
begin
	pcoder:process (clkc)
	variable aux0: bit:='0';
	begin
		if(clkc'event and clkc='1') then
			case incontc is
				when "1000"=>
					case inkeyc is
						when "0000"=>
							aux0:='0';
						when "0001"=>--1
						if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="1001111";
						end if;
						when "0010"=>--2
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0010010";
							end if;
						when "0100"=>--3
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0000110";
							end if;
						when "1000"=>--A
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0001000";
							end if;
						when others => null;
					end case;
				when "0100"=>
					case inkeyc is
						when "0000"=>
							aux0:='0';
						when "0001"=>--4
						if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="1001100";
						end if;
						when "0010"=>--5
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0100100";
							end if;
						when "0100"=>--6
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0100000";
							end if;
						when "1000"=>--b
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="1100000";
							end if;
						when others => null;
					end case;
				when "0010"=>
					case inkeyc is
						when "0000"=>
							aux0:='0';
						when "0001"=>--7
						if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0001111";
						end if;
						when "0010"=>--8
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0000000";
							end if;
						when "0100"=>--9
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0000100";
							end if;
						when "1000"=>--C
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0110001";
							end if;
						when others => null;
					end case;
				when "0001"=>
					case inkeyc is
						when "0000"=>
							aux0:='0';
						when "0001"=>--0
						if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0000001";
						end if;
						when "0010"=>--*
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="1000010";
							end if;
						when "0100"=>--+
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="0110000";
							end if;
						when "1000"=>--(-)
							if(aux0 = '0')then
							aux0:= '1';
							outcoderc<="1111110";
							end if;
						when others => null;
					end case;
				when others => outcoderc<="1111111";
			end case;
		end if;
	end process;
end architecture;