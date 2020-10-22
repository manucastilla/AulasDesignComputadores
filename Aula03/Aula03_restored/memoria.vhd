library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 8
    );
   port (
          -- O fato da interface ser do tipo std_logic auxilía na simulação.
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoria is
--             bit_17   bit_16      bit_15    bit_14       bit_13    bit_12     bits(11~4)        bits(3~0)
-- Mnemonico  Sel_Mux  Habilita_A  Reset_A   Habilita_B   Reset_B   Operacao   Entrada_de_Dados  ProxEndereco
--	PTS_CTRL(toplevel):
--					 13			12				11			10					9			8			7~0

  subtype opCode_t is std_logic_vector(5 downto 0);
  constant NOP  : opCode_t := "000000";
  constant V_ZERO  : std_logic_vector(7 downto 0) := (others => '0');
--

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        -- Inicializa todas as posições da memória com zero:
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços desejados. Os demais endereços conterão o valor zero:
        tmp(0) := b"010101" & x"02" & b"0001"; -- 2x 
        tmp(1) := b"110000" & x"02" & b"0010"; -- guarda
        tmp(2) := b"110100" & x"03" & b"0011";		
        tmp(3) := b"110000" & x"02" & b"0100";
        tmp(4) := b"110101" & x"07" & b"0101";
        tmp(5) := b"110100" & x"07" & b"0110";
        tmp(6) := b"000000" & x"47" & b"0111";

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    -- A conversão de tipos para obter o índice do vetor que será acessado:
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;