library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity init00 is
  port(
       clkinit: in std_logic;
	   opcodeinit: in std_logic_vector(3 downto 0);
	   inFlaginit: in std_logic;
	   ac8init: out std_logic_vector(7 downto 0);
	   ac12init: out std_logic_vector(11 downto 0);
	   outFlag8init: out std_logic;
       outFlag12init: out std_logic);
end init00;

architecture init0 of init00 is
begin
  pinit: process(clkinit, inFlaginit, opcodeinit)
  variable aux0: bit:='0';
  variable aux1: bit:='0';
  begin
    if (clkinit'event and clkinit = '1') then
	  if (opcodeinit = "0000") then
	    case inFlaginit is
		  when '1' =>
---------------------------------------------------
		    if (aux1 = '0') then
			  aux1:='1';
			  ac8init <= "11000011";
			  ac12init <= "000000000000";
			  outFlag8init <= '1';
			  outFlag12init <= '1';
			else
			  outFlag8init <= '0';
			  outFlag12init <= '0';				  
			end if;
---------------------------------------------------
		  when '0' =>
---------------------------------------------------
		    if (aux0 = '0') then
			  aux0:='1';
			  ac8init <= "00111100";
			  ac12init <= "000000000000";
			  outFlag8init <= '1';
			  outFlag12init <= '1';
			else
			  outFlag8init <= '0';
			  outFlag12init <= '0';	  
			end if;
---------------------------------------------------
		  when others => null;
		end case;
	  else
	    aux0:='0';
		aux1:='0';
		ac8init <= (others => 'Z');
		ac12init <= (others => 'Z');
		outFlag8init <= 'Z';
		outFlag12init <= 'Z';
	  end if;
	end if;
  end process pinit;
end init0;