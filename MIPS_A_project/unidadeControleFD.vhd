LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.constantesMIPS.ALL;

ENTITY unidadeControleFD IS
    PORT (
        -- Input ports
        clk    : IN std_logic;
        opCode : IN std_logic_vector(5 DOWNTO 0); 
		
        -- Output ports
     
        palavraControle : OUT std_logic_vector(12 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_name OF unidadeControleFD IS
   
   ALIAS lui                   : std_logic IS palavracontrole(12);
	ALIAS ori_andi              : std_logic IS palavracontrole(11);
   ALIAS ULAop                 : std_logic_vector(2 DOWNTO 0) IS palavraControle(10 downto 8);
   
   ALIAS seletorMUX_JMP        : std_logic IS palavraControle(7);
   ALIAS seletorMUX_RtRd       : std_logic IS palavraControle(6);
   ALIAS habilitaESCreg3       : std_logic IS palavraControle(5);
   ALIAS seletorMUX_RtImediato : std_logic IS palavraControle(4);
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

    seletorMUX_JMP        <= '1'   WHEN opCode = opCodeTipoJ ELSE '0';
    lui                   <= '1'   WHEN opCode = opCodeLUI ElSE '0';
    seletorMUX_RtRd       <= '1'   WHEN opCode = opCodeTipoR ELSE '0';
    ori_andi              <= '1'   WHEN opCode = opCodeORI OR opCode = opCodeANDI else '0';   
	habilitaESCreg3       <= '1'   WHEN opCode = opCodeTipoR OR opCode = opCodeLW OR
                                        opcode = opcodeORI OR  opcode = opcodeANDI  
                                        OR opCode = opCodeLUI  ELSE '0';
    seletorMUX_RtImediato <= '1'   WHEN opCode = opCodeSW OR opCode = opCodeLW  OR
                                        opcode= opcodeORI OR opcode = opcodeANDI ELSE '0';
    SeletorULA_mem		  <= '1'   WHEN opCode = opCodelW  ELSE '0';
    BEQ 				  <= '1'   WHEN opCode = opCodeBEQ ELSE '0';                                  
	habLeituraMEM         <= '1'   WHEN opCode = opCodeLW ELSE '0';
	habEscritaMEM         <= '1'   WHEN opCode = opCodeSW ELSE '0';
    
    ULAop                 <= opADD   WHEN opCode = opCodeSW ELSE 
						          opADD   WHEN opCode = opCodeLW  ELSE
							       opANDI WHEN opCode = opCodeANDI ELSE
							       opORI WHEN opcode = opcodeORI ELSE
						          opFUNCT WHEN opCode = opCodeTipoR ELSE 
						          opSUB   WHEN opCode = opCodeBEQ  ELSE 
						          "000";
						 

			

END ARCHITECTURE;
