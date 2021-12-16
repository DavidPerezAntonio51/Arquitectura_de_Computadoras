library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity leeDato00 is
  port(
       clkld: in std_logic;
	   opcodeld: in std_logic_vector(3 downto 0);
	   inDatold: in std_logic_vector(7 downto 0);
	   inFlagld: in std_logic;
	   outDatold: out std_logic_vector(7 downto 0);
       outFlagld: out std_logic);
end leeDato00;

architecture leeDato0 of leeDato00 is
begin
  pdato: process(clkld)
  variable aux: bit:='0';
  begin
    if (clkld'event and clkld = '1') then
	  if (opcodeld = "0001") then
	    case inFlagld is
		  when '1' =>
		    if (aux = '0') then
			  aux:='1';
			  outDatold <= inDatold;
			  outFlagld <= '1';
			end if;
		  when '0' =>
		    aux:='0';
		    outFlagld <= '0';
		  when others => null;
		end case;
	  else
	    aux:='0';
		outDatold <= (others => 'Z');
		outFlagld <= 'Z';
	  end if;
	end if;
  end process pdato;
end leeDato0;