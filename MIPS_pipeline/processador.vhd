LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY processador IS
	GENERIC (
		DATA_WIDTH : NATURAL := 32;
		ADDR_WIDTH : NATURAL := 32
	);

	PORT (
		-- Input ports
		clk : IN STD_LOGIC;
		barramento_leituraDados : IN STD_LOGIC_VECTOR(31 DOWNTO 0);

		barramento_endereco : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		barramentoDeEscritaDados : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		habilitaEscrita : OUT STD_LOGIC;
		habilitaLeitura : OUT STD_LOGIC;

		PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		seletor_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);

		--testess
		inA_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		inB_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		mux_lui_out : OUT STD_LOGIC
	);
END ENTITY;
ARCHITECTURE arch_name OF processador IS

	-- ULA --
	SIGNAL flagZero : STD_LOGIC;

	-- MUX SOMADOR --
	SIGNAL saida_SOMA_FIXA : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saida_SUM_MUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL selMUX_AND_BEQ : STD_LOGIC;

	-- SOMADOR VARIVAEL --
	SIGNAL saidaSHIFT_entradaSUM : STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- SOMADOR PC --
	--SIGNAL PC_MUX                 : std_logic_vector(31 DOWNTO 0);
	SIGNAL PC_ROM_INC : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL PC_MUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL PC_MUX_JUMP : STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- ROM MIPS --
	SIGNAL ROM_UC : STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- BANCO DE REGISTRADOR --
	-- ALIAS ETAPA
	SIGNAL saida_ID : STD_LOGIC_VECTOR(63 DOWNTO 0);
	-- 63 ~ 32  => pc
	ALIAS pc : STD_LOGIC_VECTOR(31 DOWNTO 0) IS saida_ID(63 DOWNTO 32);
	ALIAS entradaA_RS : STD_LOGIC_VECTOR (4 DOWNTO 0) IS saida_ID(25 DOWNTO 21);
	ALIAS entradaB_RT : STD_LOGIC_VECTOR (4 DOWNTO 0) IS saida_ID(20 DOWNTO 16);
	ALIAS entradaC_RD : STD_LOGIC_VECTOR (4 DOWNTO 0) IS saida_ID(15 DOWNTO 11);
	ALIAS opcode : STD_LOGIC_VECTOR (5 DOWNTO 0) IS saida_ID(63 DOWNTO 58);
	ALIAS func : STD_LOGIC_VECTOR (5 DOWNTO 0) IS saida_ID(5 DOWNTO 0);
	ALIAS imediato : STD_LOGIC_VECTOR (25 DOWNTO 0) IS saida_ID(25 DOWNTO 0);

	SIGNAL saida_LUI_REG : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ULAentradaA_RS : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaBanco_REG2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL entrada_REG_MUX : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL entrada_REG_MUX0 : STD_LOGIC_VECTOR (4 DOWNTO 0);

	-- ULA --
	SIGNAL ULAentradaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saida_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL seletor : STD_LOGIC_VECTOR(2 DOWNTO 0);

	-- UC --
	SIGNAL palavraControle_out : STD_LOGIC_VECTOR(16 DOWNTO 0);

	ALIAS BNE : STD_LOGIC IS palavraControle_out(16);
	ALIAS seletorLUI : STD_LOGIC IS palavraControle_out(15);
	ALIAS seletorORI : STD_LOGIC IS palavraControle_out(14);
	ALIAS ULAop : STD_LOGIC_VECTOR(2 DOWNTO 0) IS palavraControle_out(13 DOWNTO 11);
	ALIAS seletorMUX_JMP : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle_out(10 DOWNTO 9);

	ALIAS seletorMUX_RtRd : STD_LOGIC_VECTOR (1 DOWNTO 0) IS palavraControle_out(8 DOWNTO 7);
	ALIAS habilitaESCreg3 : STD_LOGIC IS palavraControle_out(6);
	ALIAS seletorMUX_RtImediato : STD_LOGIC IS palavraControle_out(5);
	ALIAS seletorULA_mem : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle_out(4 DOWNTO 3);
	ALIAS BEQ : STD_LOGIC IS palavraControle_out(2);
	ALIAS rd : STD_LOGIC IS palavraControle_out(1);
	ALIAS wr : STD_LOGIC IS palavraControle_out(0);
	-- EXTENSAO --
	SIGNAL saidaMUX_imediato : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaextensao : STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALIAS entradaExtensao : STD_LOGIC_VECTOR (15 DOWNTO 0) IS ROM_UC(15 DOWNTO 0);

	-- NAO SEI --
	SIGNAL saidaRegistradorRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL seletorJR : STD_LOGIC;

	-- ETAPA BUSCA

	-- 15 ~ 11  => rd
	-- 20 ~ 16  => rt
	-- 15 ~ 0   => instrucao
	-- 63 ~ 32  => unidade controle
	-- 63 ~ 32  => pc
	-- 32 ~ 0   => reg1
	-- 32 ~ 0   => reg2
	-- 32 ~ 0   => write register
	-- 63 ~ 32  => write daaa

