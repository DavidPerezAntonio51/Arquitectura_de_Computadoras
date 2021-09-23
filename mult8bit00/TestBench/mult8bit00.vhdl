library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagemult8bit00.all;

entity mult8bit00 is port(
	Ai: in std_logic_vector(7 downto 0);
	Bi: in std_logic_vector(7 downto 0);
	Ro: out std_logic_vector(15 downto 0)
);
end entity;

architecture mult8bit0 of mult8bit00 is
	signal S0,S3,S6,S9,S12,S15,S18: std_logic_vector(6 downto 0);
	signal S1,S2,S4,S5,S7,S8,S10,S11,S13,S14,S16,S17,S19,S20: std_logic_vector(7 downto 0);
begin
	M00: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(0),Yaa=>Ro(0)
	);
	M01: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(0),Yaa=>S0(0)
	);
	M02: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(0),Yaa=>S0(1)
	);
	M03: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(0),Yaa=>S0(2)
	);
	M04: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(0),Yaa=>S0(3)
	);
	M05: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(0),Yaa=>S0(4)
	);
	M06: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(0),Yaa=>S0(5)
	);
	M07: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(0),Yaa=>S0(6)
	);
--**********************************************************************************--
	M08: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(1),Yaa=>S1(0)
	);
	M09: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(1),Yaa=>S1(1)
	);
	M10: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(1),Yaa=>S1(2)
	);
	M11: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(1),Yaa=>S1(3)
	);
	M12: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(1),Yaa=>S1(4)
	);
	M13: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(1),Yaa=>S1(5)
	);
	M14: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(1),Yaa=>S1(6)
	);
	M15: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(1),Yaa=>S1(7)
	);
--**********************************************************************************--
	M16: fa00 port map(
		A00=>S0(0),B00=>S1(0),C00=>'0',S00=>Ro(1),C01=>S2(0)
	);
	M17: fa00 port map(
		A00=>S0(1),B00=>S1(1),C00=>S2(0),S00=>S3(0),C01=>S2(1)
	);
	M18: fa00 port map(
		A00=>S0(2),B00=>S1(2),C00=>S2(1),S00=>S3(1),C01=>S2(2)
	);
	M19: fa00 port map(
		A00=>S0(3),B00=>S1(3),C00=>S2(2),S00=>S3(2),C01=>S2(3)
	);
	M20: fa00 port map(
		A00=>S0(4),B00=>S1(4),C00=>S2(3),S00=>S3(3),C01=>S2(4)
	);
	M21: fa00 port map(
		A00=>S0(5),B00=>S1(5),C00=>S2(4),S00=>S3(4),C01=>S2(5)
	);
	M22: fa00 port map(
		A00=>S0(6),B00=>S1(6),C00=>S2(5),S00=>S3(5),C01=>S2(6)
	);
	M23: fa00 port map(
		A00=>'0',B00=>S1(7),C00=>S2(6),S00=>S3(6),C01=>S2(7)
	);
--**********************************************************************************--
	M24: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(2),Yaa=>S4(0)
	);
	M25: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(2),Yaa=>S4(1)
	);
	M26: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(2),Yaa=>S4(2)
	);
	M27: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(2),Yaa=>S4(3)
	);
	M28: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(2),Yaa=>S4(4)
	);
	M29: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(2),Yaa=>S4(5)
	);
	M30: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(2),Yaa=>S4(6)
	);
	M31: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(2),Yaa=>S4(7)
	);
--**********************************************************************************--
	M32: fa00 port map(
		A00=>S3(0),B00=>S4(0),C00=>'0',S00=>Ro(2),C01=>S5(0)
	);
	M33: fa00 port map(
		A00=>S3(1),B00=>S4(1),C00=>S5(0),S00=>S6(0),C01=>S5(1)
	);
	M34: fa00 port map(
		A00=>S3(2),B00=>S4(2),C00=>S5(1),S00=>S6(1),C01=>S5(2)
	);
	M35: fa00 port map(
		A00=>S3(3),B00=>S4(3),C00=>S5(2),S00=>S6(2),C01=>S5(3)
	);
	M36: fa00 port map(
		A00=>S3(4),B00=>S4(4),C00=>S5(3),S00=>S6(3),C01=>S5(4)
	);
	M37: fa00 port map(
		A00=>S3(5),B00=>S4(5),C00=>S5(4),S00=>S6(4),C01=>S5(5)
	);
	M38: fa00 port map(
		A00=>S3(6),B00=>S4(6),C00=>S5(5),S00=>S6(5),C01=>S5(6)
	);
	M39: fa00 port map(
		A00=>S2(7),B00=>S4(7),C00=>S5(6),S00=>S6(6),C01=>S5(7)
	);
