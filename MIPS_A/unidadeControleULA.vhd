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
    
	 -- Output ports
    ULActrl :  out  std_logic_vector(2 downto 0)
    
  );
end entity;


architecture arch_name of unidadeControleULA is


begin

    ULActrl <= execAddULA WHEN ULAop = opADD ELSE
               execSubULA WHEN ULAop = opSUB ELSE

               execOrULA  WHEN  ULAop = opFUNCT and func = functOR ELSE
               execAddULA WHEN  ULAop = opFUNCT and func = functADD ELSE
               execSubULA WHEN  ULAop = opFUNCT and func = functSUB ELSE
               execSltULA WHEN  ULAop = opFUNCT and func = functSLT ELSE
					execAndULA WHEN  ULAop = opFUNCT AND func = functAND ELSE

               "111";

end architecture;

