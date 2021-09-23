library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagefa00.all;

entity fa00 is port(
	A00: in std_logic;
	B00: in std_logic;
	C00: in std_logic;
	S00: out std_logic;
	C01: out std_logic
);
end entity;

architecture fa0 of fa00 is
	signal Sint1: std_logic;
	signal Cint1: std_logic;
	signal Cint2: std_logic;
begin 
	F00: ha00 port map(
		A0=>A00,
		B0=>B00,
		S0=>Sint1,
		C0=>Cint1
	);
	
	F01: ha00 port map(
		A0=>C00,
		B0=>Sint1,
		S0=>S00,
		C0=>Cint2
	);
	
	F02: orao00 port map(
		Aao=>Cint2,
		Bao=>Cint1,
		Yao=>C01
	);
	
	
end architecture;