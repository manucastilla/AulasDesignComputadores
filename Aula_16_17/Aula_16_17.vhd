library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Aula_16_17 is

  port   (
    -- Input ports
    opcode  :  in  std_logic_vector(5 downto 0);
    func    :  in std_logic(5 downto 0);
    signalB :  in std_logic_vector(31 downto 0);
    signalA :  in std_logic_vector(31 downto 0);

    resultado :  out std_logic_vector(31 downto 0);
    palavraControle : out std_logic_vector(7 downto 0);
    set      : out std_logic;
    saidaULA : out std_logic

  
    
  );
end entity;


architecture arch_name of Aula_16_17 is

  

begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
   :  entity work.unidadeControleFD 
        
        port map(
                
                );


  
   : entity work.unidadeControleULA
        port map(
               

        );

end architecture;