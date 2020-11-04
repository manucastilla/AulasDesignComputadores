library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula_16_17 is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    enable  : in  std_logic;
    clk     : in  std_logic;
    <name>  : in  <type> := <default_value>;

    -- Inout ports
    <name>  : inout <type>;

    -- Output ports
    dataOUT :  out  std_logic_vector(DATA_WIDTH-1 downto 0);
    <name>  : out <type> := <default_value>
  );
end entity;


architecture arch_name of Aula_16_17 is

  signal signalB        : std_logic_vector(31 DOWNTO 0);
  signal signalA        : std_logic_vector(31 DOWNTO 0);
  signal saidaInvertB   : std_logic_vector(31 DOWNTO 0);
  signal entradadaSUBADD: std_logic_vector(31 DOWNTO 0);
  signal seletorInvertB : std_logic;

begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  MUX_invertB :  entity work.muxGenerico2x1  
        generic map (larguraDados => 32)
        port map(
                 entradaA_MUX => signalB,
                 entradaB_MUX =>  not(signalB),
                 seletor_MUX => seletorInvertB,
                 saida_MUX => saidaInvertB
                );

  
  MUX_ULA : entity work.muxGenericoXx1
        generic map (larguraDados => 32)
        port map(
                entradaA_MUX => ,
                entradaB_MUX => ,
                entradaC_MUX => ,
                entradaD_MUX => ,
                seletor_MUX  => ,
                saida_MUX    =>

        );

end architecture;