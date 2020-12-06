LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.constantesMIPS.ALL;

ENTITY unidadeControleFD IS
	PORT (
		-- Input ports
		clk : IN STD_LOGIC;
		opCode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		JR : IN STD_LOGIC;

		-- Output ports

		palavraControle : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE arch_name OF unidadeControleFD IS

	ALIAS lui : STD_LOGIC IS palavracontrole(16);
	ALIAS ori_andi : STD_LOGIC IS palavracontrole(15);
	ALIAS ULAop : STD_LOGIC_VECTOR(2 DOWNTO 0) IS palavraControle(12 DOWNTO 10);
	ALIAS seletorMUX_JMP : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle(14 DOWNTO 13);
	ALIAS BNE : STD_LOGIC IS palavracontrole(9);

	ALIAS seletorMUX_RtRd : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle(8 DOWNTO 7);
	ALIAS habilitaESCreg3 : STD_LOGIC IS palavraControle(6);
	ALIAS seletorMUX_RtImediato : STD_LOGIC IS palavraControle(5);
	ALIAS seletorULA_mem : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle(4 DOWNTO 3);
	ALIAS BEQ : STD_LOGIC IS palavraControle(2);
	ALIAS habLeituraMEM : STD_LOGIC IS palavraControle(1);
	ALIAS habEscritaMEM : STD_LOGIC IS palavraControle(0);

	--  Tabela da sequencia de palavra de controle

	--      habilitaESCreg3  function   operacao
	-- add		   0	     x20        000
	-- sub		   0		 x22	    001
	-- and        0         x24        010
	-- or         0         x25        011
	-- slt        1         x2A        100

BEGIN

	seletorMUX_JMP <= "01" WHEN opCode = opCodeTipoJ OR opCode = opCodeJAL
		ELSE
		"10" WHEN OpCode = opCodeTipoR AND JR = '1'
		ELSE
		"00";

	lui <= '1' WHEN opCode = opCodeLUI ELSE
		'0';
	seletorMUX_RtRd <= "01" WHEN opCode = opCodeTipoR
		ELSE
		"10" WHEN opCode = opCodeJAL ELSE
		"00";
	ori_andi <= '1' WHEN opCode = opCodeORI OR opCode = opCodeANDI ELSE
		'0';
	habilitaESCreg3 <= '1' WHEN opCode = opCodeTipoR OR opCode = opCodeLW OR
		opcode = opcodeORI OR opcode = opcodeANDI
		OR opCode = opCodeLUI
		OR opCode = opCodeADDI
		OR opCode = opCodeSLTI
		OR opCode = opCodeJAL
		ELSE
		'0';
	seletorMUX_RtImediato <= '1' WHEN opCode = opCodeSW OR opCode = opCodeLW OR opcode = opcodeORI
		OR opcode = opcodeANDI
		OR opCode = opCodeADDI
		OR opCode = opCodeSLTI ELSE
		'0';

	BEQ <= '1' WHEN opCode = opCodeBEQ ELSE
		'0';
	BNE <= '1' WHEN opCode = opCodeBNE ELSE
		'0';

	habLeituraMEM <= '1' WHEN opCode = opCodeLW ELSE
		'0';
	habEscritaMEM <= '1' WHEN opCode = opCodeSW ELSE
		'0';

	ULAop <= opADD WHEN opCode = opCodeSW ELSE
		opADD WHEN opCode = opCodeLW ELSE
		opANDI WHEN opCode = opCodeANDI ELSE
		opORI WHEN opcode = opcodeORI ELSE
		opFUNCT WHEN opCode = opCodeTipoR ELSE
		opSUB WHEN opCode = opCodeBEQ ELSE
		opSUB WHEN opCode = opCodeBNE ELSE
		opADD WHEN opCode = opCodeADDI ELSE
		opSLTI WHEN opCode = opCodeSLTI ELSE
		"000";
	SeletorULA_mem <= "01" WHEN opCode = opCodelW
		ELSE
		"10" WHEN opCode = opCodeJAL
		ELSE
		"00";

END ARCHITECTURE;