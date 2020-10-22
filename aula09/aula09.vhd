library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aula09 is
  generic   (
    DATA_WIDTH  : natural :=  8;
    ADDR_WIDTH  : natural :=  8;
	 ROM_ADDR_WIDTH : natural := 10; -- isso é bastante (relogio cabe em menos)
	 ROM_DATA_WIDTH : natural := 
	 
  );

  port   (
    -- Input ports
    EndDesvio  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    --enable  : in  std_logic;
    CLOCK_50     : in  std_logic;
    --<name>  : in  <type> := <default_value>;

    -- Inout ports
    --<name>  : inout <type>;

    -- Output ports
    dadoROM :  out  std_logic_vector(DATA_WIDTH-1 downto 0)
    --<name>  : out <type> := <default_value>
  );
end entity;


architecture arch_name of aula09 is

  signal selMUXProxPC : std_logic; -- um fio só
  signal PC_EnderecoROM : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal ProxPC : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal SomadorMux : std_logic_vector(DATA_WIDTH-1 downto 0);

 
  -- constant FUNCT_WIDTH : natural := 6;
 
  
begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
	PC : entity work.registradorGenerico   generic map (larguraDados => DATA_WIDTH)
          port map (DIN => ProxPC, DOUT => PC_EnderecoROM, ENABLE => '1', CLK => CLOCK_50, RST => '0');
 
	muxProxPC :  entity work.muxGenerico2x1  generic map (larguraDados => DATA_WIDTH)
        port map( entradaA_MUX => SomadorMux,
                 entradaB_MUX =>  EndDesvio,
                 seletor_MUX => selMUXProxPC,
                 saida_MUX => ProxPC);
					  
	somadorProxPC :  entity work.somaConstante  generic map (larguraDados => DATA_WIDTH, constante => 1)
        port map( entrada => PC_EnderecoROM, saida => SomadorMux);
		  
	memoriaInstrucoes : entity work.memoriaROM   generic map (dataWidth => DATA_WIDTH, addrWidth => ROM_ADDR_WIDTH)
          port map (Endereco => PC_EnderecoROM, Dado => dadoROM);
		  
end architecture;