library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas
use work.constantesMIPS.all;

entity ULA is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      flagZero: out std_logic
    );
end entity;

architecture comportamento of ULA is
  constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_slt :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal slt :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  --  signal op_ori:     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
  SIGNAL V : std_logic;

    begin
      soma      <= STD_LOGIC_VECTOR(signed(entradaA) + signed(entradaB));
      subtracao <= STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB));
      op_and    <= entradaA and entradaB;
      op_or     <= entradaA or entradaB;
		V <= (not(entradaA(31)) AND not(entradaB(31)) AND saida(31) ) OR ( entradaA(31) AND entradaB(31) AND not(saida(31))) ;
		slt <= (STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB)));
      op_slt<= "00000000" & "00000000" & "00000000" & "0000000" & slt(31);
      
		-- op_slt    <= subtracao;


      saida <= soma when (seletor = execAddULA) else
          subtracao when (seletor = execSubULA) else
          op_and when    (seletor = execAndULA) else
          op_or when     (seletor = execOrULA) else
			 op_slt when     (seletor = execSltULA) else
          entradaB;      

      flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';

end architecture;