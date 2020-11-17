library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );

  port   (
    -- Input ports
   clk                      : in  std_logic;
	barramento_leituraDados  : in std_logic_vector(31 DOWNTO 0);

	barramento_endereco      : out std_logic_vector(31 DOWNTO 0);
	barramentoDeEscritaDados : out std_logic_vector(31 DOWNTO 0);
	habilitaEscrita          : out std_logic;
	habilitaLeitura          : out std_logic;
	
	PC_out				: out std_logic_vector(31 DOWNTO 0);
	saida_ULA_out       : out std_logic_vector(31 DOWNTO 0);
	saidaBanco_REG2_out : out std_logic_vector(31 DOWNTO 0);
	seletor_out  : out std_logic_vector(2 DOWNTO 0)
	
  );
end entity;


architecture arch_name of processador is

	-- ULA --
	SIGNAL flagZero               : std_logic;

	-- MUX SOMADOR --
	SIGNAL saida_SOMA_FIXA     : std_logic_vector(31 DOWNTO 0);
	SIGNAL saida_SUM_MUX      : std_logic_vector(31 DOWNTO 0);
	SIGNAL selMUX_AND_BEQ     : std_logic;

	-- SOMADOR VARIVAEL --
	SIGNAL 	saidaSHIFT_entradaSUM	: std_logic_vector(31 DOWNTO 0);

	-- SOMADOR PC --
	--SIGNAL PC_MUX                 : std_logic_vector(31 DOWNTO 0);
	SIGNAL PC_ROM_INC             : std_logic_vector(31 DOWNTO 0);
	SIGNAL PC_MUX              : std_logic_vector(31 DOWNTO 0);
	SIGNAL PC_MUX_JUMP            : std_logic_vector(31 DOWNTO 0);

	-- ROM MIPS --
	SIGNAL ROM_UC                 : std_logic_vector(31 DOWNTO 0);
	


	-- BANCO DE REGISTRADOR --
	SIGNAL ULAentradaA_RS         : std_logic_vector(31 DOWNTO 0);
	SIGNAL saidaBanco_REG2        : std_logic_vector(31 DOWNTO 0);
	SIGNAL entrada_REG_MUX        : std_logic_vector(31 DOWNTO 0);
	ALIAS entradaA_RS         	   : std_logic_vector (4 DOWNTO 0) IS ROM_UC(25 DOWNTO 21);
	ALIAS entradaB_RT         	   : std_logic_vector (4 DOWNTO 0) IS ROM_UC(20 DOWNTO 16);
	ALIAS entradaC_RD        	   : std_logic_vector (4 DOWNTO 0) IS ROM_UC(15 DOWNTO 11);
	SIGNAL entrada_REG_MUX0       : std_logic_vector (4 DOWNTO 0);

	-- ULA --
	SIGNAL ULAentradaB             : std_logic_vector(31 DOWNTO 0);
	SIGNAL saida_ULA               : std_logic_vector(31 DOWNTO 0);
	SIGNAL seletor               : std_logic_vector(2 DOWNTO 0);
	
	-- UC --
	SIGNAL palavraControle_out    : std_logic_vector(9 DOWNTO 0);

	ALIAS ULAop                  : std_logic_vector(1 DOWNTO 0) IS palavraControle_out(9 DOWNTO 8);          
	ALIAS seletorMUX_JMP         : std_logic IS palavraControle_out(7);    
	ALIAS seletorMUX_RtRd        : std_logic IS palavraControle_out(6); 
	ALIAS habilitaESCreg3        : std_logic IS palavraControle_out(5);  
	ALIAS seletorMUX_RtImediato  : std_logic IS palavraControle_out(4);  
	ALIAS seletorULA_mem         : std_logic IS palavraControle_out(3);   
	ALIAS BEQ                    : std_logic IS palavraControle_out(2);       
	ALIAS rd          : std_logic IS palavraControle_out(1);       
	ALIAS wr          : std_logic IS palavraControle_out(0);       
 

	ALIAS opcode            	   : std_logic_vector (31 DOWNTO 26) IS ROM_UC(31 DOWNTO 26);
	ALIAS func            	      : std_logic_vector (5 DOWNTO 0) IS ROM_UC(5 DOWNTO 0);
	ALIAS imediato                : std_logic_vector (25 DOWNTO 0) IS ROM_UC(25 DOWNTO 0);	

	-- EXTENSAO --
	SIGNAL MUXentradaB_extensao   : std_logic_vector(31 DOWNTO 0);
	ALIAS entradaExtensao		   : std_logic_vector (15 DOWNTO 0) IS ROM_UC(15 DOWNTO 0);
	
	-- NAO SEI --
	SIGNAL saidaRegistradorRAM    : std_logic_vector(31 DOWNTO 0);
	SIGNAL saidaRAM               : std_logic_vector(31 DOWNTO 0);