--**********************************************************************************--
	M40: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(3),Yaa=>S7(0)
	);
	M41: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(3),Yaa=>S7(1)
	);
	M42: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(3),Yaa=>S7(2)
	);
	M43: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(3),Yaa=>S7(3)
	);
	M44: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(3),Yaa=>S7(4)
	);
	M45: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(3),Yaa=>S7(5)
	);
	M46: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(3),Yaa=>S7(6)
	);
	M47: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(3),Yaa=>S7(7)
	);
--**********************************************************************************--
	M48: fa00 port map(
		A00=>S6(0),B00=>S7(0),C00=>'0',S00=>Ro(3),C01=>S8(0)
	);
	M49: fa00 port map(
		A00=>S6(1),B00=>S7(1),C00=>S8(0),S00=>S9(0),C01=>S8(1)
	);
	M50: fa00 port map(
		A00=>S6(2),B00=>S7(2),C00=>S8(1),S00=>S9(1),C01=>S8(2)
	);
	M51: fa00 port map(
		A00=>S6(3),B00=>S7(3),C00=>S8(2),S00=>S9(2),C01=>S8(3)
	);
	M52: fa00 port map(
		A00=>S6(4),B00=>S7(4),C00=>S8(3),S00=>S9(3),C01=>S8(4)
	);
	M53: fa00 port map(
		A00=>S6(5),B00=>S7(5),C00=>S8(4),S00=>S9(4),C01=>S8(5)
	);
	M54: fa00 port map(
		A00=>S6(6),B00=>S7(6),C00=>S8(5),S00=>S9(5),C01=>S8(6)
	);
	M55: fa00 port map(
		A00=>S5(7),B00=>S7(7),C00=>S8(6),S00=>S9(6),C01=>S8(7)
	);
--**********************************************************************************--
	M56: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(4),Yaa=>S10(0)
	);
	M57: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(4),Yaa=>S10(1)
	);
	M58: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(4),Yaa=>S10(2)
	);
	M59: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(4),Yaa=>S10(3)
	);
	M60: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(4),Yaa=>S10(4)
	);
	M61: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(4),Yaa=>S10(5)
	);
	M62: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(4),Yaa=>S10(6)
	);
	M63: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(4),Yaa=>S10(7)
	);
