library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity checkCode00 is
  port(
       clkch: in std_logic;
	   inFlagch: in std_logic;
       incodech: in std_logic_vector(3 downto 0);
       outFlagch: out std_logic);
end checkCode00;

architecture checkCode0 of checkCode00 is
begin
  pch: process(clkch)
  begin
    if (clkch'event and clkch = '1') then
      case inFlagch is
        when '1' =>
		  if (incodech = "0101") then
		    outFlagch <= '1';
		  else
		    outFlagch <= '0';
		  end if;	
		when others => null;
      end case;
	end if;
  end process pch;

end checkCode0;