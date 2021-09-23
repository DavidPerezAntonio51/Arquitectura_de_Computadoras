library ieee;
use ieee.std_logic_1164.all;

entity muxtestbench00 is
end entity;

architecture muxtestbench0 of muxtestbench00 is
	component mux00 is port(
	Am: in std_logic_vector (7 downto 0);
	Bm: in std_logic_vector (7 downto 0);
	Sel: in std_logic_vector (3 downto 0);
	Ym: out std_logic_vector (7 downto 0)
	);
	end component;
	signal sAm: std_logic_vector (7 downto 0);
	signal sBm: std_logic_vector (7 downto 0);
	signal sSel: std_logic_vector (3 downto 0);
	signal sYm: std_logic_vector (7 downto 0);
begin
	Mux: mux00 port map(
	Am=>sAm,Bm=>sBm,Sel=>sSel,Ym=>sYm
	);
	estimulos: process
	begin
	sAm<="11011000";
	SBm<="11100100";
	sSel<="0001";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0011";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0010";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0110";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0100";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0101";
	wait for 10 ns;
	-----------------------------------------
	sSel<="0111";
	wait for 10 ns;
	-----------------------------------------
	sSel<="1111";
	wait;
	-----------------------------------------
	end process;
end architecture;