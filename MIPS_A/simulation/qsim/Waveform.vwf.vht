-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/16/2020 22:46:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_A
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_A_vhd_vec_tst IS
END MIPS_A_vhd_vec_tst;
ARCHITECTURE MIPS_A_arch OF MIPS_A_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL barramentoEnd_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BarramentoLet_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL PC_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS_A
	PORT (
	barramentoEnd_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	BarramentoLet_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_A
	PORT MAP (
-- list connections between master ports and signals
	barramentoEnd_out => barramentoEnd_out,
	BarramentoLet_out => BarramentoLet_out,
	CLOCK_50 => CLOCK_50,
	PC_out => PC_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END MIPS_A_arch;
