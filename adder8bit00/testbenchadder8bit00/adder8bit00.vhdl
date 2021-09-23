library ieee;
use ieee.std_logic_1164.all;
use work.packageadder8bit00.all;

entity adder8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	SL: in std_logic;
	So: out std_logic_vector(7 downto 0);
	LED: out std_logic
);
end entity;

architecture adder8bit0 of adder8bit00 is
 signal SB,SC,SA:std_logic_vector(7 downto 0);
 signal Sx: std_logic;
begin
	A00: xora00 port map(
		Axa=>SL,Bxa=>Bi(0),Yxa=>SB(0)
	);
	A01: xora00 port map(
		Axa=>SL,Bxa=>Bi(1),Yxa=>SB(1)
	);
	A02: xora00 port map(
		Axa=>SL,Bxa=>Bi(2),Yxa=>SB(2)
	);
	A03: xora00 port map(
		Axa=>SL,Bxa=>Bi(3),Yxa=>SB(3)
	);
	A04: xora00 port map(
		Axa=>SL,Bxa=>Bi(4),Yxa=>SB(4)
	);
	A05: xora00 port map(
		Axa=>SL,Bxa=>Bi(5),Yxa=>SB(5)
	);
	A06: xora00 port map(
		Axa=>SL,Bxa=>Bi(6),Yxa=>SB(6)
	);
	A07: xora00 port map(
		Axa=>SL,Bxa=>Bi(7),Yxa=>SB(7)
	);
	A08: fa00 port map(
		A00=>Ai(0),B00=>SB(0),C00=>SL,S00=>SA(0),C01=>SC(0)
	);
	A09: fa00 port map(
		A00=>Ai(1),B00=>SB(1),C00=>SC(0),S00=>SA(1),C01=>SC(1)
	);
	A10: fa00 port map(
		A00=>Ai(2),B00=>SB(2),C00=>SC(1),S00=>SA(2),C01=>SC(2)
	);
	A11: fa00 port map(
		A00=>Ai(3),B00=>SB(3),C00=>SC(2),S00=>SA(3),C01=>SC(3)
	);
	A12: fa00 port map(
		A00=>Ai(4),B00=>SB(4),C00=>SC(3),S00=>SA(4),C01=>SC(4)
	);
	A13: fa00 port map(
		A00=>Ai(5),B00=>SB(5),C00=>SC(4),S00=>SA(5),C01=>SC(5)
	);
	A14: fa00 port map(
		A00=>Ai(6),B00=>SB(6),C00=>SC(5),S00=>SA(6),C01=>SC(6)
	);
	A15: fa00 port map(
		A00=>Ai(7),B00=>SB(7),C00=>SC(6),S00=>SA(7),C01=>SC(7)
	);
	A24: xora00 port map(
		Axa=>SC(6),Bxa=>SC(7),Yxa=>LED
	);
	A25: xnora00 port map(
		Axn=>SC(7),Bxn=>SC(6),Yxn=>Sx
	);
	A16: anda00 port map(
		Aaa=>Sx,Baa=>SA(0),Yaa=>So(0)
	);
	A17: anda00 port map(
		Aaa=>Sx,Baa=>SA(1),Yaa=>So(1)
	);
	A18: anda00 port map(
		Aaa=>Sx,Baa=>SA(2),Yaa=>So(2)
	);
	A19: anda00 port map(
		Aaa=>Sx,Baa=>SA(3),Yaa=>So(3)
	);
	A20: anda00 port map(
		Aaa=>Sx,Baa=>SA(4),Yaa=>So(4)
	);
	A21: anda00 port map(
		Aaa=>Sx,Baa=>SA(5),Yaa=>So(5)
	);
	A22: anda00 port map(
		Aaa=>Sx,Baa=>SA(6),Yaa=>So(6)
	);
	A23: anda00 port map(
		Aaa=>Sx,Baa=>SA(7),Yaa=>So(7)
	);
end architecture;