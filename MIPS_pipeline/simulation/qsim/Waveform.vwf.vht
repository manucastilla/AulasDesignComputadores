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
-- Generated on "12/06/2020 19:40:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS_pipeline
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_pipeline_vhd_vec_tst IS
END MIPS_pipeline_vhd_vec_tst;
ARCHITECTURE MIPS_pipeline_arch OF MIPS_pipeline_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL barramento_endereco : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL dado_escrito_RAM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL escritaC_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wr_out : STD_LOGIC;
SIGNAL wr_reg_banco : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT MIPS_pipeline
	PORT (
	barramento_endereco : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	dado_escrito_RAM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	escritaC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	wr_out : OUT STD_LOGIC;
	wr_reg_banco : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_pipeline
	PORT MAP (
-- list connections between master ports and signals
	barramento_endereco => barramento_endereco,
	CLOCK_50 => CLOCK_50,
	dado_escrito_RAM => dado_escrito_RAM,
	escritaC_out => escritaC_out,
	PC_out => PC_out,
	wr_out => wr_out,
	wr_reg_banco => wr_reg_banco
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 19
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END MIPS_pipeline_arch;
