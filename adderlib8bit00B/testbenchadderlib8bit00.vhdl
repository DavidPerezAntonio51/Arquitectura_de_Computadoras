library ieee;
use ieee.std_logic_1164.all;

entity testbenchadderlib8bit00 is
end entity;

architecture testbenchadderlib8bit0 of testbenchadderlib8bit00 is
	component adderlib8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	SL: in std_logic;
	So: out std_logic_vector(7 downto 0)
	);
	end component;
	signal SAi,Sbi,SSo: std_logic_vector(7 downto 0);
	signal SSL: std_logic;
begin
	adder: adderlib8bit00 port map(
	Ai=>SAi,Bi=>SBi,SL=>SSL,So=>SSo
	);
	estimulos: process
	begin
	sSL <= '0';
sAi <= "00000011";
sBi <= "00000100";
wait for 20 ns;
---------------------------
sAi <= "01000000";
sBi <= "01000010";
wait for 20 ns;
---------------------------
sAi <= "10000001";
sBi <= "10000000";
wait for 20 ns;
---------------------------
sSL <= '1';
sAi <= "00000011";
sBi <= "00000100";
wait for 20 ns;
---------------------------
sAi <= "01000000";
sBi <= "01000010";
wait for 20 ns;
---------------------------
sAi <= "10000001";
sBi <= "10000000";
wait;
	end process;
end architecture;