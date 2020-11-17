library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_A is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );

  port   (
     CLOCK_50            : in  std_logic;
	  PC_out_out : out std_logic_vector(31 DOWNTO 0);
	  barramentoEndout : out std_logic_vector(31 DOWNTO 0);
	  seletor_out_out : out std_logic_vector(2 DOWNTO 0)
	 

  );
end entity;


architecture arch_name of MIPS_A is
	signal barramentoEscrita      : std_logic_vector(31 DOWNTO 0);
	
	signal barramentoLeitura        : std_logic_vector(31 DOWNTO 0);
	signal barramentoEndereco          : std_logic_vector(31 DOWNTO 0);

	signal palavraControle     : std_logic_vector(31 DOWNTO 0);
	signal wr                  : std_logic;
	signal rd                  : STD_LOGIC;
	signal PC_out				 : std_logic_vector(31 DOWNTO 0);
	signal saidaBanco_REG2_out : std_logic_vector(31 DOWNTO 0);
	signal seletor_out : std_logic_vector(2 DOWNTO 0);

  
begin

	processador : entity work.processador
				port map (
					clk                      => CLOCK_50,
					barramento_leituraDados  => barramentoLeitura,
					barramento_endereco      => barramentoEndereco,
					barramentoDeEscritaDados => barramentoEscrita,
					habilitaEscrita          => wr,
					habilitaLeitura          => rd,
					PC_out => PC_out,
					seletor_out => seletor_out
					
					
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
							
							
	  PC_out_out <= PC_out;
	  barramentoEndout <= barramentoEndereco;
	  seletor_out_out <= seletor_out;

end architecture;