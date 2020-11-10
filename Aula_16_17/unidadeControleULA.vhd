library ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.constantesMIPS.all;

-- nao esquece de conectar cm o ula

entity unidadeControleULA is
  
  port   (
    -- Input ports
    ULAop  :  in  std_logic_vector(1 downto 0);
    func  : in  std_logic_vector(5 downto 0);
    
    ULActrl :  out  std_logic_vector(2 downto 0)
    
  );
end entity;


architecture arch_name of unidadeControleULA is


begin

    ULActrl <= ctrlADD WHEN ULAop = opADD ELSE
               ctrlSUB WHEN ULAop = opSUB ELSE

               ctrlOR  WHEN  ULAop = opFUNCT and func = functOR ELSE
               ctrlADD WHEN  ULAop = opFUNCT and func = functADD ELSE
               ctrlSUB WHEN  ULAop = opFUNCT and func = functSUB ELSE
               ctrlSLT WHEN  ULAop = opFUNCT and func = functSLT ELSE
               "000";

end architecture;

