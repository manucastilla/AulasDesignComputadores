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
-- Generated on "11/11/2020 15:05:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula_16_17
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula_16_17_vhd_vec_tst IS
END Aula_16_17_vhd_vec_tst;
ARCHITECTURE Aula_16_17_arch OF Aula_16_17_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL func : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL overflow : STD_LOGIC;
SIGNAL resultado : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL signalA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL signalB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULAopIN : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Aula_16_17
	PORT (
	func : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	overflow : OUT STD_LOGIC;
	resultado : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	signalA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	signalB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULAopIN : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Aula_16_17
	PORT MAP (
-- list connections between master ports and signals
	func => func,
	overflow => overflow,
	resultado => resultado,
	signalA => signalA,
	signalB => signalB,
	ULAopIN => ULAopIN
	);
-- func[5]
t_prcs_func_5: PROCESS
BEGIN
	func(5) <= '1';
WAIT;
END PROCESS t_prcs_func_5;
-- func[4]
t_prcs_func_4: PROCESS
BEGIN
	func(4) <= '0';
WAIT;
END PROCESS t_prcs_func_4;
-- func[3]
t_prcs_func_3: PROCESS
BEGIN
	func(3) <= '0';
WAIT;
END PROCESS t_prcs_func_3;
-- func[2]
t_prcs_func_2: PROCESS
BEGIN
	func(2) <= '0';
WAIT;
END PROCESS t_prcs_func_2;
-- func[1]
t_prcs_func_1: PROCESS
BEGIN
	func(1) <= '0';
WAIT;
END PROCESS t_prcs_func_1;
-- func[0]
t_prcs_func_0: PROCESS
BEGIN
	func(0) <= '0';
WAIT;
END PROCESS t_prcs_func_0;
-- signalA[31]
t_prcs_signalA_31: PROCESS
BEGIN
	signalA(31) <= '0';
WAIT;
END PROCESS t_prcs_signalA_31;
-- signalA[30]
t_prcs_signalA_30: PROCESS
BEGIN
	signalA(30) <= '0';
WAIT;
END PROCESS t_prcs_signalA_30;
-- signalA[29]
t_prcs_signalA_29: PROCESS
BEGIN
	signalA(29) <= '0';
WAIT;
END PROCESS t_prcs_signalA_29;
-- signalA[28]
t_prcs_signalA_28: PROCESS
BEGIN
	signalA(28) <= '0';
WAIT;
END PROCESS t_prcs_signalA_28;
-- signalA[27]
t_prcs_signalA_27: PROCESS
BEGIN
	signalA(27) <= '0';
WAIT;
END PROCESS t_prcs_signalA_27;
-- signalA[26]
t_prcs_signalA_26: PROCESS
BEGIN
	signalA(26) <= '0';
WAIT;
END PROCESS t_prcs_signalA_26;
-- signalA[25]
t_prcs_signalA_25: PROCESS
BEGIN
	signalA(25) <= '0';
WAIT;
END PROCESS t_prcs_signalA_25;
-- signalA[24]
t_prcs_signalA_24: PROCESS
BEGIN
	signalA(24) <= '0';
WAIT;
END PROCESS t_prcs_signalA_24;
-- signalA[23]
t_prcs_signalA_23: PROCESS
BEGIN
	signalA(23) <= '0';
WAIT;
END PROCESS t_prcs_signalA_23;
-- signalA[22]
t_prcs_signalA_22: PROCESS
BEGIN
	signalA(22) <= '0';
WAIT;
END PROCESS t_prcs_signalA_22;
-- signalA[21]
t_prcs_signalA_21: PROCESS
BEGIN
	signalA(21) <= '0';
WAIT;
END PROCESS t_prcs_signalA_21;
-- signalA[20]
t_prcs_signalA_20: PROCESS
BEGIN
	signalA(20) <= '0';
WAIT;
END PROCESS t_prcs_signalA_20;
-- signalA[19]
t_prcs_signalA_19: PROCESS
BEGIN
	signalA(19) <= '0';
WAIT;
END PROCESS t_prcs_signalA_19;
-- signalA[18]
t_prcs_signalA_18: PROCESS
BEGIN
	signalA(18) <= '0';
WAIT;
END PROCESS t_prcs_signalA_18;
-- signalA[17]
t_prcs_signalA_17: PROCESS
BEGIN
	signalA(17) <= '0';
WAIT;
END PROCESS t_prcs_signalA_17;
-- signalA[16]
t_prcs_signalA_16: PROCESS
BEGIN
	signalA(16) <= '0';
WAIT;
END PROCESS t_prcs_signalA_16;
-- signalA[15]
t_prcs_signalA_15: PROCESS
BEGIN
	signalA(15) <= '0';
WAIT;
END PROCESS t_prcs_signalA_15;
-- signalA[14]
t_prcs_signalA_14: PROCESS
BEGIN
	signalA(14) <= '0';
WAIT;
END PROCESS t_prcs_signalA_14;
-- signalA[13]
t_prcs_signalA_13: PROCESS
BEGIN
	signalA(13) <= '0';
WAIT;
END PROCESS t_prcs_signalA_13;
-- signalA[12]
t_prcs_signalA_12: PROCESS
BEGIN
	signalA(12) <= '0';
WAIT;
END PROCESS t_prcs_signalA_12;
-- signalA[11]
t_prcs_signalA_11: PROCESS
BEGIN
	signalA(11) <= '0';
WAIT;
END PROCESS t_prcs_signalA_11;
-- signalA[10]
t_prcs_signalA_10: PROCESS
BEGIN
	signalA(10) <= '0';
WAIT;
END PROCESS t_prcs_signalA_10;
-- signalA[9]
t_prcs_signalA_9: PROCESS
BEGIN
	signalA(9) <= '0';
WAIT;
END PROCESS t_prcs_signalA_9;
-- signalA[8]
t_prcs_signalA_8: PROCESS
BEGIN
	signalA(8) <= '0';
WAIT;
END PROCESS t_prcs_signalA_8;
-- signalA[7]
t_prcs_signalA_7: PROCESS
BEGIN
	signalA(7) <= '0';
WAIT;
END PROCESS t_prcs_signalA_7;
-- signalA[6]
t_prcs_signalA_6: PROCESS
BEGIN
	signalA(6) <= '0';
WAIT;
END PROCESS t_prcs_signalA_6;
-- signalA[5]
t_prcs_signalA_5: PROCESS
BEGIN
	signalA(5) <= '0';
WAIT;
END PROCESS t_prcs_signalA_5;
-- signalA[4]
t_prcs_signalA_4: PROCESS
BEGIN
	signalA(4) <= '0';
WAIT;
END PROCESS t_prcs_signalA_4;
-- signalA[3]
t_prcs_signalA_3: PROCESS
BEGIN
	signalA(3) <= '1';
WAIT;
END PROCESS t_prcs_signalA_3;
-- signalA[2]
t_prcs_signalA_2: PROCESS
BEGIN
	signalA(2) <= '1';
WAIT;
END PROCESS t_prcs_signalA_2;
-- signalA[1]
t_prcs_signalA_1: PROCESS
BEGIN
	signalA(1) <= '1';
WAIT;
END PROCESS t_prcs_signalA_1;
-- signalA[0]
t_prcs_signalA_0: PROCESS
BEGIN
	signalA(0) <= '1';
WAIT;
END PROCESS t_prcs_signalA_0;
-- signalB[31]
t_prcs_signalB_31: PROCESS
BEGIN
	signalB(31) <= '0';
WAIT;
END PROCESS t_prcs_signalB_31;
-- signalB[30]
t_prcs_signalB_30: PROCESS
BEGIN
	signalB(30) <= '0';
WAIT;
END PROCESS t_prcs_signalB_30;
-- signalB[29]
t_prcs_signalB_29: PROCESS
BEGIN
	signalB(29) <= '0';
WAIT;
END PROCESS t_prcs_signalB_29;
-- signalB[28]
t_prcs_signalB_28: PROCESS
BEGIN
	signalB(28) <= '0';
WAIT;
END PROCESS t_prcs_signalB_28;
-- signalB[27]
t_prcs_signalB_27: PROCESS
BEGIN
	signalB(27) <= '0';
WAIT;
END PROCESS t_prcs_signalB_27;
-- signalB[26]
t_prcs_signalB_26: PROCESS
BEGIN
	signalB(26) <= '0';
WAIT;
END PROCESS t_prcs_signalB_26;
-- signalB[25]
t_prcs_signalB_25: PROCESS
BEGIN
	signalB(25) <= '0';
WAIT;
END PROCESS t_prcs_signalB_25;
-- signalB[24]
t_prcs_signalB_24: PROCESS
BEGIN
	signalB(24) <= '0';
WAIT;
END PROCESS t_prcs_signalB_24;
-- signalB[23]
t_prcs_signalB_23: PROCESS
BEGIN
	signalB(23) <= '0';
WAIT;
END PROCESS t_prcs_signalB_23;
-- signalB[22]
t_prcs_signalB_22: PROCESS
BEGIN
	signalB(22) <= '0';
WAIT;
END PROCESS t_prcs_signalB_22;
-- signalB[21]
t_prcs_signalB_21: PROCESS
BEGIN
	signalB(21) <= '0';
WAIT;
END PROCESS t_prcs_signalB_21;
-- signalB[20]
t_prcs_signalB_20: PROCESS
BEGIN
	signalB(20) <= '0';
WAIT;
END PROCESS t_prcs_signalB_20;
-- signalB[19]
t_prcs_signalB_19: PROCESS
BEGIN
	signalB(19) <= '0';
WAIT;
END PROCESS t_prcs_signalB_19;
-- signalB[18]
t_prcs_signalB_18: PROCESS
BEGIN
	signalB(18) <= '0';
WAIT;
END PROCESS t_prcs_signalB_18;
-- signalB[17]
t_prcs_signalB_17: PROCESS
BEGIN
	signalB(17) <= '0';
WAIT;
END PROCESS t_prcs_signalB_17;
-- signalB[16]
t_prcs_signalB_16: PROCESS
BEGIN
	signalB(16) <= '0';
WAIT;
END PROCESS t_prcs_signalB_16;
-- signalB[15]
t_prcs_signalB_15: PROCESS
BEGIN
	signalB(15) <= '0';
WAIT;
END PROCESS t_prcs_signalB_15;
-- signalB[14]
t_prcs_signalB_14: PROCESS
BEGIN
	signalB(14) <= '0';
WAIT;
END PROCESS t_prcs_signalB_14;
-- signalB[13]
t_prcs_signalB_13: PROCESS
BEGIN
	signalB(13) <= '0';
WAIT;
END PROCESS t_prcs_signalB_13;
-- signalB[12]
t_prcs_signalB_12: PROCESS
BEGIN
	signalB(12) <= '0';
WAIT;
END PROCESS t_prcs_signalB_12;
-- signalB[11]
t_prcs_signalB_11: PROCESS
BEGIN
	signalB(11) <= '0';
WAIT;
END PROCESS t_prcs_signalB_11;
-- signalB[10]
t_prcs_signalB_10: PROCESS
BEGIN
	signalB(10) <= '0';
WAIT;
END PROCESS t_prcs_signalB_10;
-- signalB[9]
t_prcs_signalB_9: PROCESS
BEGIN
	signalB(9) <= '0';
WAIT;
END PROCESS t_prcs_signalB_9;
-- signalB[8]
t_prcs_signalB_8: PROCESS
BEGIN
	signalB(8) <= '0';
WAIT;
END PROCESS t_prcs_signalB_8;
-- signalB[7]
t_prcs_signalB_7: PROCESS
BEGIN
	signalB(7) <= '0';
WAIT;
END PROCESS t_prcs_signalB_7;
-- signalB[6]
t_prcs_signalB_6: PROCESS
BEGIN
	signalB(6) <= '0';
WAIT;
END PROCESS t_prcs_signalB_6;
-- signalB[5]
t_prcs_signalB_5: PROCESS
BEGIN
	signalB(5) <= '0';
WAIT;
END PROCESS t_prcs_signalB_5;
-- signalB[4]
t_prcs_signalB_4: PROCESS
BEGIN
	signalB(4) <= '0';
WAIT;
END PROCESS t_prcs_signalB_4;
-- signalB[3]
t_prcs_signalB_3: PROCESS
BEGIN
	signalB(3) <= '1';
WAIT;
END PROCESS t_prcs_signalB_3;
-- signalB[2]
t_prcs_signalB_2: PROCESS
BEGIN
	signalB(2) <= '1';
WAIT;
END PROCESS t_prcs_signalB_2;
-- signalB[1]
t_prcs_signalB_1: PROCESS
BEGIN
	signalB(1) <= '1';
WAIT;
END PROCESS t_prcs_signalB_1;
-- signalB[0]
t_prcs_signalB_0: PROCESS
BEGIN
	signalB(0) <= '1';
WAIT;
END PROCESS t_prcs_signalB_0;
-- ULAopIN[1]
t_prcs_ULAopIN_1: PROCESS
BEGIN
	ULAopIN(1) <= '1';
WAIT;
END PROCESS t_prcs_ULAopIN_1;
-- ULAopIN[0]
t_prcs_ULAopIN_0: PROCESS
BEGIN
	ULAopIN(0) <= '0';
WAIT;
END PROCESS t_prcs_ULAopIN_0;
END Aula_16_17_arch;
