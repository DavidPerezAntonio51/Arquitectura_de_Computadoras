library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity testbenc is 
end entity;

architecture testbench of testbenc is
 component bcd00 is
  port(
       clk0: in std_logic;
	   clk1: in std_logic;
	   --cdiv0: in std_logic_vector(4 downto 0);
	   --cdiv01: in std_logic_vector(4 downto 0);
	   reset0: in std_logic;
	   enable0: in std_logic;
	   inData0: in std_logic_vector(7 downto 0);
	   --soutFlagI120: out std_logic;--
	   soutFlagITER0: inout std_logic;
	   soutFlagAC8: inout std_logic;
	   soutFlagAC12: inout std_logic;
	   outpc0: inout std_logic_vector(3 downto 0);
	   outCode0: inout std_logic_vector(3 downto 0);
	   outFlagpc0: inout std_logic;
	   outFlagCode0: inout std_logic;
	   outFlagch0: inout std_logic;
	   outContIter0: inout std_logic_vector(3 downto 0);
       outFlagIterA0: inout std_logic;-- se pone en '1' cuando Iteraciones alcanza 8
	   outFlagIterB0: inout std_logic;-- indica inicialización del proceso y sale de Iteraciones
	   outAC12LED0: out std_logic_vector(11 downto 0);
	   outAC80: inout std_logic_vector(7 downto 0);
	   F1F2F30: out std_logic_vector(2 downto 0);
	   outTransist0: inout std_logic_vector(3 downto 0);
	   outBCD0: out std_logic_vector(6 downto 0));
	   end component;
	   signal Sclk,Sreset,Senable: std_logic;
	   signal Sindata: std_logic_vector(7 downto 0);
	   signal Soutcode: std_logic_vector(3 downto 0);
	   signal Soutbcd: std_logic_vector(6 downto 0);
begin
	bcd: bcd00 port map(
	clk0=>Sclk,
	clk1=>Sclk,
	reset0=>Sreset,
	enable0=>Senable,
	indata0=>Sindata,
	outCode0=>Soutcode,
	
	outBCD0=>Soutbcd
	);

end architecture;