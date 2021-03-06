library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_A_project is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );

  port   (
     CLOCK_50            : in  std_logic;
	  SW                  : in std_logic_vector(2 DOWNTO 0);
	  KEY						 : in std_logic_vector(1 DOWNTO 0);
	  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	  
	  
	  --PC_out_out : out std_logic_vector(31 DOWNTO 0);
	  --barramentoEndout : out std_logic_vector(31 DOWNTO 0);
	  --seletor_out_out : out std_logic_vector(2 DOWNTO 0);
	  --inA_ULA :  out std_logic_vector(31 DOWNTO 0);
	--inB_ULA :  out std_logic_vector(31 DOWNTO 0);	
	--mux_lui_OUT : out std_logic_vector(31 DOWNTO 0)
	 

  );
end entity;


architecture arch_name of MIPS_A_project is
	signal barramentoEscrita      : std_logic_vector(31 DOWNTO 0);
	
	signal barramentoLeitura        : std_logic_vector(31 DOWNTO 0);
	signal barramentoEndereco          : std_logic_vector(31 DOWNTO 0);

	signal palavraControle     : std_logic_vector(31 DOWNTO 0);
	signal wr                  : std_logic;
	signal rd                  : STD_LOGIC;
	signal saidaBanco_REG2_out : std_logic_vector(31 DOWNTO 0);
	
	SIGNAL clk : std_logic;
	SIGNAL display : std_logic_vector(23 downto 0);
	SIGNAL PC_out_out : std_logic_vector(31 DOWNTO 0);
	SIGNAL barramentoEndout : std_logic_vector(31 DOWNTO 0);
	SIGNAL mux_lui_OUT : std_logic_vector(31 DOWNTO 0);

  
begin

	processador : entity work.processador
				port map (
					clk                      => clk,
					barramento_leituraDados  => barramentoLeitura,
					barramento_endereco      => barramentoEndereco,
					barramentoDeEscritaDados => barramentoEscrita,
					habilitaEscrita          => wr,
					habilitaLeitura          => rd,
					PC_out => PC_out_out,
					mux_lui_out => mux_lui_OUT
					
				);

		
	RAM_mips : entity work.RAMMIPS
				port map (
					clk      => clk,
					Endereco => barramentoEndereco ,
					Dado_in  => barramentoEscrita ,
					Dado_out => barramentoLeitura,
					wr       => wr,
					rd       => rd
							);
							
	display <= PC_out_out(23 downto 0) WHEN SW = "000" ELSE
		barramentoEndout(23 downto 0) WHEN SW = "001" ELSE
		mux_lui_OUT(23 downto 0) WHEN SW = "010" ELSE
		x"000000";
														
	
	edge: entity work.edgeDetector
				port map(
					clk    => CLOCK_50,
              entrada => (not KEY(0)),
              saida   => clk
				);
	
				
	display0 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(3 downto 0),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX0 
				
				);
	display1 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(7 downto 4),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX1 
				
				);
	display2 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(11 downto 8),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX2 
				
				);
	display3 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(15 downto 12),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX3 
				
				);
	display4 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(19 downto 16),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX4 
				
				);
	display5 : entity work.conversorHex7Seg
				port map(
					 dadoHex => display(23 downto 20),
					 apaga   => '0', 
                negativo => '0', 
                overFlow => '0',
                -- Output ports
                saida7seg => HEX5 
				
				);
				
	
							
	  barramentoEndout <= barramentoEndereco;

end architecture;