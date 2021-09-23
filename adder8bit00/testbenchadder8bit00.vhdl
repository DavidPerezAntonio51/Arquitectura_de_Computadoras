library ieee;
use ieee.std_logic_1164.all;

entity testbenchadder8bit00 is
end entity;

architecture testbenchadder8bit0 of testbenchadder8bit00 is
	component adder8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	SL: in std_logic;
	So: out std_logic_vector(7 downto 0);
	LED: out std_logic
	);
	end component;
	signal SAi,Sbi,SSo: std_logic_vector(7 downto 0);
	signal SSL,SLED: std_logic;
begin
	adder: adder8bit00 port map(
	Ai=>SAi,Bi=>SBi,SL=>SSL,So=>SSo,LED=>SLED
	);
	estimulos: process
	begin
	---------------------------
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
---------------------------
	end process;
end architecture;