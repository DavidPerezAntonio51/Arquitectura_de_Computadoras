library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


package packagebcd00 is
---------------------------------------------------------------
  component osc00
  port(
       cdiv: in std_logic_vector(4 downto 0);
	   cdiv1: in std_logic_vector(4 downto 0);
       oscout0: inout std_logic;
	   oscout1: inout std_logic);
  end component;
---------------------------------------------------------------
  component init00
    port(
       clkinit: in std_logic;
	   opcodeinit: in std_logic_vector(3 downto 0);
	   inFlaginit: in std_logic;
	   ac8init: out std_logic_vector(7 downto 0);
	   ac12init: out std_logic_vector(11 downto 0);
	   outFlag8init: out std_logic;
       outFlag12init: out std_logic);
  end component;
---------------------------------------------------------------
  component leeDato00
    port(
       clkld: in std_logic;
	   opcodeld: in std_logic_vector(3 downto 0);
	   inDatold: in std_logic_vector(7 downto 0);
	   inFlagld: in std_logic;
	   outDatold: out std_logic_vector(7 downto 0);
       outFlagld: out std_logic);
  end component;
---------------------------------------------------------------
  component sust00
    port(
       clksu: in std_logic;
	   opcodesu: in std_logic_vector(3 downto 0);
	   inAC8su: in std_logic_vector(7 downto 0);
	   inAC12su: in std_logic_vector(11 downto 0);
	   inFlagsu: in std_logic;
	   outAC12su: out std_logic_vector(11 downto 0);
	   outFlagITERsu: out std_logic;
       outFlagAC12su: out std_logic);
  end component;
--------------------------------------------------------------
  component compadd00
    port(
       clkca: in std_logic;
	   opcodeca: in std_logic_vector(3 downto 0);
	   inAC12ca: in std_logic_vector(11 downto 0);
	   inFlagca: in std_logic;
	   outAC12ca: out std_logic_vector(11 downto 0);
       outFlagAC12ca: out std_logic);
  end component;
--------------------------------------------------------------
  component shift8s00
    port(
       clks8: in std_logic;
	   opcodes8: in std_logic_vector(3 downto 0);
	   inACs8: in std_logic_vector(7 downto 0);
	   inFlags8: in std_Logic;
	   outACs8: out std_logic_vector(7 downto 0);
       outFlags8: out std_logic);
  end component;
--------------------------------------------------------------
  component shift12s00
    port(
       clks12: in std_logic;
	   opcodes12: in std_logic_vector(3 downto 0);
	   inACs12: in std_logic_vector(11 downto 0);
	   inFlags12: in std_Logic;
	   outACs12: out std_logic_vector(11 downto 0);
       outFlags12: out std_logic);
  end component;
--------------------------------------------------------------
  component uc00
    port(
       RSTuc: in std_logic;
	   ENuc: in std_logic;
	   inFlagIteruc: in std_logic;
	   inFlagAC12uc: in std_logic;
	   inFlagAC8uc: in std_logic;
	   inFlagCodeuc: in std_logic;
	   inFlagIterBuc: in std_logic;
       F1F2F3uc: out std_logic_vector(2 downto 0));
  end component;
--------------------------------------------------------------
  component pc00
    port(
       clkpc: in std_logic;
	   inFlagpc: in std_logic_vector(2 downto 0);
	   outpc: inout std_logic_vector(3 downto 0);
       outFlagpc: out std_logic);
  end component;
--------------------------------------------------------------
  component checkCode00
  port(
       clkch: in std_logic;
	   inFlagch: in std_logic;
       incodech: in std_logic_vector(3 downto 0);
       outFlagch: out std_logic);
  end component;
--------------------------------------------------------------
  component contIter00
    port(
       clkIter: in std_logic;
	   inFlagIter: in std_logic;
	   resetIter: in std_logic;
	   enableIter: in std_logic;
	   outContIter: inout std_logic_vector(3 downto 0);
       outFlagIterA: out std_logic;
	   outFlagIterB: out std_logic);
  end component;
--------------------------------------------------------------
  component ac800
    port(
       clkac8: in std_logic;
	   inAC8: in std_logic_vector(7 downto 0);
	   inFlagac8: in std_logic;
	   outAC8: out std_logic_vector(7 downto 0);
       outFlagac8: out std_logic);
  end component;
--------------------------------------------------------------
  component ac1200
  port(
      clkac12: in std_logic;
	  inAC12: in std_logic_vector(11 downto 0);
	  inFlagac12: in std_logic;
	  outAC12: out std_logic_vector(11 downto 0);
	  outAC12LEDsu: out std_logic_vector(11 downto 0);--outAC12LEDsu
      outFlagac12: out std_logic);
  end component;
--------------------------------------------------------------
  component memProg00
  port(
    clkPM: in std_logic;
	inFlagPM: in std_logic ;
	outFlagPM: out std_logic ;
	inPCPM: in std_logic_vector ( 3 downto 0 );
	outcodePM: out std_logic_vector(3 downto 0));
  end component;
--------------------------------------------------------------
  component contring00
  port( 
	clkr: in std_logic ;
	enabler: in std_logic ;
	outr: out std_logic_vector ( 3 downto 0 ) );
  end component;
--------------------------------------------------------------
  component coderNibbles00
  port( 
	AC12bit03: in std_logic_vector ( 11 downto 0 );
	outU: out std_logic_vector ( 6 downto 0 );
	outD: out std_logic_vector ( 6 downto 0 );
	outC: out std_logic_vector ( 6 downto 0 ) );
  end component;
--------------------------------------------------------------
  component mux00
  port( 
	selmux: in std_logic_vector ( 3 downto 0 );
	inBCDU: in std_logic_vector ( 6 downto 0 );
	inBCDD: in std_logic_vector ( 6 downto 0 );
	inBCDC: in std_logic_vector ( 6 downto 0 );
	outBCDmux: out std_logic_vector ( 6 downto 0 ) );
  end component;
--------------------------------------------------------------
end packagebcd00;