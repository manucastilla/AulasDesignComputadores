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
-- Generated on "12/06/2020 13:45:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_A_project
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_A_project_vhd_vec_tst IS
END MIPS_A_project_vhd_vec_tst;
ARCHITECTURE MIPS_A_project_arch OF MIPS_A_project_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL barramentoEndout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL inA_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inB_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL mux_lui : STD_LOGIC;
SIGNAL PC_out_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL seletor_out_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MIPS_A_project
	PORT (
	barramentoEndout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	inA_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	inB_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	mux_lui : OUT STD_LOGIC;
	PC_out_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	seletor_out_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_A_project
	PORT MAP (
-- list connections between master ports and signals
	barramentoEndout => barramentoEndout,
	CLOCK_50 => CLOCK_50,
	inA_ULA => inA_ULA,
	inB_ULA => inB_ULA,
	mux_lui => mux_lui,
	PC_out_out => PC_out_out,
	seletor_out_out => seletor_out_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 29
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END MIPS_A_project_arch;
