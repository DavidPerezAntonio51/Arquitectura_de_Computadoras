library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity contIter00 is
  port(
       clkIter: in std_logic;
	   resetIter: in std_logic;
	   enableIter: in std_logic;
	   inFlagIter: in std_logic;
	   outContIter: inout std_logic_vector(3 downto 0);
	   outFlagIterA: out std_logic;
       outFlagIterB: out std_logic);
end contIter00;

architecture contIter0 of contIter00 is
signal scontrol: std_logic_vector(2 downto 0);
begin
scontrol <= (resetIter)&(enableIter)&(inFlagIter);
  pcontIter: process(clkIter)
  variable aux0: bit:='0';
  variable aux1: bit:='0';
  variable aux2: bit:='0';
  variable aux3: bit:='0';
  variable aux4: bit:='0';
  begin
    if (clkIter'event and clkIter = '1') then
	  case scontrol is
	    when "000" =>
		  outContIter <= "0000";
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		  aux0:='0';
		  aux1:='1';
		  aux2:='0';
		  aux3:='0';
		  aux4:='0';
		when "010" =>
		  outContIter <= "0000";
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		  aux0:='0';
		  aux1:='1';
		  aux2:='0';
		  aux3:='0';
		  aux4:='0';
		when "110" =>
		  if (aux0 = '0') then
		     aux0:='1';
		     aux1:='1';
		     aux2:='0';
		     aux3:='0';
		     outContIter <= "0000";
		     outFlagIterA <= '0';
		     outFlagIterB <= '1';
		  elsif (aux1 = '0') then
		     aux1:='1';
			 aux2:='0';
		     outContIter <= outContIter;
			 outFlagIterA <= '0';
			 outFlagIterB <= '1';
		  end if;
------------------------------------------------------------
		when "111" =>
          case aux2 is
		    when '0' =>
			  if (outContIter < "0111") then
			    outContIter <= outContIter + '1';
		        outFlagIterA <= '0';
		        outFlagIterB <= '1';
				aux1:='0';
				aux2:='1';
			  else
			    outContIter <= outContIter;
		        outFlagIterA <= '1';
		        outFlagIterB <= '0';
			    aux0:='1';
		        aux1:='1';
		        aux2:='1';
		        aux3:='1';
		        aux4:='1';
			  end if;
			when others => null;
		  end case;
-----------------------------------------------------------
		when "100" =>
          case aux3 is
		    when '0' =>
			  aux1:='0';
			  aux2:='0';
			  aux3:='1';
			  if (outContIter < "0111") then
			    outContIter <= outContIter;
		        outFlagIterA <= '0';
		        outFlagIterB <= '0';--para entrar al caso "110" en la salida de la uc00
			  else
			    outContIter <= outContIter;
		        outFlagIterA <= '1';
		        outFlagIterB <= '1';
			  end if;
			when '1' =>
			  aux1:='0';
			  aux2:='0';
			  aux3:='0';
			when others => null;
		  end case;
------------------------------------------------------------
	    when "101" =>
          case aux4 is
		    when '0' =>
			  aux1:='0';
			  aux2:='0';
			  aux3:='0';
			  aux4:='1';
			  if (outContIter < "0111") then
			    outContIter <= outContIter;
		        outFlagIterA <= '0';
		        outFlagIterB <= '0';--para entrar al caso "110" en la salida de la uc00
			  else
			    outContIter <= outContIter;
		        outFlagIterA <= '1';
		        outFlagIterB <= '1';
			  end if;
			when '1' =>
			  aux1:='0';
			  aux2:='0';
			  aux3:='0';
			  aux4:='0';
			when others => null;
		  end case;
------------------------------------------------------------
		when others => null;
	  end case;
	end if;
  end process pcontIter;
end contIter0;