BEGIN
	-- ETAPA BUSCA 
	selMUX_AND_BEQ <= (BEQ AND flagZero) OR (BNE AND NOT(flagZero));
	MUX_jump : ENTITY work.muxGenerico4x1 -- mux JMP
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => PC_MUX,
			entradaB_MUX => saida_SOMA_FIXA(31 DOWNTO 28) & imediato & "00",
			entradaC_MUX => ULAentradaA_RS,
			entradaD_MUX => b"00000000000000000000000000000000",
			seletor_MUX => seletorMUX_JMP,
			saida_MUX => PC_MUX_JUMP
		);

	PC : ENTITY work.registradorGenerico
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			DIN => PC_MUX_JUMP,
			DOUT => PC_ROM_INC,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);

	somadorPC : ENTITY work.somaConstante
		GENERIC MAP(larguraDados => 32, constante => 4)
		PORT MAP(
			entrada => PC_ROM_INC,
			saida => saida_SOMA_FIXA
		);

	ROM_mips : ENTITY work.ROMMIPS
		PORT MAP(
			clk => clk,
			Endereco => PC_ROM_INC,
			Dado => ROM_UC
		);

	etapaBusca : ENTITY work.registradorGenerico
		GENERIC MAP(
			larguraDados => 64
		)
		PORT MAP(
			DIN => saida_SOMA_FIXA & ROM_UC,
			DOUT => saida_ID,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);

	-- ETAPA DECODIFICAÇÃO

	UC : ENTITY work.UnidadeControleFD
		PORT MAP(
			clk => clk,
			opCode => opcode,
			JR => seletorJR,
			palavraControle => palavraControle_out
		);

	MUX_LUI : ENTITY work.muxGenerico2x1 --  mux lui
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => entrada_REG_MUX,
			entradaB_MUX => entradaExtensao & "0000000000000000",
			seletor_MUX => seletorLUI,
			saida_MUX => saida_LUI_REG
		);

	mux_lui_out <= seletorLUI;

	bancoRegistrador : ENTITY work.bancoRegistradores
		GENERIC MAP(
			larguraDados => 32, larguraEndBancoRegs => 5 -- 2^5 = 32 posicoes
		)
		PORT MAP(
			clk => clk,
			enderecoA => entradaA_RS,
			enderecoB => entradaB_RT,
			enderecoC => entrada_REG_MUX0,
			dadoEscritaC => saida_LUI_REG,
			escreveC => habilitaESCreg3,
			saidaA => ULAentradaA_RS,
			saidaB => saidaBanco_REG2
		);

	-- ETAPA EXECUCAO

	MUX0 : ENTITY work.muxGenerico4x1 -- mux entre ROM e banco
		GENERIC MAP(larguraDados => 5)
		PORT MAP(
			entradaA_MUX => entradaB_RT,
			entradaB_MUX => entradaC_RD,
			entradaC_MUX => b"11111",
			entradaD_MUX => b"00000",
			seletor_MUX => seletorMUX_RtRd,
			saida_MUX => entrada_REG_MUX0
		);

	etapaExecucao : ENTITY work.registradorGenerico
		GENERIC MAP(
			larguraDados =>
		)
		PORT MAP(
			DIN => saida_SOMA_FIXA & ROM_UC,
			DOUT => saida_ID,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);

	MUX1 : ENTITY work.muxGenerico2x1 -- mux entre banco de registrador e ula
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saidaBanco_REG2,
			entradaB_MUX => saidaMUX_imediato,
			seletor_MUX => seletorMUX_RtImediato,
			saida_MUX => ULAentradaB
		);

	UC_ULA : ENTITY work.unidadeControleULA
		PORT MAP(
			ULAop => ULAop,
			func => func,
			ULActrl => seletor,
			JR_ULA => seletorJR
		);

	MUX_ORI : ENTITY work.muxGenerico2x1
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saidaextensao,
			entradaB_MUX => "0000000000000000" & entradaExtensao,
			seletor_MUX => seletorORI,
			saida_MUX => saidaMUX_imediato
		);

	MUX_somador : ENTITY work.muxGenerico2x1 -- mux beq
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saida_SOMA_FIXA,
			entradaB_MUX => saida_SUM_MUX,
			seletor_MUX => selMUX_AND_BEQ,
			saida_MUX => PC_MUX
		);

	somador_somador : ENTITY work.somadorGenerico
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => saida_SOMA_FIXA,
			entradaB => saidaSHIFT_entradaSUM,
			saida => saida_SUM_MUX
		);

	LEFT_sinal_extendido : ENTITY work.shftLEFT
		PORT MAP(
			dataIN => saidaMUX_imediato,
			dataOUT => saidaSHIFT_entradaSUM
		);

	ULA : ENTITY work.ULA
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => ULAentradaA_RS,
			entradaB => ULAentradaB,
			saida => saida_ULA,
			seletor => seletor,
			flagZero => flagZero
		);

	inA_ULA <= ULAentradaA_RS;
	inB_ULA <= ULAentradaB;

	extensor : ENTITY work.estendeSinalGenerico
		GENERIC MAP(
			larguraDadoEntrada => 16,
			larguraDadoSaida => 32
		)
		PORT MAP(
			estendeSinal_IN => entradaExtensao,
			estendeSinal_OUT => saidaextensao
		);

	-- ETAPA WRITE BACK
	MUX2 : ENTITY work.muxGenerico4x1 -- mux entre banco e RAM
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saida_ULA,
			entradaB_MUX => barramento_leituraDados,
			entradaC_MUX => saida_SOMA_FIXA,
			entradaD_MUX => b"00000000000000000000000000000000",
			seletor_MUX => seletorULA_mem,
			saida_MUX => entrada_REG_MUX
		);

	barramento_endereco <= saida_ULA;
	barramentoDeEscritaDados <= saidaBanco_REG2;
	habilitaEscrita <= wr;
	habilitaLeitura <= rd;

	PC_out <= PC_ROM_INC;

	seletor_out <= seletor;

END ARCHITECTURE;