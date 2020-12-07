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
	  SW                  : in std_logic_vector(7 DOWNTO 0);
	  KEY						 : in std_logic_vector(3 DOWNTO 0);
	  
	  
	  PC_out_out : out std_logic_vector(31 DOWNTO 0);
	  barramentoEndout : out std_logic_vector(31 DOWNTO 0);
	  seletor_out_out : out std_logic_vector(2 DOWNTO 0);
	  inA_ULA :  out std_logic_vector(31 DOWNTO 0);
	inB_ULA :  out std_logic_vector(31 DOWNTO 0);	
	mux_lui : out std_logic
	 

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
	signal seletor_out : std_logic_vector(2 DOWNTO 0);
	SIGNAL clk : std_logic;

  
begin

	processador : entity work.processador
				port map (
					clk                      => CLOCK_50,
					barramento_leituraDados  => barramentoLeitura,
					barramento_endereco      => barramentoEndereco,
					barramentoDeEscritaDados => barramentoEscrita,
					habilitaEscrita          => wr,
					habilitaLeitura          => rd,
					PC_out => PC_out_out,
					seletor_out => seletor_out,
					inA_ULA => inA_ULA,
					inB_ULA => inB_ULA,
					mux_lui_out => mux_lui
					
				);

		
	RAM_mips : entity work.RAMMIPS
				port map (
					clk      => CLOCK_50,
					Endereco => barramentoEndereco ,
					Dado_in  => barramentoEscrita ,
					Dado_out => barramentoLeitura,
					wr       => wr,
					rd       => rd
							);
							
	
	edge: entity work.edgeDetector
				port map(
					clk    => CLOCK_50,
              entrada => (not KEY(0)),
              saida   => clk);
				);
				
	display0 : entity work.conversorHex7Seg
				port map(
					 dadoHex => ,
					 apaga   => , 
                negativo => , 
                overFlow => ,
                -- Output ports
                saida7seg => 
				
				);
				
	
							
	  barramentoEndout <= barramentoEndereco;
	  seletor_out_out <= seletor_out;

end architecture;