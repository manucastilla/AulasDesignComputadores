LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ROMMIPS IS
  GENERIC (
    dataWidth : NATURAL := 32;
    addrWidth : NATURAL := 32;
    memoryAddrWidth : NATURAL := 6); -- 64 posicoes de 32 bits cada
  PORT (
    clk : IN STD_LOGIC;
    Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
    Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0));
END ENTITY;

ARCHITECTURE assincrona OF ROMMIPS IS
  TYPE blocoMemoria IS ARRAY(0 TO 2 ** memoryAddrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

  FUNCTION initMemory
    RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
  BEGIN

    -- Valores iniciais no banco de registradores:
    -- $zero (#0) := 0x00
    -- $t0   (#8) := 0x00
    -- $t1   (#9) := 0x0A
    -- $t2  (#10) := 0x0B
    -- $t3  (#11) := 0x0C
    -- $t4  (#12) := 0x0D
    -- $t5  (#13) := 0x16

    --   Programa do Single Cycle com Conjunto A, com NOPs para Rodar no Pipeline Simples:
    --                                                                PC ULA    PC Exibido
   tmp(0) := x"AC090008"; --sw $t1 8($zero)     (m(8) := 0x0000000A)
    tmp(1) := x"8C080008"; --lw $t0 8($zero)     ($t0 := 0x0000000A)
    tmp(2) := x"012A4022"; --sub $t0 $t1 $t2     ($t0 := 0xFFFFFFFF)
    tmp(3) := x"012A4024"; --and $t0 $t1 $t2     ($t0 := 0x0000000A)
    tmp(4) := x"012A4025"; --or $t0 $t1 $t2      ($t0 := 0x0000000B)
    tmp(5) := x"3C08FFFF"; --lui $x $t0 0xFFFF   ($t0 := 0xFFFF0000)
    tmp(6) := x"2128000A"; --addi $t0 $t1 0x000A ($t0 := 0x00000014)
    tmp(7) := x"31080013"; --andi $t0 $t0 0x0013 HAZARD  ($t0 := 0x00000002) (leu t0=A do pc=3)
    tmp(8) := x"35880007"; --ori $t0 $t4 0x0007  ($t0 := 0x0000000F)
    tmp(9) := x"2928FFFF"; --slti $t0 $t1 0xFFFF ($t0 := 0x00000000)

 

    tmp(10) := x"012A402A"; --slt $t0 $t1 $t2     ($t0 := 0x00000001)
    tmp(11) := x"010A4020"; --add $t0 $t0 $t2     HAZARD  ($t0 := 0x0000000D) (B + 2 leu t0 = 2 pc=7)
    tmp(12) := x"110BFFFE"; --beq $t0 $t3 0xFFFE  HAZARD  (pc := #13, nao fez beq)
    tmp(13) := x"08000010"; --j 0x000010          (pc := #16)

 

    tmp(16) := x"AC090008"; --sw $t1 8($zero)     (m(8) := 0x0000000A)
    tmp(17) := x"8C080008"; --lw $t0 8($zero)     ($t0 := 0x0000000A)
    tmp(18) := x"012A4022"; --sub $t0 $t1 $t2     ($t0 := 0xFFFFFFFF)
    tmp(19) := x"012A4024"; --and $t0 $t1 $t2     ($t0 := 0x0000000A)

 

    tmp(20) := x"012A4025"; --or $t0 $t1 $t2      ($t0 := 0x0000000B)
    tmp(21) := x"3C08FFFF"; --lui $x $t0 0xFFFF   ($t0 := 0xFFFF0000)
    tmp(22) := x"2128000A"; --addi $t0 $t1 0x000A ($t0 := 0x00000014)
    tmp(26) := x"31080013"; --andi $t0 $t0 0x0013 ($t0 := 0x00000010)
    tmp(27) := x"35880007"; --ori $t0 $t4 0x0007  ($t0 := 0x0000000F)
    tmp(28) := x"2928FFFF"; --slti $t0 $t1 0xFFFF ($t0 := 0x00000000)

 

    tmp(32) := x"010A4020"; --add $t0 $t0 $t2     ($t0 := 0x0000000B)
    --segunda execução:      ($t0 := 0x00000016)
    tmp(36) := x"150DFFFB"; --bne $t0 $t5 0xFFFB  (pc := #32)
    --segunda execução:      (pc := #37)
    tmp(40) := x"012A402A"; --slt $t0 $t1 $t2     ($t0 := 0x00000001)

 

    tmp(44) := x"010A4020"; --add $t0 $t0 $t2     ($t0 := 0x0000000C)
    --segunda execução:      ($t0 := 0x00000017)
    tmp(48) := x"110BFFFB"; --beq $t0 $t3 0xFFFB  (pc := #44)
    --segunda execução:      (pc := #49)
    tmp(51) := x"0C00003A"; --jal 0x00003A        (pc := #58)
    tmp(52) := x"00000000"; --nop
    tmp(53) := x"08000000"; --j 0x000000          (pc := #0)
    tmp(54) := x"00000000"; --nop
     
    tmp(60) := x"03E00008"; --jr $ra              (pc := #53)
    RETURN tmp;
  END initMemory;

  SIGNAL memROM : blocoMemoria := initMemory;

  -- Utiliza uma quantidade menor de endereços locais:
  SIGNAL EnderecoLocal : STD_LOGIC_VECTOR(memoryAddrWidth - 1 DOWNTO 0);

BEGIN
  EnderecoLocal <= Endereco(memoryAddrWidth + 1 DOWNTO 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
END ARCHITECTURE;