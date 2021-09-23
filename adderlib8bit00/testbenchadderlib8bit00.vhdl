library ieee;
use ieee.std_logic_1164.all;

entity testbenchadderlib8bit00 is
end entity;

architecture testbenchadderlib8bit0 of testbenchadderlib8bit00 is
	component adderlib8bit00 is port(
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
	adder: adderlib8bit00 port map(
	Ai=>SAi,Bi=>SBi,SL=>SSL,So=>SSo,LED=>SLED
	);
	estimulos: process
	begin
	SAi<="00000011";
	SBi<="00000001";
	SSL<='0';
	wait for 10 ns;
	SAi<="00000011";
	SBi<="00000100";
	wait for 10 ns;
	SAi<="00001101";
	SBi<="00001110";
	wait for 10 ns;
	SAi<="00001111";
	SBi<="00001101";
	wait for 10 ns;
	SAi<="00000111";
	SBi<="00000101";
	wait for 10 ns;
	SAi<="00001000";
	SBi<="00001011";
	wait for 10 ns;
	SAi<="00000011";
	SBi<="00000001";
	SSL<='1';
	wait for 10 ns;
	SAi<="00000011";
	SBi<="00000100";
	wait for 10 ns;
	SAi<="00001101";
	SBi<="00001110";
	wait for 10 ns;
	SAi<="00001111";
	SBi<="00001101";
	wait for 10 ns;
	SAi<="00000111";
	SBi<="00000101";
	wait for 10 ns;
	SAi<="00001000";
	SBi<="00001011";
	wait;
	end process;
end architecture;