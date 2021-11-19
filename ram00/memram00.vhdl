library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memram00 is port(
	clkra: in std_logic;
	resetra: in std_logic;
	rwra: in std_logic;
	inFlagra: in std_logic;
	inwordra: in std_logic_vector(6 downto 0);
	incontwritera: in std_logic_vector(5 downto 0);
	incontreadra: in std_logic_vector(5 downto 0);
	outwordra: out std_logic_vector(6 downto 0)
);
end entity;

architecture memram0 of memram00 is
type arrayram is array(0 to 64) of std_logic_vector(6 downto 0);
signal sword: arrayram;
signal scontrolra: std_logic_vector(1 downto 0);
begin
	scontrolra <= (resetra) & (rwra);
	pram: process(clkra)
	begin 
		if(clkra'event and clkra='1')then
			case scontrolra is
				when "00"=>
					outwordra<="1111111";
				when "01"=>
					outwordra<="1111111";
				when "10"=>
					if (inFlagra = '1') then
						sword(conv_integer(incontwritera))<=inwordra;
					end if;
				when "11"=>
						outwordra<= sword(conv_integer(incontreadra));
				when others => null;
			end case;
		end if;
	end process;
end architecture;