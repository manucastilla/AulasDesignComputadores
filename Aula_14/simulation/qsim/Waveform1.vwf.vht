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
-- Generated on "11/02/2020 13:50:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula_14
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula_14_vhd_vec_tst IS
END Aula_14_vhd_vec_tst;
ARCHITECTURE Aula_14_arch OF Aula_14_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL PC_out_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_ULA_out_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saidaBanco_REG2_out_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT Aula_14
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	PC_out_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_ULA_out_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saidaBanco_REG2_out_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula_14
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	PC_out_out => PC_out_out,
	saida_ULA_out_out => saida_ULA_out_out,
	saidaBanco_REG2_out_out => saidaBanco_REG2_out_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 11
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END Aula_14_arch;
