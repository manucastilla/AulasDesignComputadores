LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MIPS_pipeline IS
	GENERIC (
		DATA_WIDTH : NATURAL := 32;
		ADDR_WIDTH : NATURAL := 32
	);

	PORT (
		-- Input ports
		CLOCK_50 : IN STD_LOGIC;

		barramento_endereco : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		dado_escrito_RAM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		escritaC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		wr_out : OUT STD_LOGIC;
		wr_reg_banco : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)

	);
END ENTITY;
ARCHITECTURE arch_name OF MIPS_pipeline IS

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
	-- ULA --
	SIGNAL ULAentradaB : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saida_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL seletor : STD_LOGIC_VECTOR(2 DOWNTO 0);
	-- UC --
	SIGNAL palavraControle_out : STD_LOGIC_VECTOR(16 DOWNTO 0);
	ALIAS seletorLUI : STD_LOGIC IS palavraControle_out(16);
	ALIAS seletorORI : STD_LOGIC IS palavraControle_out(15);
	ALIAS ULAop : STD_LOGIC_VECTOR(2 DOWNTO 0) IS palavraControle_out(14 DOWNTO 12);
	ALIAS seletorMUX_JMP : STD_LOGIC_VECTOR(1 DOWNTO 0) IS palavraControle_out(11 DOWNTO 10);

	-- EXTENSAO --
	SIGNAL saidaMUX_imediato : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaextensao : STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALIAS entradaExtensao : STD_LOGIC_VECTOR (15 DOWNTO 0) IS ROM_UC(15 DOWNTO 0);

	-- NAO SEI --
	SIGNAL saidaRegistradorRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaRAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL seletorJR : STD_LOGIC;

	-- IF/ID
	SIGNAL IFID_OUT : STD_LOGIC_VECTOR(63 DOWNTO 0);
	ALIAS ROM_UC_out : STD_LOGIC_VECTOR(31 DOWNTO 0) IS IFID_OUT(63 DOWNTO 32);
	ALIAS PC_MAIS4 : STD_LOGIC_VECTOR (31 DOWNTO 0) IS IFID_OUT(31 DOWNTO 0); -- Proximo PC

	-- alias da instrucao
	ALIAS opcode : STD_LOGIC_VECTOR (5 DOWNTO 0) IS ROM_UC_out(31 DOWNTO 26);
	ALIAS entradaA_RS : STD_LOGIC_VECTOR (4 DOWNTO 0) IS ROM_UC_out(25 DOWNTO 21);
	ALIAS entradaB_RT : STD_LOGIC_VECTOR (4 DOWNTO 0) IS ROM_UC_out(20 DOWNTO 16);
	ALIAS entradaC_RD : STD_LOGIC_VECTOR (4 DOWNTO 0) IS ROM_UC_out(15 DOWNTO 11);
	ALIAS imediato : STD_LOGIC_VECTOR (25 DOWNTO 0) IS ROM_UC_out(25 DOWNTO 0);

	-- ID/EX
	SIGNAL IDEX_OUT : STD_LOGIC_VECTOR(150 DOWNTO 0);
	ALIAS BEQ : STD_LOGIC IS IDEX_OUT(150);
	ALIAS BNE : STD_LOGIC IS IDEX_OUT(149);
	ALIAS WB_M_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0) IS IDEX_OUT(148 DOWNTO 144); -- porque 5
	ALIAS seletorMUX_RtRd : STD_LOGIC_VECTOR (1 DOWNTO 0) IS IDEX_OUT(143 DOWNTO 142);
	ALIAS ULAop_IDEX : STD_LOGIC_VECTOR(2 DOWNTO 0) IS IDEX_OUT(141 DOWNTO 139);
	ALIAS seletorMUX_RtImediato : STD_LOGIC IS IDEX_OUT(138);
	ALIAS saidaIDEX_Somador : STD_LOGIC_VECTOR (31 DOWNTO 0) IS IDEX_OUT(137 DOWNTO 106);
	ALIAS saidaIDEX_ULA : STD_LOGIC_VECTOR (31 DOWNTO 0) IS IDEX_OUT(105 DOWNTO 74);
	ALIAS saidaIDEX_MUX_imediato : STD_LOGIC_VECTOR (31 DOWNTO 0) IS IDEX_OUT(73 DOWNTO 42);
	ALIAS saidaIDEX_shiftleft : STD_LOGIC_VECTOR (31 DOWNTO 0) IS IDEX_OUT(41 DOWNTO 10);
	ALIAS saidaIDEX_RD : STD_LOGIC_VECTOR (4 DOWNTO 0) IS IDEX_OUT(9 DOWNTO 5);
	ALIAS saidaIDEX_RT : STD_LOGIC_VECTOR (4 DOWNTO 0) IS IDEX_OUT(4 DOWNTO 0);

	ALIAS func : STD_LOGIC_VECTOR (5 DOWNTO 0) IS saidaIDEX_shiftleft(5 DOWNTO 0);
	-- EX/MEM
	SIGNAL EXMEM_OUT : STD_LOGIC_VECTOR(105 DOWNTO 0);

	ALIAS WB_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0) IS EXMEM_OUT(105 DOWNTO 103);
	ALIAS rd : STD_LOGIC IS EXMEM_OUT(102);
	ALIAS wr : STD_LOGIC IS EXMEM_OUT(101);
	ALIAS PC_4_EXMEM_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0) IS EXMEM_OUT(100 DOWNTO 69);
	ALIAS barramentoEnd : STD_LOGIC_VECTOR(31 DOWNTO 0) IS EXMEM_OUT(68 DOWNTO 37);
	ALIAS barramentoEscrita : STD_LOGIC_VECTOR(31 DOWNTO 0) IS EXMEM_OUT(36 DOWNTO 5);
	ALIAS rd_MemWB : STD_LOGIC_VECTOR(4 DOWNTO 0) IS EXMEM_OUT(4 DOWNTO 0);

	SIGNAL barramentoLeitura : STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- MEM/WB
	SIGNAL MEMWB_OUT : STD_LOGIC_VECTOR(103 DOWNTO 0);
	ALIAS entradaA_MemREG : STD_LOGIC_VECTOR(31 DOWNTO 0) IS MEMWB_OUT(103 DOWNTO 72);
	ALIAS entradaB_MemREG : STD_LOGIC_VECTOR(31 DOWNTO 0) IS MEMWB_OUT(71 DOWNTO 40);
	ALIAS entradaC_MemREG : STD_LOGIC_VECTOR(31 DOWNTO 0) IS MEMWB_OUT(39 DOWNTO 8);
	ALIAS rd_MemREG : STD_LOGIC_VECTOR(4 DOWNTO 0) IS MEMWB_OUT(7 DOWNTO 3);
	ALIAS seletorULA_mem : STD_LOGIC_VECTOR(1 DOWNTO 0) IS MEMWB_OUT(2 DOWNTO 1);
	ALIAS habilitaESCreg3_MEMWB_OUT : STD_LOGIC IS MEMWB_OUT(0);

	SIGNAL memREG_Lui : STD_LOGIC_VECTOR(31 DOWNTO 0);

	ALIAS saidaIDEX_ULACONTROL : STD_LOGIC_VECTOR(5 DOWNTO 0) IS saidaIDEX_shiftleft(5 DOWNTO 0);

	-- sinais
	SIGNAL saida_LUI_REG : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saidaBanco_REG2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ULAentradaA_RS : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL entrada_REG_MUX0 : STD_LOGIC_VECTOR (4 DOWNTO 0);
	SIGNAL clk : STD_LOGIC;

