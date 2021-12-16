library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.packagebcd00.all;

entity bcd00 is
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
end bcd00;

architecture bcd0 of bcd00 is
signal sAC8b: std_logic_vector(7 downto 0);
signal sAC12b: std_logic_vector(11 downto 0);
signal soutAC12: std_logic_vector(11 downto 0);
signal sF1F2F3: std_logic_vector(2 downto 0);
signal outFlagI120, outFlagI80: std_logic;
signal soutU, soutD, soutC: std_logic_vector(6 downto 0);
signal soutFlagI120: std_logic;
begin
F1F2F30 <= sF1F2F3;


  --BC00: osc00 port map(oscout0 => clk0,
  --                     oscout1 => clk1,
  --                     cdiv => cdiv0,
  --					 cdiv1 => cdiv01);
  
  BC01: init00 port map(clkinit => clk0,
                        opcodeinit => outCode0,
                        inFlaginit => outFlagCode0,
						ac8init  => sAC8b,
						ac12init => sAC12b,
						outFlag8init => outFlagI80,
                        outFlag12init => outFlagI120);
  
  BC02: leeDato00 port map(clkld => clk0,
                           opcodeld => outCode0,
						   inDatold => inData0,
						   inFlagld => outFlagCode0,
						   outDatold => sAC8b,--va hacia el acumulador de 8
                           outFlagld => outFlagI80);
  
  BC03: sust00 port map(clksu => clk0,
                        opcodesu => outCode0,
						inAC8su => outAC80,--viene del acumulador de 8
						inAC12su => soutAC12,--viene del acumulador de 12
						inFlagsu => outFlagCode0,
						outAC12su => sAC12b,--va hacia el acumulador de 12
						--outAC12LEDsu => outAC12LED0,--va hacia el exterior
						outFlagITERsu => soutFlagITER0,--va hacia el módulo ITER
                        outFlagAC12su => outFlagI120);--va hacia el acumulador de 12
  
  BC04: compadd00 port map(clkca => clk0,
						   opcodeca => outCode0,
						   inAC12ca => soutAC12,--viene del acumulador de 12
						   inFlagca => outFlagCode0,
						   outAC12ca => sAC12b,-- va hacia el acumulador de 12
						   outFlagAC12ca => outFlagI120);-- va hacia el acumulador de 12
  
  BC05: shift8s00 port map(clks8 => clk0,
						   opcodes8 => outCode0,
						   inACs8 => outAC80,
						   inFlags8 => outFlagCode0,
						   outACs8 => sAC8b,--va hacia el acumulador de 8
						   outFlags8 => outFlagI80);--va hacia el acumulador de 8
  
  BC06: shift12s00 port map(clks12 => clk0,
						   opcodes12 => outCode0,--viene de la "memProg"
						   inACs12 => soutAC12,--viene del acumulador de 12
						   inFlags12 => outFlagCode0,--viene de la "memProg"
						   outACs12 => sAC12b,--va hacia el acumulador de 12
						   outFlags12 => outFlagI120);--va hacia el acumulador de 12
  
  BC07: uc00 port map(RSTuc => reset0,
					   ENuc => enable0,
					   inFlagIteruc => outFlagIterA0,--se pone en '1' al llegar 8 iteraciones
					   inFlagAC12uc => soutFlagAC12,--viene del acumulador de 12
					   inFlagAC8uc => soutFlagAC8,--viene del acumulador de 8
					   inFlagCodeuc => outFlagch0,--viene del módulo "checkCode00"
					   inFlagIterBuc => outFlagIterB0,-- indica inicializacion del proceso
					   F1F2F3uc => sF1F2F3);-- va hacia el PC
  
  BC08: pc00 port map(clkpc => clk0,
					   inFlagpc => sF1F2F3,--viene de la "uc00"
					   outpc => outpc0,--va hacia "memProg00"
					   outFlagpc => outFlagpc0);--va hacia "memProg00"
  
  BC09: checkCode00 port map(clkch => clk0,
                              inFlagch => outFlagCode0,
                              incodech => outCode0,
                              outFlagch => outFlagch0);
  
  BC10: contIter00 port map(clkIter => clk0,
							 inFlagIter => soutFlagITER0,--viene del módulo de susticución
						     resetIter => reset0,
							 enableIter => enable0,
							 outContIter => outContIter0,--solo va al exterior
						     outFlagIterA => outFlagIterA0,--se pone en '1' al llegar 8 iteraciones
							 outFlagIterB => outFlagIterB0);-- indica inicializacion del proceso con '1'

  BC11: ac800 port map(clkac8 => clk0,
					   inAC8 => sAC8b,--viene de las instrucciones de 8
					   inFlagac8 => outFlagI80,--viene de las instrucciones de 8
					   outAC8 => outAC80,--va hacia el exterior y a las instrucciones de 8
					   outFlagac8 => soutFlagAC8);--va hacia la uc00
  
  BC12: ac1200 port map(clkac12 => clk0,
						 inAC12 => sAC12b,--viene de las instrucciones de 12
						 inFlagac12 => outFlagI120,--viene de las instrucciones de 12
						 outAC12 => soutAC12,--señal que va a las instrucciones de 12
						 outAC12LEDsu => outAC12LED0,
						 outFlagac12 => soutFlagAC12);--solo va a la uc00
  
  BC13: memProg00 port map(clkPM => clk0,
						  inFlagPM => outFlagpc0,
						  outFlagPM => outFlagCode0,--va al exterior y a todas las instrucciones, ya sea de 8 o de 12
						  inPCPM => outpc0,--viene del módulo "pc00" como apuntador
						  outcodePM => outCode0);--es el "opcode", va al exterior y a las instrucciones

  BC14: contring00 port map(clkr => clk1,
                            enabler => enable0,
                            outr => outTransist0);

  BC15: coderNibbles00 port map(AC12bit03 => soutAC12,
                                outU => soutU,
								outD => soutD,
                                outC => soutC);

  BC16: mux00 port map(selmux => outTransist0,
                       inBCDU => soutU,
					   inBCDD => soutD,
					   inBCDC => soutC,
                       outBCDmux => outBCD0);


end bcd0;