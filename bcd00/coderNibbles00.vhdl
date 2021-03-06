library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity coderNibbles00 is
port( 
	AC12bit03: in std_logic_vector ( 11 downto 0 );
	outU: out std_logic_vector ( 6 downto 0 );
	outD: out std_logic_vector ( 6 downto 0 );
	outC: out std_logic_vector ( 6 downto 0 ) );
end coderNibbles00;

architecture coderNibbles0 of coderNibbles00 is
signal nibbU, nibbD, nibbC: std_logic_vector(3 downto 0);
begin
nibbU <= AC12bit03(3 downto 0);
nibbD <= AC12bit03(7 downto 4);
nibbC <= AC12bit03(11 downto 8);

  with nibbU select
             outU <= "0000001"  when "0000",
			         "1001111"  when "0001",
                     "0010010"  when "0010",
                     "0000110"  when "0011",
                     "1001100"  when "0100",
                     "0100100"  when "0101",
                     "0100000"  when "0110",
                     "0001111"  when "0111",
                     "0000000"  when "1000",
                     "0000100"  when "1001",
                     "1111111" when others;
------------------------------------------------
  with nibbD select
             outD <= "0000001"  when "0000",
			         "1001111"  when "0001",
                     "0010010"  when "0010",
                     "0000110"  when "0011",
                     "1001100"  when "0100",
                     "0100100"  when "0101",
                     "0100000"  when "0110",
                     "0001111"  when "0111",
                     "0000000"  when "1000",
                     "0000100"  when "1001",
                     "1111111" when others;
------------------------------------------------
  with nibbC select
             outC <= "0000001"  when "0000",
			         "1001111"  when "0001",
                     "0010010"  when "0010",
                     "0000110"  when "0011",
                     "1001100"  when "0100",
                     "0100100"  when "0101",
                     "0100000"  when "0110",
                     "0001111"  when "0111",
                     "0000000"  when "1000",
                     "0000100"  when "1001",
                     "1111111" when others;
------------------------------------------------
end coderNibbles0;