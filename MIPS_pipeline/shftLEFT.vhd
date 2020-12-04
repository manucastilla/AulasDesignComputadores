library ieee;
use ieee.std_logic_1164.all;

entity shftLEFT is
  generic   (
    DATA_WIDTH  : natural :=  32
  );

  port   (
    -- Input ports
    dataIN  :  in  std_logic_vector(DATA_WIDTH-1 downto 0);
    dataOUT :  out  std_logic_vector(DATA_WIDTH-1 downto 0)

  );
end entity;


architecture arch_name of shftLEFT is

  -- Declarations (optional):
  signal converte : std_logic_vector(DATA_WIDTH-1 downto 0);
  
  -- constant FUNCT_WIDTH : natural := 6;
  -- subtype funct_t  is  std_logic_vector(FUNCT_WIDTH-1 downto 0);
  -- constant functADD   : funct_t := "100000";
  -- constant functSUB   : funct_t := "100010";
  -- alias memWRsignal: std_logic is controlWord(0);
  -- alias ulaOPvalue:  std_logic_vector(1 downto 0) is controlWord(5 downto 4);

begin

  converte(31 DOWNTO 0) <= dataIN(29 DOWNTO 0) & "00";
  dataOUT <= converte;
  

end architecture;