begin

	LEFT_sinal_externo: entity work.shftLEFT
			port map(
				dataIN  => MUXentradaB_extensao ,
				dataOUT => saidaSHIFT_entradaSUM
			) ;
	

	somador_somador : entity work.somadorGenerico
			generic map (larguraDados => 32)
			port map( 
				entradaA => saida_SOMA_FIXA, 
				entradaB =>  saidaSHIFT_entradaSUM, 
				saida => saida_SUM_MUX
			);

	selMUX_AND_BEQ <= BEQ AND flagZero;
	
	MUX_somador : entity work.muxGenerico2x1 				-- mux entre somador e pc
			generic map(larguraDados => 32)
			port map(
				entradaA_MUX => saida_SOMA_FIXA, 
				entradaB_MUX => saida_SUM_MUX ,
				seletor_MUX => selMUX_AND_BEQ, 
				saida_MUX    => PC_MUX
			);

	

	MUX_jump  : entity work.muxGenerico2x1 				-- mux JMP
			generic map(larguraDados => 32)
			port map(
				entradaA_MUX => PC_MUX, 
				entradaB_MUX =>  saida_SOMA_FIXA(31 DOWNTO 28) & imediato  & b"00",
				seletor_MUX => seletorMUX_JMP , 
				saida_MUX    => PC_MUX_JUMP
			);

	PC : entity work.registradorGenerico   
				generic map (larguraDados => 32)
				port map (
					DIN => PC_MUX_JUMP, 
					DOUT => PC_ROM_INC, 
					ENABLE => '1', 
					CLK => clk, 
					RST => '0'
				);

	somadorPC : entity work.somaConstante  
				generic map (larguraDados => 32, constante => 4)
				port map( 
					entrada => PC_ROM_INC, 
					saida => saida_SOMA_FIXA
				);
							
	ROM_mips: entity work.ROMMIPS
				port map(
					clk => clk,
					Endereco => PC_ROM_INC,
					Dado => ROM_UC
				);

	MUX0: entity work.muxGenerico2x1 				-- mux entre ROM e banco
				generic map(larguraDados => 5)
				port map(
					entradaA_MUX => entradaB_RT, 
					entradaB_MUX => entradaC_RD ,
					seletor_MUX => seletorMUX_RtRd, 
    				saida_MUX    => entrada_REG_MUX0
				);
	
	UC: entity work.UnidadeControleFD
				port map(
					clk => clk,
					opCode => opcode,
					palavraControle => palavraControle_out
				);

	
	bancoRegistrador : entity work.bancoRegistradores   
				generic map (
					larguraDados => 32, larguraEndBancoRegs => 5 -- 2^5 = 32 posicoes
					)	 
				port map ( 
					clk => clk,
					enderecoA      => entradaA_RS,
					enderecoB      => entradaB_RT,
					enderecoC      => entrada_REG_MUX0,
					dadoEscritaC   => entrada_REG_MUX, -- nao entra mais aqui
					escreveC       => habilitaESCreg3,
					saidaA         => ULAentradaA_RS,
					saidaB         => saidaBanco_REG2
				);
	
	

	MUX1: entity work.muxGenerico2x1 				-- mux entre banco de registrador e ula
				generic map(larguraDados => 32)
				port map(
					entradaA_MUX => saidaBanco_REG2, 
					entradaB_MUX => MUXentradaB_extensao,
					seletor_MUX => seletorMUX_RtImediato, 
    				saida_MUX    => ULAentradaB
				);

	UC_ULA: entity work.unidadeControleULA 
				port map(
					ULAop => ULAop,
					func => func,
					ULActrl => seletor
				);

	ULA : entity work.ULA  
				generic map(larguraDados => 32)
				port map (
					entradaA => ULAentradaA_RS, 
					entradaB =>  ULAentradaB,
					saida => saida_ULA, 
					seletor => seletor, 
					flagZero => flagZero
				);
				
	
	MUX2 : entity work.muxGenerico2x1 				-- mux entre banco e memoria de dados
				generic map(larguraDados => 32)
				port map(
					entradaA_MUX => saida_ULA, 
					entradaB_MUX => barramento_leituraDados, -- --talvez aqui
					seletor_MUX => seletorULA_mem, 
    				saida_MUX    => entrada_REG_MUX
				);
				
	extensor : entity work.estendeSinalGenerico
				generic map(
					larguraDadoEntrada => 16,
					larguraDadoSaida => 32
					)
				port map (
					estendeSinal_IN  => entradaExtensao,
					estendeSinal_OUT => MUXentradaB_extensao
				);
	
	barramento_endereco   <= saida_ULA;
	barramentoDeEscritaDados <= saidaBanco_REG2;
	habilitaEscrita          <= wr; 
	habilitaLeitura          <= rd; 
	
	PC_out                   <= PC_ROM_INC;
	saidaBanco_REG2_out <=	saidaBanco_REG2;
	saida_ULA_out <= saida_ULA;
	seletor_out <= seletor;
	
	end architecture;