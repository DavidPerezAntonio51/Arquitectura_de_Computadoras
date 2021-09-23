library ieee;
use ieee.std_logic_1164.all;

entity testbenchadder4bit00 is
end entity;

architecture testbenchadder4bit0 of testbenchadder4bit00 is
	component adder4bit00 is port(
	Ai: in std_logic_vector(3 downto 0);
	Bi: in std_logic_vector(3 downto 0);
	SL: in std_logic;
	So: out std_logic_vector(3 downto 0);
	LED: out std_logic
	);
	end component;
	signal SAi,Sbi,SSo: std_logic_vector(3 downto 0);
	signal SSL,SLED: std_logic;
begin
	adder: adder4bit00 port map(
	Ai=>SAi,Bi=>SBi,SL=>SSL,So=>SSo,LED=>SLED
	);
	
	estimulos: process
	begin
	SAi<="0011";
	SBi<="0001";
	SSL<='0';
	wait for 10 ns;
	SAi<="0011";
	SBi<="0100";
	wait for 10 ns;
	SAi<="1101";
	SBi<="1110";
	wait for 10 ns;
	SAi<="1111";
	SBi<="1101";
	wait for 10 ns;
	SAi<="0111";
	SBi<="0101";
	wait for 10 ns;
	SAi<="1000";
	SBi<="1011";
	wait for 10 ns;
	SAi<="0011";
	SBi<="0001";
	SSL<='1';
	wait for 10 ns;
	SAi<="0011";
	SBi<="0100";
	wait for 10 ns;
	SAi<="1101";
	SBi<="1110";
	wait for 10 ns;
	SAi<="1111";
	SBi<="1101";
	wait for 10 ns;
	SAi<="0111";
	SBi<="0101";
	wait for 10 ns;
	SAi<="1000";
	SBi<="1011";
	wait;
	end process;
end architecture;