library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula02_manuela is
  generic   (
    larguraDados  : natural :=  8;

  );

  port   (
    SW      : in  std_logic_vector(9 downto 0);
	 KEY     : in  std_logic_vector(3 downto 0);
	 LEDR    : out std_logic_vector(9 downto 0);
	 
    CLOCK_50     : in  std_logic;
	 FPGA_RESET_N     : in  std_logic
  );
end entity;


architecture arch_name of Aula02_manuela is

  -- Declarations (optional):
  signal regCLK, resetA, resetB : std_logic;
  -- signal <name> : std_logic_vector(<msb_index> downto <lsb_index>);
  -- constant FUNCT_WIDTH : natural := 6;
  -- subtype funct_t  is  std_logic_vector(FUNCT_WIDTH-1 downto 0);
  -- constant functADD   : funct_t := "100000";
  -- constant functSUB   : funct_t := "100010";
  -- alias memWRsignal: std_logic is controlWord(0);
  -- alias ulaOPvalue:  std_logic_vector(1 downto 0) is controlWord(5 downto 4);

begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
 detectorCLK:  entity work.edgeDetector generic map ( clk => CLOCK_50, entrada => FPGA_RESET_N, saida => regCLK)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

end architecture;