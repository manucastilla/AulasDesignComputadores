LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UnidadeControle IS
    PORT (
        -- Input ports
        clk    : IN std_logic;
        opCode : IN std_logic_vector(5 DOWNTO 0); 
		  func   : IN std_logic_vector(5 DOWNTO 0); 
        -- Output ports
        palavraControle : OUT std_logic_vector(5 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE arch_name OF UnidadeControle IS
	ALIAS escritREG3          : std_logic IS palavraControle(5);
	ALIAS memLe					  : std_logic IS palavraControle(4);
	ALIAS memEscreve			  : std_logic IS palavraControle(3);
   ALIAS operacaoULA         : std_logic_vector (2 DOWNTO 0) IS palavraControle(2 DOWNTO 0);

   
	 --  Tabela da sequencia de palavra de controle
		
    --       escritREG3  function   operacao
	 -- add			0	       x20        000
	 -- sub			0			 x22			001
	 -- and        0         x24        010
	 -- or         0         x25        011
	 -- slt        1         x2A        100


BEGIN

    escritREG3  <= '1' WHEN opCode = 6x"00" ELSE '0';
	 operacaoULA <= "000" WHEN opCode = 6x"00" AND func = 6x"20" ELSE -- add
						 "001" WHEN opCode = 6x"00" AND func = 6x"22" ELSE -- sub
						 "010" WHEN opCode = 6x"00" AND func = 6x"24" ELSE -- and
						 "011" WHEN opCode = 6x"00" AND func = 6x"25" ELSE -- or
						 "100" WHEN opCode = 6x"00" AND func = 6x"2A" ELSE-- slt
						 "111";
						 
						 
	 memle       <= '0' WHEN opCode = 6x"00" ELSE '1';
	 memEscreve  <= '0' WHEN opCode = 6x"00" ELSE '1';
	 
	 --PORQUE ESCRITA COMECA NO '1' E NA MEMORIA COMECA NO '0'
			

END ARCHITECTURE;