BEGIN

	clk <= CLOCK_50;

	-- ETAPA BUSCA 
	MUX_jump : ENTITY work.muxGenerico4x1 -- mux JMP
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => PC_MUX,
			entradaB_MUX => saida_SOMA_FIXA(31 DOWNTO 28) & imediato & "00",
			entradaC_MUX => saidaIDEX_ULA,
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
	-- REGISTRADOR IF/ID
	etapaBusca : ENTITY work.registradorGenerico
		GENERIC MAP(
			larguraDados => 64
		)
		PORT MAP(
			DIN => saida_SOMA_FIXA & ROM_UC,
			DOUT => IFID_OUT,
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

	bancoRegistrador : ENTITY work.bancoRegistradores
		GENERIC MAP(
			larguraDados => 32, larguraEndBancoRegs => 5 -- 2^5 = 32 posicoes
		)
		PORT MAP(
			clk => clk,
			enderecoA => entradaA_RS,
			enderecoB => entradaB_RT,
			enderecoC => rd_MemREG,
			dadoEscritaC => saida_LUI_REG,
			escreveC => habilitaESCreg3_MEMWB_OUT,
			saidaA => ULAentradaA_RS,
			saidaB => saidaBanco_REG2
		);

	extensor : ENTITY work.estendeSinalGenerico
		GENERIC MAP(
			larguraDadoEntrada => 16,
			larguraDadoSaida => 32
		)
		PORT MAP(
			estendeSinal_IN => entradaExtensao,
			estendeSinal_OUT => saidaextensao
		);

	MUX_LUI : ENTITY work.muxGenerico2x1 --  mux lui
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => memREG_Lui,
			entradaB_MUX => entradaExtensao & "0000000000000000",
			seletor_MUX => seletorLUI,
			saida_MUX => saida_LUI_REG
		);
	MUX_ORI : ENTITY work.muxGenerico2x1
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saidaextensao,
			entradaB_MUX => "0000000000000000" & entradaExtensao,
			seletor_MUX => seletorORI,
			saida_MUX => saidaMUX_imediato
		);

	selMUX_AND_BEQ <= (BEQ AND flagZero) OR (BNE AND NOT(flagZero));

	-- REGISTRADOR ID/EX -- 10 + 32 +32 + 32 + 32 + 5 + 5 
	-- (9 => muxrtrd(2), habEscritaR, RtImediato, UlaOp(3), BEQ, BNE)
	REG_ID : ENTITY work.registradorGenerico
		GENERIC MAP(larguraDados => 151)
		PORT MAP(
			DIN => ULAop & palavraControle_out(9 DOWNTO 0) & PC_MAIS4 & ULAentradaA_RS
			& saidaBanco_REG2 & saidaMUX_imediato & entradaB_RT & entradaC_RD,
			DOUT => IDEX_OUT,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);
	-- ETAPA EXECUCAO

	somador_somador : ENTITY work.somadorGenerico
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => saidaIDEX_Somador,
			entradaB => saidaSHIFT_entradaSUM,
			saida => saida_SUM_MUX
		);

	LEFT_sinal_extendido : ENTITY work.shftLEFT
		PORT MAP(
			dataIN => saidaIDEX_shiftleft,
			dataOUT => saidaSHIFT_entradaSUM
		);

	ULA : ENTITY work.ULA
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => saidaIDEX_ULA,
			entradaB => ULAentradaB,
			saida => saida_ULA,
			seletor => seletor,
			flagZero => flagZero
		);
	mux_RT_imediato : ENTITY work.muxGenerico2x1 -- mux entre banco de registrador e ula
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saidaIDEX_MUX_imediato,
			entradaB_MUX => saidaIDEX_shiftleft,
			seletor_MUX => seletorMUX_RtImediato,
			saida_MUX => ULAentradaB
		);
	UC_ULA : ENTITY work.unidadeControleULA
		PORT MAP(
			ULAop => ULAop_IDEX,
			func => saidaIDEX_ULACONTROL,
			ULActrl => seletor,
			JR_ULA => seletorJR
		);

	mux_RT_RD : ENTITY work.muxGenerico4x1 -- mux entre ROM e banco
		GENERIC MAP(larguraDados => 5)
		PORT MAP(
			entradaA_MUX => saidaIDEX_RT,
			entradaB_MUX => saidaIDEX_RD,
			entradaC_MUX => b"11111",
			entradaD_MUX => b"00000",
			seletor_MUX => seletorMUX_RtRd,
			saida_MUX => entrada_REG_MUX0
		);

	MUX_BEQ : ENTITY work.muxGenerico2x1 -- mux beq
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saida_SOMA_FIXA,
			entradaB_MUX => saida_SUM_MUX,
			seletor_MUX => selMUX_AND_BEQ,
			saida_MUX => PC_MUX
		);

	-- REGISTRADOR EX/MEM
	-- 1 + 1 + 1 + 1 + 5 + 32 + 32 + 32
	REG_EX : ENTITY work.registradorGenerico
		GENERIC MAP(larguraDados => 106)
		PORT MAP(
			DIN => WB_M_OUT &
			saidaIDEX_Somador & saida_ULA & saidaIDEX_MUX_imediato
			& entrada_REG_MUX0,
			DOUT => EXMEM_OUT,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);

	-- ETAPA MEMORY
	RAM_mips : ENTITY work.RAMMIPS
		PORT MAP(
			clk => Clk,
			Endereco => barramentoEnd,
			Dado_in => barramentoEscrita,
			Dado_out => barramentoLeitura,
			wr => wr,
			rd => rd
		);

	-- registrador MEM/WB
	-- 3  + 32 + 32 + 32 + 5 
	REG_MEM : ENTITY work.registradorGenerico
		GENERIC MAP(larguraDados => 104)
		PORT MAP(
			DIN => WB_OUT & PC_4_EXMEM_OUT & barramentoLeitura
			& barramentoEnd & rd_MemWB,
			DOUT => MEMWB_OUT,
			ENABLE => '1',
			CLK => clk,
			RST => '0'
		);

	-- ETAPA WRITE BACK
	MUX_ula_mem : ENTITY work.muxGenerico4x1 -- mux entre banco e RAM
		GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA_MUX => entradaA_MemREG,
			entradaB_MUX => entradaB_MemREG,
			entradaC_MUX => entradaC_MemREG,
			entradaD_MUX => b"00000000000000000000000000000000",
			seletor_MUX => seletorULA_mem,
			saida_MUX => memREG_Lui
		);

	barramento_endereco <= saida_ULA;
	wr_out <= wr;
	dado_escrito_RAM <= saidaIDEX_MUX_imediato;
	escritaC_out <= saida_LUI_REG;
	PC_out <= PC_ROM_INC;
	wr_reg_banco <= rd_MemREG;
END ARCHITECTURE;