--**********************************************************************************--
	M64: fa00 port map(
		A00=>S9(0),B00=>S10(0),C00=>'0',S00=>Ro(4),C01=>S11(0)
	);
	M65: fa00 port map(
		A00=>S9(1),B00=>S10(1),C00=>S11(0),S00=>S12(0),C01=>S11(1)
	);
	M66: fa00 port map(
		A00=>S9(2),B00=>S10(2),C00=>S11(1),S00=>S12(1),C01=>S11(2)
	);
	M67: fa00 port map(
		A00=>S9(3),B00=>S10(3),C00=>S11(2),S00=>S12(2),C01=>S11(3)
	);
	M68: fa00 port map(
		A00=>S9(4),B00=>S10(4),C00=>S11(3),S00=>S12(3),C01=>S11(4)
	);
	M69: fa00 port map(
		A00=>S9(5),B00=>S10(5),C00=>S11(4),S00=>S12(4),C01=>S11(5)
	);
	M70: fa00 port map(
		A00=>S9(6),B00=>S10(6),C00=>S11(5),S00=>S12(5),C01=>S11(6)
	);
	M71: fa00 port map(
		A00=>S8(7),B00=>S10(7),C00=>S11(6),S00=>S12(6),C01=>S11(7)
	);
	--**********************************************************************************--
	M72: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(5),Yaa=>S13(0)
	);
	M73: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(5),Yaa=>S13(1)
	);
	M74: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(5),Yaa=>S13(2)
	);
	M75: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(5),Yaa=>S13(3)
	);
	M76: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(5),Yaa=>S13(4)
	);
	M77: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(5),Yaa=>S13(5)
	);
	M78: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(5),Yaa=>S13(6)
	);
	M79: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(5),Yaa=>S13(7)
	);
	--**********************************************************************************--
	M80: fa00 port map(
		A00=>S12(0),B00=>S13(0),C00=>'0',S00=>Ro(5),C01=>S14(0)
	);
	M81: fa00 port map(
		A00=>S12(1),B00=>S13(1),C00=>S14(0),S00=>S15(0),C01=>S14(1)
	);
	M82: fa00 port map(
		A00=>S12(2),B00=>S13(2),C00=>S14(1),S00=>S15(1),C01=>S14(2)
	);
	M83: fa00 port map(
		A00=>S12(3),B00=>S13(3),C00=>S14(2),S00=>S15(2),C01=>S14(3)
	);
	M84: fa00 port map(
		A00=>S12(4),B00=>S13(4),C00=>S14(3),S00=>S15(3),C01=>S14(4)
	);
	M85: fa00 port map(
		A00=>S12(5),B00=>S13(5),C00=>S14(4),S00=>S15(4),C01=>S14(5)
	);
	M86: fa00 port map(
		A00=>S12(6),B00=>S13(6),C00=>S14(5),S00=>S15(5),C01=>S14(6)
	);
	M87: fa00 port map(
		A00=>S11(7),B00=>S13(7),C00=>S14(6),S00=>S15(6),C01=>S14(7)
	);
	--**********************************************************************************--
	M88: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(6),Yaa=>S16(0)
	);
	M89: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(6),Yaa=>S16(1)
	);
	M90: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(6),Yaa=>S16(2)
	);
	M91: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(6),Yaa=>S16(3)
	);
	M92: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(6),Yaa=>S16(4)
	);
	M93: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(6),Yaa=>S16(5)
	);
	M94: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(6),Yaa=>S16(6)
	);
	M95: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(6),Yaa=>S16(7)
	);
	--**********************************************************************************--
	M96: fa00 port map(
		A00=>S15(0),B00=>S16(0),C00=>'0',S00=>Ro(6),C01=>S17(0)
	);
	M97: fa00 port map(
		A00=>S15(1),B00=>S16(1),C00=>S17(0),S00=>S18(0),C01=>S17(1)
	);
	M98: fa00 port map(
		A00=>S15(2),B00=>S16(2),C00=>S17(1),S00=>S18(1),C01=>S17(2)
	);
	M99: fa00 port map(
		A00=>S15(3),B00=>S16(3),C00=>S17(2),S00=>S18(2),C01=>S17(3)
	);
	M100: fa00 port map(
		A00=>S15(4),B00=>S16(4),C00=>S17(3),S00=>S18(3),C01=>S17(4)
	);
	M101: fa00 port map(
		A00=>S15(5),B00=>S16(5),C00=>S17(4),S00=>S18(4),C01=>S17(5)
	);
	M102: fa00 port map(
		A00=>S15(6),B00=>S16(6),C00=>S17(5),S00=>S18(5),C01=>S17(6)
	);
	M103: fa00 port map(
		A00=>S14(7),B00=>S16(7),C00=>S17(6),S00=>S18(6),C01=>S17(7)
	);
	--**********************************************************************************--
	M104: anda00 port map(
		Aaa=> Ai(0),Baa=>Bi(7),Yaa=>S19(0)
	);
	M105: anda00 port map(
		Aaa=> Ai(1),Baa=>Bi(7),Yaa=>S19(1)
	);
	M106: anda00 port map(
		Aaa=> Ai(2),Baa=>Bi(7),Yaa=>S19(2)
	);
	M107: anda00 port map(
		Aaa=> Ai(3),Baa=>Bi(7),Yaa=>S19(3)
	);
	M108: anda00 port map(
		Aaa=> Ai(4),Baa=>Bi(7),Yaa=>S19(4)
	);
	M109: anda00 port map(
		Aaa=> Ai(5),Baa=>Bi(7),Yaa=>S19(5)
	);
	M110: anda00 port map(
		Aaa=> Ai(6),Baa=>Bi(7),Yaa=>S19(6)
	);
	M111: anda00 port map(
		Aaa=> Ai(7),Baa=>Bi(7),Yaa=>S19(7)
	);
	--**********************************************************************************--
	M112: fa00 port map(
		A00=>S18(0),B00=>S19(0),C00=>'0',S00=>Ro(7),C01=>S20(0)
	);
	M113: fa00 port map(
		A00=>S18(1),B00=>S19(1),C00=>S20(0),S00=>Ro(8),C01=>S20(1)
	);
	M114: fa00 port map(
		A00=>S18(2),B00=>S19(2),C00=>S20(1),S00=>Ro(9),C01=>S20(2)
	);
	M115: fa00 port map(
		A00=>S18(3),B00=>S19(3),C00=>S20(2),S00=>Ro(10),C01=>S20(3)
	);
	M116: fa00 port map(
		A00=>S18(4),B00=>S19(4),C00=>S20(3),S00=>Ro(11),C01=>S20(4)
	);
	M117: fa00 port map(
		A00=>S18(5),B00=>S19(5),C00=>S20(4),S00=>Ro(12),C01=>S20(5)
	);
	M118: fa00 port map(
		A00=>S18(6),B00=>S19(6),C00=>S20(5),S00=>Ro(13),C01=>S20(6)
	);
	M119: fa00 port map(
		A00=>S17(7),B00=>S19(7),C00=>S20(6),S00=>Ro(14),C01=>Ro(15)
	);
end architecture;