LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.constantesMIPS.ALL;

ENTITY UnidadeControle IS
    PORT (
        -- Input ports
        clk    : IN std_logic;
        opCode : IN std_logic_vector(5 DOWNTO 0); 
		  func   : IN std_logic_vector(5 DOWNTO 0); 
        -- Output ports
        palavraControle : OUT std_logic_vector(10 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_name OF UnidadeControle IS
   
   ALIAS seletorMUX_JMP        : std_logic IS palavraControle(10);
   ALIAS seletorMUX_RtRd       : std_logic IS palavraControle(9);
   ALIAS habilitaESCreg3       : std_logic IS palavraControle(8);
   ALIAS seletorMUX_RtImediato : std_logic IS palavraControle(7);
   ALIAS operacaoULA           : std_logic_vector (2 DOWNTO 0) IS palavraControle(6 DOWNTO 4);
   ALIAS seletorULA_mem        : std_logic IS palavraControle(3);
   ALIAS BEQ                   : std_logic IS palavraControle(2);
   ALIAS habLeituraMEM         : std_logic IS palavraControle(1);
   ALIAS habEscritaMEM         : std_logic IS palavraControle(0);

	 --  Tabela da sequencia de palavra de controle
		
    --      habilitaESCreg3  function   operacao
	 -- add		   0	     x20        000
	 -- sub		   0		 x22	    001
	 -- and        0         x24        010
	 -- or         0         x25        011
	 -- slt        1         x2A        100

BEGIN

	seletorMUX_JMP        <= '1' WHEN opCode = opCodeTipoJ ELSE '0';
    seletorMUX_RtRd       <= '1' WHEN opCode = opCodeTipoR ELSE '0';
	habilitaESCreg3       <= '1' WHEN opCode = opCodeTipoR ELSE '0';
	seletorMUX_RtImediato <= '1' WHEN opCode = opCodeTipoR ELSE '0';
	seletorULA_mem		  <= '1' WHEN opCode = opCodeTipoR ELSE '0';
	BEQ 				  <= '1' WHEN opCode = opCodeBEQ ELSE '0'; 
	habLeituraMEM         <= '0' WHEN opCode = opCodeLW ELSE '1';
	habEscritaMEM         <= '0' WHEN opCode = opCodeSW ELSE '1';
	operacaoULA           <= execAddULA WHEN opCode = opCodeTipoR AND func = functADD ELSE -- add
						     execSubULA WHEN opCode = opCodeTipoR AND func = functSUB ELSE -- sub
						     execAndULA WHEN opCode = opCodeTipoR AND func = functAND ELSE -- and
						     execOrULA  WHEN opCode = opCodeTipoR AND func = functOR ELSE -- or
						     execSltULA WHEN opCode = opCodeTipoR AND func = functSLT ELSE-- slt
						     execSubULA WHEN opCode = opCodeBEQ  ELSE
							  execAndULA WHEN opCode = opCodeSW ELSE
						     execAndULA WHEN opCode = opCodeLW  ELSE --
						 "000";
						 

			

END ARCHITECTURE;