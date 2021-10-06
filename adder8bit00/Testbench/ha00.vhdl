library ieee;
use ieee.std_logic_1164.all;
library work;
use work.pakageha00.all;

entity ha00 is port(
	A0: in std_logic;
	B0: in std_logic;
	S0: out std_logic;
	C0: out std_logic
);
end entity;

architecture ha0 of ha00 is
begin
	H00: anda00 port map(
	Aaa=>A0,Baa=>B0,Yaa=>C0
	);
	
	H01: xora00 port map(
	Axa=>A0,Bxa=>B0,Yxa=>S0
	);

end architecture;