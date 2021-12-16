library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity pc00 is
  port(
       clkpc: in std_logic;
	   inFlagpc: in std_logic_vector(2 downto 0);
	   outpc: inout std_logic_vector(3 downto 0);
       outFlagpc: out std_logic);
end pc00;

architecture pc0 of pc00 is
begin
  ppc: process(clkpc)
  variable aux0: bit:='0';
  variable aux1: bit:='0';
  variable aux2: bit:='0';
  variable aux3: bit:='0';
  variable aux4: bit:='0';
  variable aux5: bit:='0';
  variable aux6: bit:='1';
  begin
    if (clkpc'event and clkpc = '1') then
	  case inFlagpc is
	    when "000" =>
		  outpc <= "0000";
		  outFlagpc <= '0';
			 aux0:='0';
			 aux1:='1';
			 aux2:='0';
			 aux3:='0';
			 aux4:='0';
			 aux5:='0';
			 aux6:='0';
		when "001" =>
		  if (aux0 = '0') then
		     aux0:='1';
			 --aux1:='0';
		     outpc <= "0000";
		     outFlagpc <= '1';
		  elsif (aux1 = '0') then
		     aux1:='1';
			 outpc <= outpc;
		     outFlagpc <= '1';
		  else
		     outFlagpc <= '0';
		  end if;
----------------------------------------------
----------------------------------------------
		when "010" =>
		  if (aux2 = '0') then
		     aux2:='1';
			 aux3:='0';
			 aux4:='0';
		     outpc <= outpc + '1';
		     outFlagpc <= '1';
		  elsif (aux2 = '1') then
		     aux2:='0';
			 aux3:='0';
			 aux4:='0';
		     outpc <= outpc + '1';
		     outFlagpc <= '1';
		  end if;
----------------------------------------------
----------------------------------------------
		when "011" =>
		  if (aux3 = '0') then
		     aux3:='1';
			 aux4:='0';
		     outpc <= "0010";
		     outFlagpc <= '1';
		  else
		     outFlagpc <= '0';
		  end if;
----------------------------------------------
----------------------------------------------
		when "100" =>
		  if (aux4 = '0') then
		     aux4:='1';
			 aux1:='0';
		     outpc <= outpc;
		     outFlagpc <= '0';
		  else
		     aux1:='0';
		     outFlagpc <= '0';
		  end if;
----------------------------------------------
----------------------------------------------
		when "110" =>
		  if (aux6 = '0') then
		     aux6:='1';
		     outpc <= outpc;
		     outFlagpc <= '0';
		  else
		     outFlagpc <= '0';
		  end if;
----------------------------------------------
----------------------------------------------
		when "101" =>
		  if (aux5 = '0') then
		     aux5:='1';
		     outpc <= "0000";
		     outFlagpc <= '0';
			 aux0:='0';
			 aux1:='0';
			 aux2:='0';
			 aux3:='0';
			 aux4:='0';
		  else
		     outFlagpc <= '0';
		  end if;
		when others => null;
	  end case;
	end if;
  end process ppc;
end pc0;