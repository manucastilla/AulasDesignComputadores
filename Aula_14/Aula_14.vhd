library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula_14 is
  generic   (
    DATA_WIDTH  : natural :=  32;
    ADDR_WIDTH  : natural :=  32
  );

  port   (
     CLOCK_50            : in  std_logic;
	  PC_out_out : out std_logic_vector(31 DOWNTO 0);
	  saida_ULA_out_out : out std_logic_vector(31 DOWNTO 0);
	  saidaBanco_REG2_out_out : out std_logic_vector(31 DOWNTO 0);
	  seletor_out_out : out std_logic_vector(31 DOWNTO 0)
	 

  );
end entity;


architecture arch_name of Aula_14 is
	signal entradaRAM_REG2      : std_logic_vector(31 DOWNTO 0);
	
	signal saidaRAM_MUX        : std_logic_vector(31 DOWNTO 0);
	signal entradaRAM          : std_logic_vector(31 DOWNTO 0);

	signal palavraControle     : std_logic_vector(31 DOWNTO 0);
	signal wr                  : std_logic;
	signal rd                  : STD_LOGIC;
	signal PC_out				 : std_logic_vector(31 DOWNTO 0);
	signal saida_ULA_out : std_logic_vector(31 DOWNTO 0);
	signal saidaBanco_REG2_out : std_logic_vector(31 DOWNTO 0);
	signal seletor_out : std_logic_vector(2 DOWNTO 0);

  
begin

	processador : entity work.processador
				port map (
					clk                      => CLOCK_50,
					barramento_leituraDados  => saidaRAM_MUX,
					barramento_endereco      => entradaRAM,
					barramentoDeEscritaDados => entradaRAM_REG2,
					habilitaEscrita          => wr,
					habilitaLeitura          => rd,
					PC_out => PC_out,
					saida_ULA_out => saida_ULA_out,
					saidaBanco_REG2_out => saidaBanco_REG2_out,
					seletor_out => seletor_out
					
					
				);

		


	RAM_mips : entity work.RAMMIPS
				port map (
					clk      => CLOCK_50,
					Endereco => entradaRAM ,
					Dado_in  => entradaRAM_REG2 ,
					Dado_out => saidaRAM_MUX,
					wr       => wr,
					rd       => rd
							);
							
							
	PC_out_out <= PC_out;
	  saida_ULA_out_out <= saida_ULA_out;
	  saidaBanco_REG2_out_out <= saidaBanco_REG2_out;
	  seletor_out_out <= seletor_out;

end architecture;