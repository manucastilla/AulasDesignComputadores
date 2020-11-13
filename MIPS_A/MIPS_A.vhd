library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_A is

  port   (
    -- Input ports
    func    :  in std_logic_vector(5 downto 0);
    signalB :  in std_logic_vector(31 downto 0);
    signalA :  in std_logic_vector(31 downto 0);
    ULAopIN :  in  std_logic_vector(1 downto 0);
  
    overflow  :  out std_logic;
    resultado :  out std_logic_vector(31 downto 0) 
  );
end entity;


architecture arch_name of MIPS_A is

  signal ulacontrol      : std_logic_vector(2 downto 0);
  signal saidaula        : std_logic_vector(31 DOWNTO 0);
  

begin

UC_ULA   :  entity work.unidadeControleULA
        port map(
                ULAop   =>  ULAopIN, 
                func    => func,
                ULActrl => ulacontrol
                );
  
ULA   : entity work.ULA_final
        port map(
                  Binvert  => signalB,
                  Ainvert  => signalA,
                  operacao => ulacontrol,
                  result   => saidaula,
                  overflow => overflow             
        );

resultado <= saidaula;

end architecture;