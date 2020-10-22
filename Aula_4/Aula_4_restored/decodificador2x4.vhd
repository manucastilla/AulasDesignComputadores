library ieee;
use ieee.std_logic_1164.all;

entity decodificador2x4 is
  port (
    seletor  : in std_logic_vector(7 downto 0);
    habilita : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decodificador2x4 is

	signal bloco : std_logic_vector(3 downto 0);
	signal sel_bloco : std_logic_vector(1 downto 0);
	
  begin
	 sel_bloco <= seletor(7 downto 6);
	 with sel_bloco select
	 bloco <= "0001" when "00",
				 "0010" when "01",
				 "0100" when "10",
				 "1000" when "11",
				 "0000" when others;
				 				 
	habilita(0) <= bloco(0);
	habilita(1) <= bloco(1); -- Habilitar RAM faixa 64 - 127
	habilita(2) <= bloco(2) and ((not seletor(3)) and seletor(2) and (not seletor(1)) and (not seletor(0))); 
									-- (not (seletor(3) or (not seletor(2)) or seletor(1) and not seletor(0)))
									-- Interface Chaves: está alocada no endereço: 132
	habilita(3) <= bloco(3) and (seletor(3) and (not seletor(2)) and (not seletor(1)) and (not seletor(0)));
									-- Interface LEDs: está alocada no endereço: 200.

end architecture;