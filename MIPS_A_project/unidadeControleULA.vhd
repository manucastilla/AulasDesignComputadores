library ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use ieee.constantesMIPS.all;

-- nao esquece de conectar cm o ula

entity unidadeControleULA is
  
  port   (
    -- Input ports
    ULAop  :  in  std_logic_vector(2 downto 0);
    func  : in  std_logic_vector(5 downto 0);
    
   -- Output ports
    JR_ULA  :  out  std_logic;
    ULActrl :  out  std_logic_vector(2 downto 0)
    
  );
end entity;


architecture arch_name of unidadeControleULA is


begin

    ULActrl <= execAddULA WHEN ULAop = opADD ELSE
               execSubULA WHEN ULAop = opSUB ELSE

					execOrULA  WHEN  ULAop = opORI ELSE 
					execAndULA WHEN  ULAop = opANDI ELSE
               
					execOrULA  WHEN  ULAop = opFUNCT and func = functOR ELSE 
								
               execAddULA WHEN  ULAop = opFUNCT and func = functADD ELSE
               execSubULA WHEN  ULAop = opFUNCT and func = functSUB ELSE
               execSltULA WHEN  ULAop = opFUNCT and func = functSLT ELSE
					execAndULA WHEN  ULAop = opFUNCT AND func = functAND ELSE
					execSltULA WHEN ULAop = opSLTI ELSE "000";

    JR_ULA <= '1' WHEN ULAop = opFUNCT and func = functJR ELSE '0';
end architecture;

