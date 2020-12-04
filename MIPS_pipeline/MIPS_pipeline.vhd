LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MIPS_PIPELINE IS
	GENERIC (
		DATA_WIDTH : NATURAL := 32;
		ADDR_WIDTH : NATURAL := 32
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC;
		PC_out_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		barramentoEndout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		seletor_out_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		inA_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		inB_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		mux_lui : OUT STD_LOGIC
	);
END ENTITY;
ARCHITECTURE arch_name OF MIPS_PIPELINE IS
	SIGNAL barramentoEscrita : STD_LOGIC_VECTOR(31 DOWNTO 0);

	SIGNAL barramentoLeitura : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL barramentoEndereco : STD_LOGIC_VECTOR(31 DOWNTO 0);

	SIGNAL palavraControle : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL wr : STD_LOGIC;
	SIGNAL rd : STD_LOGIC;
	SIGNAL saidaBanco_REG2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL seletor_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN

	processador : ENTITY work.processador
		PORT MAP(
			clk => CLOCK_50,
			barramento_leituraDados => barramentoLeitura,
			barramento_endereco => barramentoEndereco,
			barramentoDeEscritaDados => barramentoEscrita,
			habilitaEscrita => wr,
			habilitaLeitura => rd,
			PC_out => PC_out_out,
			seletor_out => seletor_out,
			inA_ULA => inA_ULA,
			inB_ULA => inB_ULA,
			mux_lui_out => mux_lui

		);

	-- ETAPA MEMÓRIA

	RAM_mips : ENTITY work.RAMMIPS
		PORT MAP(
			clk => CLOCK_50,
			Endereco => barramentoEndereco,
			Dado_in => barramentoEscrita,
			Dado_out => barramentoLeitura,
			wr => wr,
			rd => rd
		);
	barramentoEndout <= barramentoEndereco;
	seletor_out_out <= seletor_out;

END ARCHITECTURE;