library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity uc00 is
  port(
       RSTuc: in std_logic;
	   ENuc: in std_logic;
	   inFlagIteruc: in std_logic;
	   inFlagAC12uc: in std_logic;
	   inFlagAC8uc: in std_logic;
	   inFlagCodeuc: in std_logic;
	   inFlagIterBuc: in std_logic;
       F1F2F3uc: out std_logic_vector(2 downto 0));
end uc00;

architecture uc0 of uc00 is
signal scontrol: std_logic_vector(6 downto 0);
begin
scontrol <= (RSTuc)&(ENuc)&(inFlagIteruc)&(inFlagAC12uc)&(inFlagAC8uc)&(inFlagCodeuc)&(inFlagIterBuc);
  
  with scontrol select
       F1F2F3uc <= "000" when "0000000",
	               "000" when "0100000",
				   "001" when "1100000",
				   "001" when "1100001",
				   "010" when "1101101",
				   "010" when "1100101",--
				   "010" when "1101001",
				   "011" when "1100011",
				   "011" when "1101011",
				   "100" when "1000000",
				   "100" when "1000001",
				   "100" when "1000101",
				   "100" when "1001001",
				   "100" when "1001101",
				   "100" when "1001011",
				   "110" when "1110011",
				   "110" when "1110001",--
				   "110" when "1111001",
				   "101" when "0100101",
				   "101" when "0101001",
				   "101" when "0101101",
				   "101" when "0101011",
				   "101" when "0111001",
				   "110" when others;

end uc0;