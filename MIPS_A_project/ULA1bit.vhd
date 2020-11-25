library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA1bit is

  port   (
    -- Input ports
    seletor  :  in  std_logic_vector(2 downto 0);
    vemUM    :  in std_logic;
    signalB :  in std_logic;
    signalA :  in std_logic;
    signalLESS: in std_logic;
    vaiUM    :  out std_logic;
    overflow : out std_logic;
    set      : out std_logic;
    saidaULA : out std_logic

  
    
  );
end entity;


architecture arch_name of ULA1bit is

  
  signal saidaInvertB   : std_logic;
  signal signalADDSUB   : std_logic;
  signal signalOR       : std_logic;
  signal signalAND      : std_logic;
  signal signalvaiUM    : std_logic;

  

begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  MUX_invertB :  entity work.muxGenerico2x1  
        port map(
                 entradaB_MUX =>  not(signalB),
                 seletor_MUX => seletor(2),
                 saida_MUX => saidaInvertB
                );

  signalAND <= saidaInvertB AND signalA;
  signalOR  <= saidaInvertB OR signalA;
  signalADDSUB <= (saidaInvertB XOR signalA) XOR vemUM;
  
  
  signalvaiUM <= ((signalA XOR saidaInvertB) AND vemUM) OR (signalA AND saidaInvertB) ;
  
  set <= signalADDSUB;
  overflow <= signalvaiUM XOR vemUM;
  vaiUM <= signalvaiUM;
  

  
  MUX_ULA : entity work.muxGenerico4x1
        
        port map(
                entradaA_MUX => signalAND,
                entradaB_MUX => signalOR,
                entradaC_MUX => signalADDSUB,
                entradaD_MUX => signalLESS,
                seletor_MUX  => seletor(1 DOWNTO 0),
                saida_MUX    => saidaULA

        );
	


		  
end architecture;