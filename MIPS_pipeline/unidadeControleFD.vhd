LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.constantesMIPS.ALL;

ENTITY unidadeControleFD IS
    PORT (
        -- Input ports
        clk    : IN std_logic;
		opCode : IN std_logic_vector(5 DOWNTO 0);
		JR     : in std_logic;
		
        -- Output ports
     
        palavraControle : OUT std_logic_vector(16 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_name OF unidadeControleFD IS
   
	ALIAS BNE						 : std_logic IS palavracontrole(16);
   ALIAS lui                   : std_logic IS palavracontrole(15);
	ALIAS ori_andi              : std_logic IS palavracontrole(14);
   ALIAS ULAop                 : std_logic_vector(2 DOWNTO 0) IS palavraControle(13 downto 11);
   
   ALIAS seletorMUX_JMP        : std_logic_vector(1 DOWNTO 0) IS palavraControle(10 DOWNTO 9);
   ALIAS seletorMUX_RtRd       : std_logic_vector(1 DOWNTO 0) IS palavraControle(8 DOWNTO 7);
   ALIAS habilitaESCreg3       : std_logic IS palavraControle(6);
   ALIAS seletorMUX_RtImediato : std_logic IS palavraControle(5);
   ALIAS seletorULA_mem        : std_logic_vector(1 DOWNTO 0) IS palavraControle(4 DOWNTO 3);
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

    seletorMUX_JMP        <= "01"   WHEN opCode = opCodeTipoJ OR opCode = opCodeJAL
										ELSE "10" WHEN OpCode = opCodeTipoR and JR = '1'
										 ELSE "00";
										
    lui                   <= '1'   WHEN opCode = opCodeLUI ElSE '0';
    seletorMUX_RtRd       <= "01"   WHEN opCode = opCodeTipoR 
										ELSE "10" WHEN opCode = opCodeJAL ELSE
										"00";
    ori_andi              <= '1'   WHEN opCode = opCodeORI OR opCode = opCodeANDI else '0';   
	 habilitaESCreg3       <= '1'   WHEN opCode = opCodeTipoR OR opCode = opCodeLW OR
                                        opcode = opcodeORI OR  opcode = opcodeANDI  
                                        OR opCode = opCodeLUI  
													 OR opCode = opCodeADDI 
													 OR opCode = opCodeSLTI 
													 OR opCode = opCodeJAL
													 ELSE '0';
	seletorMUX_RtImediato <= '1'   WHEN opCode = opCodeSW OR opCode = opCodeLW OR opcode= opcodeORI 
													OR opcode = opcodeANDI 
													 OR opCode = opCodeADDI 
													 OR opCode = opCodeSLTI ELSE '0';
   
    BEQ 		      		  <= '1'   WHEN opCode = opCodeBEQ ELSE '0';                                  
	 BNE 						  <= '1'   WHEN opCode = opCodeBNE ELSE '0';    
	 
	 habLeituraMEM         <= '1'   WHEN opCode = opCodeLW ELSE '0';
	 habEscritaMEM         <= '1'   WHEN opCode = opCodeSW ELSE '0';
    
    ULAop                 <= opADD   WHEN opCode = opCodeSW ELSE 
						          opADD   WHEN opCode = opCodeLW  ELSE
							       opANDI WHEN opCode = opCodeANDI ELSE
							       opORI WHEN opcode = opcodeORI ELSE
						          opFUNCT WHEN opCode = opCodeTipoR ELSE 
						          opSUB   WHEN opCode = opCodeBEQ  ELSE
									 opSUB 	when opCode = opCodeBNE  ELSE
									 opADD   WHEN opCode = opCodeADDI ELSE
									 opSLTI   WHEN opCode = opCodeSLTI ELSE
						          "000";
						 

	SeletorULA_mem		  <= "01"   WHEN opCode = opCodelW  
								  ELSE "10" WHEN opCode = opCodeJAL
								  ELSE "00";

END ARCHITECTURE;