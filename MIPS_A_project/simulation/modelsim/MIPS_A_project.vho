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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/24/2020 17:29:33"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_A_project IS
    PORT (
	CLOCK_50 : IN std_logic;
	PC_out_out : OUT std_logic_vector(31 DOWNTO 0);
	barramentoEndout : OUT std_logic_vector(31 DOWNTO 0);
	seletor_out_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END MIPS_A_project;

-- Design Ports Information
-- PC_out_out[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[3]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[8]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[10]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[11]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[12]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[13]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[15]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[16]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[17]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[19]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[20]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[21]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[22]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[23]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[25]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[26]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[27]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[28]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[29]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[30]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_out_out[31]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[12]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[16]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[17]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[19]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[20]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[21]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[23]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[24]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[25]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[26]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[27]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[29]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barramentoEndout[31]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor_out_out[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor_out_out[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor_out_out[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_A_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_PC_out_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_barramentoEndout : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_seletor_out_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|somadorPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|somadorPC|Add0~2\ : std_logic;
SIGNAL \processador|somadorPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~6\ : std_logic;
SIGNAL \processador|somadorPC|Add0~10\ : std_logic;
SIGNAL \processador|somadorPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~7_combout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~9_combout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~118_cout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~2\ : std_logic;
SIGNAL \processador|somador_somador|Add0~5_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~5_combout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~6\ : std_logic;
SIGNAL \processador|somador_somador|Add0~9_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|somadorPC|Add0~14\ : std_logic;
SIGNAL \processador|somadorPC|Add0~18\ : std_logic;
SIGNAL \processador|somadorPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~0_combout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~10\ : std_logic;
SIGNAL \processador|somador_somador|Add0~14\ : std_logic;
SIGNAL \processador|somador_somador|Add0~17_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~11_combout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~13_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~4_combout\ : std_logic;
SIGNAL \processador|UC|Equal5~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~8_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl[1]~1_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~10_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~0_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl~3_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl[1]~4_combout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~10_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl[0]~5_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[31]~4_combout\ : std_logic;
SIGNAL \processador|ULA|saida[31]~27_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~12_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~13_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1146_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~323_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1145_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~67DUPLICATE_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1160_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1131_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~15_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~67_q\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~16_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1130_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[29]~13_combout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~11_combout\ : std_logic;
SIGNAL \processador|ULA|saida[29]~54_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|Equal1~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~17_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~322_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~66_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1159_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1126_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1125_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[28]~12_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~321_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~65_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1120_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[27]~11_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1158_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1121_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~64_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~320_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1115_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[26]~10_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1157_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1116_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~63_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~319_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1110_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[25]~9_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1156_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1111_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~318_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~62_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1155_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1106_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1105_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[24]~8_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~317_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~61_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1154_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1101_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1100_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[23]~7_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~60_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1153_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~316_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1096_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1095_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[22]~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~59_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~315_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1090_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[21]~5_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1152_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1091_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~314_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~58_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1151_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1086_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1085_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[20]~4_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~313_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~57_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1080_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[19]~3_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1150_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1081_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~56_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~312_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1075_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[18]~2_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1149_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1076_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~55_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~311DUPLICATE_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1070_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[17]~1_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~311_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~55DUPLICATE_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1148_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1071_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~54_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~310_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1065_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[16]~0_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1147_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1066_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1064_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1063_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1062_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~6\ : std_logic;
SIGNAL \processador|ULA|Add2~10\ : std_logic;
SIGNAL \processador|ULA|Add2~14\ : std_logic;
SIGNAL \processador|ULA|Add2~18\ : std_logic;
SIGNAL \processador|ULA|Add2~22\ : std_logic;
SIGNAL \processador|ULA|Add2~26\ : std_logic;
SIGNAL \processador|ULA|Add2~30\ : std_logic;
SIGNAL \processador|ULA|Add2~34\ : std_logic;
SIGNAL \processador|ULA|Add2~38\ : std_logic;
SIGNAL \processador|ULA|Add2~42\ : std_logic;
SIGNAL \processador|ULA|Add2~46\ : std_logic;
SIGNAL \processador|ULA|Add2~50\ : std_logic;
SIGNAL \processador|ULA|Add2~54\ : std_logic;
SIGNAL \processador|ULA|Add2~58\ : std_logic;
SIGNAL \processador|ULA|Add2~62\ : std_logic;
SIGNAL \processador|ULA|Add2~66\ : std_logic;
SIGNAL \processador|ULA|Add2~70\ : std_logic;
SIGNAL \processador|ULA|Add2~74\ : std_logic;
SIGNAL \processador|ULA|Add2~78\ : std_logic;
SIGNAL \processador|ULA|Add2~82\ : std_logic;
SIGNAL \processador|ULA|Add2~86\ : std_logic;
SIGNAL \processador|ULA|Add2~90\ : std_logic;
SIGNAL \processador|ULA|Add2~94\ : std_logic;
SIGNAL \processador|ULA|Add2~98\ : std_logic;
SIGNAL \processador|ULA|Add2~102\ : std_logic;
SIGNAL \processador|ULA|Add2~106\ : std_logic;
SIGNAL \processador|ULA|Add2~110\ : std_logic;
SIGNAL \processador|ULA|Add2~114\ : std_logic;
SIGNAL \processador|ULA|Add2~118\ : std_logic;
SIGNAL \processador|ULA|Add2~121_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~126_cout\ : std_logic;
SIGNAL \processador|ULA|Add0~2\ : std_logic;
SIGNAL \processador|ULA|Add0~6\ : std_logic;
SIGNAL \processador|ULA|Add0~10\ : std_logic;
SIGNAL \processador|ULA|Add0~14\ : std_logic;
SIGNAL \processador|ULA|Add0~18\ : std_logic;
SIGNAL \processador|ULA|Add0~22\ : std_logic;
SIGNAL \processador|ULA|Add0~26\ : std_logic;
SIGNAL \processador|ULA|Add0~30\ : std_logic;
SIGNAL \processador|ULA|Add0~34\ : std_logic;
SIGNAL \processador|ULA|Add0~38\ : std_logic;
SIGNAL \processador|ULA|Add0~42\ : std_logic;
SIGNAL \processador|ULA|Add0~46\ : std_logic;
SIGNAL \processador|ULA|Add0~50\ : std_logic;
SIGNAL \processador|ULA|Add0~54\ : std_logic;
SIGNAL \processador|ULA|Add0~58\ : std_logic;
SIGNAL \processador|ULA|Add0~62\ : std_logic;
SIGNAL \processador|ULA|Add0~66\ : std_logic;
SIGNAL \processador|ULA|Add0~70\ : std_logic;
SIGNAL \processador|ULA|Add0~74\ : std_logic;
SIGNAL \processador|ULA|Add0~78\ : std_logic;
SIGNAL \processador|ULA|Add0~82\ : std_logic;
SIGNAL \processador|ULA|Add0~86\ : std_logic;
SIGNAL \processador|ULA|Add0~90\ : std_logic;
SIGNAL \processador|ULA|Add0~94\ : std_logic;
SIGNAL \processador|ULA|Add0~98\ : std_logic;
SIGNAL \processador|ULA|Add0~102\ : std_logic;
SIGNAL \processador|ULA|Add0~106\ : std_logic;
SIGNAL \processador|ULA|Add0~110\ : std_logic;
SIGNAL \processador|ULA|Add0~113_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[29]~55_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~324_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~68_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1161_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1136_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1135_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[30]~14_combout\ : std_logic;
SIGNAL \processador|ULA|saida[30]~56_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~114\ : std_logic;
SIGNAL \processador|ULA|Add0~117_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~122\ : std_logic;
SIGNAL \processador|ULA|Add2~125_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[30]~57_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~33_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[7]~18_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~37_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[8]~19_combout\ : std_logic;
SIGNAL \processador|ULA|saida[16]~28_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~61_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~69_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[16]~29_combout\ : std_logic;
SIGNAL \processador|ULA|saida[17]~30_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~73_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~65_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[17]~31_combout\ : std_logic;
SIGNAL \processador|ULA|saida[18]~32_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~69_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~77_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[18]~33_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~9_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~4_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl[1]~0_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~5_combout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~6_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~7_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~8_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~9_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~49_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~41_sumout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~2_combout\ : std_logic;
SIGNAL \processador|ULA|saida[19]~34_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~81_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~73_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[19]~35_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~57_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~13_sumout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~11_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~49_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~105_sumout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~6_combout\ : std_logic;
SIGNAL \processador|ULA|saida[5]~15_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~25_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[5]~16_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~12_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~17_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[3]~13_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~45_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~33_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~41_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~37_sumout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~1_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~53_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~45_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[12]~23_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~53_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~61_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[14]~25_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~7_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~101_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[24]~44_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~93_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[24]~45_combout\ : std_logic;
SIGNAL \processador|ULA|saida[25]~46_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~97_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[25]~60_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~3_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ULActrl[2]~2_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~5_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~325_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~69_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1162_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1141_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|registrador~1140_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|saidaA[31]~15_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~126\ : std_logic;
SIGNAL \processador|ULA|Add2~1_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[20]~36_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~77_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~85_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[20]~37_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~89_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[21]~38_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~81_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[21]~39_combout\ : std_logic;
SIGNAL \processador|ULA|saida[26]~48_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~109_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~101_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[26]~49_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~4_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~21_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[4]~14_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~57_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA|Add2~29_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[6]~17_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~65_sumout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~8_combout\ : std_logic;
SIGNAL \processador|ULA|saida[23]~42_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~97_sumout\ : std_logic;
SIGNAL \processador|ULA|Add0~89_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[23]~43_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~93_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[22]~40_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~85_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[22]~41_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~113_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[27]~50_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~105_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[27]~51_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~109_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[28]~52_combout\ : std_logic;
SIGNAL \processador|ULA|Add2~117_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[28]~53_combout\ : std_logic;
SIGNAL \processador|ULA|saida[31]~58_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~118\ : std_logic;
SIGNAL \processador|ULA|Add0~121_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[31]~59_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~10_combout\ : std_logic;
SIGNAL \processador|selMUX_AND_BEQ~5_combout\ : std_logic;
SIGNAL \processador|ROM_mips|memROM~3_combout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~1_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|somadorPC|Add0~22\ : std_logic;
SIGNAL \processador|somadorPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~18\ : std_logic;
SIGNAL \processador|somador_somador|Add0~21_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~26\ : std_logic;
SIGNAL \processador|somadorPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~22\ : std_logic;
SIGNAL \processador|somador_somador|Add0~25_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~30\ : std_logic;
SIGNAL \processador|somadorPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~26\ : std_logic;
SIGNAL \processador|somador_somador|Add0~29_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|somadorPC|Add0~34\ : std_logic;
SIGNAL \processador|somadorPC|Add0~37_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~30\ : std_logic;
SIGNAL \processador|somador_somador|Add0~33_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~38\ : std_logic;
SIGNAL \processador|somadorPC|Add0~41_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~34\ : std_logic;
SIGNAL \processador|somador_somador|Add0~37_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~42\ : std_logic;
SIGNAL \processador|somadorPC|Add0~45_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~38\ : std_logic;
SIGNAL \processador|somador_somador|Add0~41_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~46\ : std_logic;
SIGNAL \processador|somadorPC|Add0~49_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~42\ : std_logic;
SIGNAL \processador|somador_somador|Add0~45_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~50\ : std_logic;
SIGNAL \processador|somadorPC|Add0~53_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~46\ : std_logic;
SIGNAL \processador|somador_somador|Add0~49_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~54\ : std_logic;
SIGNAL \processador|somadorPC|Add0~57_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~50\ : std_logic;
SIGNAL \processador|somador_somador|Add0~53_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~58\ : std_logic;
SIGNAL \processador|somadorPC|Add0~61_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~54\ : std_logic;
SIGNAL \processador|somador_somador|Add0~57_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~62\ : std_logic;
SIGNAL \processador|somadorPC|Add0~65_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~58\ : std_logic;
SIGNAL \processador|somador_somador|Add0~61_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~66\ : std_logic;
SIGNAL \processador|somadorPC|Add0~69_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~62\ : std_logic;
SIGNAL \processador|somador_somador|Add0~65_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~70\ : std_logic;
SIGNAL \processador|somadorPC|Add0~73_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~66\ : std_logic;
SIGNAL \processador|somador_somador|Add0~69_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~74\ : std_logic;
SIGNAL \processador|somadorPC|Add0~77_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~70\ : std_logic;
SIGNAL \processador|somador_somador|Add0~73_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~78\ : std_logic;
SIGNAL \processador|somadorPC|Add0~81_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~74\ : std_logic;
SIGNAL \processador|somador_somador|Add0~77_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~82\ : std_logic;
SIGNAL \processador|somadorPC|Add0~85_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~78\ : std_logic;
SIGNAL \processador|somador_somador|Add0~81_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~86\ : std_logic;
SIGNAL \processador|somadorPC|Add0~89_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~82\ : std_logic;
SIGNAL \processador|somador_somador|Add0~85_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~90\ : std_logic;
SIGNAL \processador|somadorPC|Add0~93_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~86\ : std_logic;
SIGNAL \processador|somador_somador|Add0~89_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~94\ : std_logic;
SIGNAL \processador|somadorPC|Add0~97_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~90\ : std_logic;
SIGNAL \processador|somador_somador|Add0~93_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~98\ : std_logic;
SIGNAL \processador|somadorPC|Add0~101_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~94\ : std_logic;
SIGNAL \processador|somador_somador|Add0~97_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~102\ : std_logic;
SIGNAL \processador|somadorPC|Add0~105_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~98\ : std_logic;
SIGNAL \processador|somador_somador|Add0~101_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~106\ : std_logic;
SIGNAL \processador|somadorPC|Add0~109_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~102\ : std_logic;
SIGNAL \processador|somador_somador|Add0~105_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~110\ : std_logic;
SIGNAL \processador|somadorPC|Add0~113_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~106\ : std_logic;
SIGNAL \processador|somador_somador|Add0~109_sumout\ : std_logic;
SIGNAL \processador|somadorPC|Add0~114\ : std_logic;
SIGNAL \processador|somadorPC|Add0~117_sumout\ : std_logic;
SIGNAL \processador|somador_somador|Add0~110\ : std_logic;
SIGNAL \processador|somador_somador|Add0~113_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[0]~2_combout\ : std_logic;
SIGNAL \processador|ULA|saida[1]~9_combout\ : std_logic;
SIGNAL \processador|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA|saida[2]~61_combout\ : std_logic;
SIGNAL \processador|ULA|saida[9]~20_combout\ : std_logic;
SIGNAL \processador|ULA|saida[10]~21_combout\ : std_logic;
SIGNAL \processador|ULA|saida[11]~22_combout\ : std_logic;
SIGNAL \processador|ULA|saida[13]~24_combout\ : std_logic;
SIGNAL \processador|ULA|saida[15]~26_combout\ : std_logic;
SIGNAL \processador|ULA|saida[25]~47_combout\ : std_logic;
SIGNAL \processador|PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \processador|UC|palavraControle\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~67DUPLICATE_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~311DUPLICATE_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~55DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|UC|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~11_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~10_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~9_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~8_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~7_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1161_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1160_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1159_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1157_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1156_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1155_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1154_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1153_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1152_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1151_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1149_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1148_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1147_combout\ : std_logic;
SIGNAL \processador|UC|ALT_INV_palavraControle\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \processador|ROM_mips|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~4_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~3_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~2_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~1_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[25]~60_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[31]~59_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[31]~58_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[31]~15_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1140_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[30]~57_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[30]~56_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[30]~14_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1135_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[29]~55_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[29]~54_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[29]~13_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1130_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[28]~53_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[28]~52_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[28]~12_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1125_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[27]~51_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[27]~50_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[27]~11_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1120_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[26]~49_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[26]~48_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[26]~10_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1115_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[25]~46_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[25]~9_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[24]~45_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[24]~44_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[24]~8_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1105_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[23]~43_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[23]~42_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[23]~7_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1100_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[22]~41_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[22]~40_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[22]~6_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[21]~39_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[21]~38_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[21]~5_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[20]~37_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[20]~36_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[20]~4_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[19]~35_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[19]~34_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[19]~3_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[18]~33_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[18]~32_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[18]~2_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[17]~31_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[17]~30_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[17]~1_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[16]~29_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[16]~28_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[31]~27_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_saidaA[16]~0_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[14]~25_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[12]~23_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[8]~19_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[7]~18_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[6]~17_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[5]~16_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[5]~15_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[4]~14_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[3]~13_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[3]~12_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[2]~11_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[2]~10_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~8_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~7_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~5_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~4_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl~3_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl[2]~2_combout\ : std_logic;
SIGNAL \processador|ALT_INV_selMUX_AND_BEQ~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\ : std_logic;
SIGNAL \processador|UC_ULA|ALT_INV_ULActrl[1]~0_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \processador|ROM_mips|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \processador|somadorPC|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|somadorPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1141_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1136_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~125_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1131_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~121_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~117_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1121_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~113_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1116_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~109_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1111_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~105_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~101_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1101_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~97_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~93_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~89_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~85_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~81_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~77_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~73_sumout\ : std_logic;
SIGNAL \processador|bancoRegistrador|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~69_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~65_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \processador|ULA|ALT_INV_Add2~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
PC_out_out <= ww_PC_out_out;
barramentoEndout <= ww_barramentoEndout;
seletor_out_out <= ww_seletor_out_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\processador|bancoRegistrador|ALT_INV_registrador~67DUPLICATE_q\ <= NOT \processador|bancoRegistrador|registrador~67DUPLICATE_q\;
\processador|bancoRegistrador|ALT_INV_registrador~311DUPLICATE_q\ <= NOT \processador|bancoRegistrador|registrador~311DUPLICATE_q\;
\processador|bancoRegistrador|ALT_INV_registrador~55DUPLICATE_q\ <= NOT \processador|bancoRegistrador|registrador~55DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[11]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[11]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[7]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[6]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[5]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[4]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|UC|ALT_INV_Equal5~0_combout\ <= NOT \processador|UC|Equal5~0_combout\;
\processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\ <= NOT \processador|UC_ULA|ULActrl[0]~5_combout\;
\processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\ <= NOT \processador|MUX1|saida_MUX[31]~4_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~11_combout\ <= NOT \processador|selMUX_AND_BEQ~11_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~10_combout\ <= NOT \processador|selMUX_AND_BEQ~10_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~9_combout\ <= NOT \processador|selMUX_AND_BEQ~9_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~8_combout\ <= NOT \processador|selMUX_AND_BEQ~8_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~7_combout\ <= NOT \processador|selMUX_AND_BEQ~7_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~6_combout\ <= NOT \processador|selMUX_AND_BEQ~6_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1162_combout\ <= NOT \processador|bancoRegistrador|registrador~1162_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1161_combout\ <= NOT \processador|bancoRegistrador|registrador~1161_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1160_combout\ <= NOT \processador|bancoRegistrador|registrador~1160_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1159_combout\ <= NOT \processador|bancoRegistrador|registrador~1159_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1158_combout\ <= NOT \processador|bancoRegistrador|registrador~1158_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1157_combout\ <= NOT \processador|bancoRegistrador|registrador~1157_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1156_combout\ <= NOT \processador|bancoRegistrador|registrador~1156_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1155_combout\ <= NOT \processador|bancoRegistrador|registrador~1155_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1154_combout\ <= NOT \processador|bancoRegistrador|registrador~1154_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1153_combout\ <= NOT \processador|bancoRegistrador|registrador~1153_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1152_combout\ <= NOT \processador|bancoRegistrador|registrador~1152_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1151_combout\ <= NOT \processador|bancoRegistrador|registrador~1151_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1150_combout\ <= NOT \processador|bancoRegistrador|registrador~1150_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1149_combout\ <= NOT \processador|bancoRegistrador|registrador~1149_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1148_combout\ <= NOT \processador|bancoRegistrador|registrador~1148_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1147_combout\ <= NOT \processador|bancoRegistrador|registrador~1147_combout\;
\processador|UC|ALT_INV_palavraControle\(5) <= NOT \processador|UC|palavraControle\(5);
\processador|ROM_mips|ALT_INV_memROM~17_combout\ <= NOT \processador|ROM_mips|memROM~17_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~4_combout\ <= NOT \processador|selMUX_AND_BEQ~4_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~3_combout\ <= NOT \processador|selMUX_AND_BEQ~3_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~2_combout\ <= NOT \processador|selMUX_AND_BEQ~2_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~1_combout\ <= NOT \processador|selMUX_AND_BEQ~1_combout\;
\processador|ULA|ALT_INV_saida[25]~60_combout\ <= NOT \processador|ULA|saida[25]~60_combout\;
\processador|ULA|ALT_INV_saida[31]~59_combout\ <= NOT \processador|ULA|saida[31]~59_combout\;
\processador|ULA|ALT_INV_saida[31]~58_combout\ <= NOT \processador|ULA|saida[31]~58_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[31]~15_combout\ <= NOT \processador|bancoRegistrador|saidaA[31]~15_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1140_combout\ <= NOT \processador|bancoRegistrador|registrador~1140_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~325_q\ <= NOT \processador|bancoRegistrador|registrador~325_q\;
\processador|bancoRegistrador|ALT_INV_registrador~69_q\ <= NOT \processador|bancoRegistrador|registrador~69_q\;
\processador|ULA|ALT_INV_saida[30]~57_combout\ <= NOT \processador|ULA|saida[30]~57_combout\;
\processador|ULA|ALT_INV_saida[30]~56_combout\ <= NOT \processador|ULA|saida[30]~56_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[30]~14_combout\ <= NOT \processador|bancoRegistrador|saidaA[30]~14_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1135_combout\ <= NOT \processador|bancoRegistrador|registrador~1135_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~324_q\ <= NOT \processador|bancoRegistrador|registrador~324_q\;
\processador|bancoRegistrador|ALT_INV_registrador~68_q\ <= NOT \processador|bancoRegistrador|registrador~68_q\;
\processador|ULA|ALT_INV_saida[29]~55_combout\ <= NOT \processador|ULA|saida[29]~55_combout\;
\processador|ULA|ALT_INV_saida[29]~54_combout\ <= NOT \processador|ULA|saida[29]~54_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[29]~13_combout\ <= NOT \processador|bancoRegistrador|saidaA[29]~13_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1130_combout\ <= NOT \processador|bancoRegistrador|registrador~1130_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~323_q\ <= NOT \processador|bancoRegistrador|registrador~323_q\;
\processador|bancoRegistrador|ALT_INV_registrador~67_q\ <= NOT \processador|bancoRegistrador|registrador~67_q\;
\processador|ULA|ALT_INV_saida[28]~53_combout\ <= NOT \processador|ULA|saida[28]~53_combout\;
\processador|ULA|ALT_INV_saida[28]~52_combout\ <= NOT \processador|ULA|saida[28]~52_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[28]~12_combout\ <= NOT \processador|bancoRegistrador|saidaA[28]~12_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1125_combout\ <= NOT \processador|bancoRegistrador|registrador~1125_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~322_q\ <= NOT \processador|bancoRegistrador|registrador~322_q\;
\processador|bancoRegistrador|ALT_INV_registrador~66_q\ <= NOT \processador|bancoRegistrador|registrador~66_q\;
\processador|ULA|ALT_INV_saida[27]~51_combout\ <= NOT \processador|ULA|saida[27]~51_combout\;
\processador|ULA|ALT_INV_saida[27]~50_combout\ <= NOT \processador|ULA|saida[27]~50_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[27]~11_combout\ <= NOT \processador|bancoRegistrador|saidaA[27]~11_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1120_combout\ <= NOT \processador|bancoRegistrador|registrador~1120_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~321_q\ <= NOT \processador|bancoRegistrador|registrador~321_q\;
\processador|bancoRegistrador|ALT_INV_registrador~65_q\ <= NOT \processador|bancoRegistrador|registrador~65_q\;
\processador|ULA|ALT_INV_saida[26]~49_combout\ <= NOT \processador|ULA|saida[26]~49_combout\;
\processador|ULA|ALT_INV_saida[26]~48_combout\ <= NOT \processador|ULA|saida[26]~48_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[26]~10_combout\ <= NOT \processador|bancoRegistrador|saidaA[26]~10_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1115_combout\ <= NOT \processador|bancoRegistrador|registrador~1115_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~320_q\ <= NOT \processador|bancoRegistrador|registrador~320_q\;
\processador|bancoRegistrador|ALT_INV_registrador~64_q\ <= NOT \processador|bancoRegistrador|registrador~64_q\;
\processador|ULA|ALT_INV_saida[25]~46_combout\ <= NOT \processador|ULA|saida[25]~46_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[25]~9_combout\ <= NOT \processador|bancoRegistrador|saidaA[25]~9_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1110_combout\ <= NOT \processador|bancoRegistrador|registrador~1110_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~319_q\ <= NOT \processador|bancoRegistrador|registrador~319_q\;
\processador|bancoRegistrador|ALT_INV_registrador~63_q\ <= NOT \processador|bancoRegistrador|registrador~63_q\;
\processador|ULA|ALT_INV_saida[24]~45_combout\ <= NOT \processador|ULA|saida[24]~45_combout\;
\processador|ULA|ALT_INV_saida[24]~44_combout\ <= NOT \processador|ULA|saida[24]~44_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[24]~8_combout\ <= NOT \processador|bancoRegistrador|saidaA[24]~8_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1105_combout\ <= NOT \processador|bancoRegistrador|registrador~1105_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~318_q\ <= NOT \processador|bancoRegistrador|registrador~318_q\;
\processador|bancoRegistrador|ALT_INV_registrador~62_q\ <= NOT \processador|bancoRegistrador|registrador~62_q\;
\processador|ULA|ALT_INV_saida[23]~43_combout\ <= NOT \processador|ULA|saida[23]~43_combout\;
\processador|ULA|ALT_INV_saida[23]~42_combout\ <= NOT \processador|ULA|saida[23]~42_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[23]~7_combout\ <= NOT \processador|bancoRegistrador|saidaA[23]~7_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1100_combout\ <= NOT \processador|bancoRegistrador|registrador~1100_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~317_q\ <= NOT \processador|bancoRegistrador|registrador~317_q\;
\processador|bancoRegistrador|ALT_INV_registrador~61_q\ <= NOT \processador|bancoRegistrador|registrador~61_q\;
\processador|ULA|ALT_INV_saida[22]~41_combout\ <= NOT \processador|ULA|saida[22]~41_combout\;
\processador|ULA|ALT_INV_saida[22]~40_combout\ <= NOT \processador|ULA|saida[22]~40_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[22]~6_combout\ <= NOT \processador|bancoRegistrador|saidaA[22]~6_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1095_combout\ <= NOT \processador|bancoRegistrador|registrador~1095_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~316_q\ <= NOT \processador|bancoRegistrador|registrador~316_q\;
\processador|bancoRegistrador|ALT_INV_registrador~60_q\ <= NOT \processador|bancoRegistrador|registrador~60_q\;
\processador|ULA|ALT_INV_saida[21]~39_combout\ <= NOT \processador|ULA|saida[21]~39_combout\;
\processador|ULA|ALT_INV_saida[21]~38_combout\ <= NOT \processador|ULA|saida[21]~38_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[21]~5_combout\ <= NOT \processador|bancoRegistrador|saidaA[21]~5_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1090_combout\ <= NOT \processador|bancoRegistrador|registrador~1090_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~315_q\ <= NOT \processador|bancoRegistrador|registrador~315_q\;
\processador|bancoRegistrador|ALT_INV_registrador~59_q\ <= NOT \processador|bancoRegistrador|registrador~59_q\;
\processador|ULA|ALT_INV_saida[20]~37_combout\ <= NOT \processador|ULA|saida[20]~37_combout\;
\processador|ULA|ALT_INV_saida[20]~36_combout\ <= NOT \processador|ULA|saida[20]~36_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[20]~4_combout\ <= NOT \processador|bancoRegistrador|saidaA[20]~4_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1085_combout\ <= NOT \processador|bancoRegistrador|registrador~1085_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~314_q\ <= NOT \processador|bancoRegistrador|registrador~314_q\;
\processador|bancoRegistrador|ALT_INV_registrador~58_q\ <= NOT \processador|bancoRegistrador|registrador~58_q\;
\processador|ULA|ALT_INV_saida[19]~35_combout\ <= NOT \processador|ULA|saida[19]~35_combout\;
\processador|ULA|ALT_INV_saida[19]~34_combout\ <= NOT \processador|ULA|saida[19]~34_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[19]~3_combout\ <= NOT \processador|bancoRegistrador|saidaA[19]~3_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1080_combout\ <= NOT \processador|bancoRegistrador|registrador~1080_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~313_q\ <= NOT \processador|bancoRegistrador|registrador~313_q\;
\processador|bancoRegistrador|ALT_INV_registrador~57_q\ <= NOT \processador|bancoRegistrador|registrador~57_q\;
\processador|ULA|ALT_INV_saida[18]~33_combout\ <= NOT \processador|ULA|saida[18]~33_combout\;
\processador|ULA|ALT_INV_saida[18]~32_combout\ <= NOT \processador|ULA|saida[18]~32_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[18]~2_combout\ <= NOT \processador|bancoRegistrador|saidaA[18]~2_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1075_combout\ <= NOT \processador|bancoRegistrador|registrador~1075_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~312_q\ <= NOT \processador|bancoRegistrador|registrador~312_q\;
\processador|bancoRegistrador|ALT_INV_registrador~56_q\ <= NOT \processador|bancoRegistrador|registrador~56_q\;
\processador|ULA|ALT_INV_saida[17]~31_combout\ <= NOT \processador|ULA|saida[17]~31_combout\;
\processador|ULA|ALT_INV_saida[17]~30_combout\ <= NOT \processador|ULA|saida[17]~30_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[17]~1_combout\ <= NOT \processador|bancoRegistrador|saidaA[17]~1_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1070_combout\ <= NOT \processador|bancoRegistrador|registrador~1070_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~311_q\ <= NOT \processador|bancoRegistrador|registrador~311_q\;
\processador|bancoRegistrador|ALT_INV_registrador~55_q\ <= NOT \processador|bancoRegistrador|registrador~55_q\;
\processador|ULA|ALT_INV_saida[16]~29_combout\ <= NOT \processador|ULA|saida[16]~29_combout\;
\processador|ULA|ALT_INV_saida[16]~28_combout\ <= NOT \processador|ULA|saida[16]~28_combout\;
\processador|ULA|ALT_INV_saida[31]~27_combout\ <= NOT \processador|ULA|saida[31]~27_combout\;
\processador|bancoRegistrador|ALT_INV_saidaA[16]~0_combout\ <= NOT \processador|bancoRegistrador|saidaA[16]~0_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1065_combout\ <= NOT \processador|bancoRegistrador|registrador~1065_combout\;
\processador|ROM_mips|ALT_INV_memROM~16_combout\ <= NOT \processador|ROM_mips|memROM~16_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~310_q\ <= NOT \processador|bancoRegistrador|registrador~310_q\;
\processador|bancoRegistrador|ALT_INV_registrador~54_q\ <= NOT \processador|bancoRegistrador|registrador~54_q\;
\processador|ULA|ALT_INV_saida[14]~25_combout\ <= NOT \processador|ULA|saida[14]~25_combout\;
\processador|ULA|ALT_INV_saida[12]~23_combout\ <= NOT \processador|ULA|saida[12]~23_combout\;
\processador|ULA|ALT_INV_saida[8]~19_combout\ <= NOT \processador|ULA|saida[8]~19_combout\;
\processador|ULA|ALT_INV_saida[7]~18_combout\ <= NOT \processador|ULA|saida[7]~18_combout\;
\processador|ULA|ALT_INV_saida[6]~17_combout\ <= NOT \processador|ULA|saida[6]~17_combout\;
\processador|ULA|ALT_INV_saida[5]~16_combout\ <= NOT \processador|ULA|saida[5]~16_combout\;
\processador|ULA|ALT_INV_saida[5]~15_combout\ <= NOT \processador|ULA|saida[5]~15_combout\;
\processador|ULA|ALT_INV_saida[4]~14_combout\ <= NOT \processador|ULA|saida[4]~14_combout\;
\processador|ULA|ALT_INV_saida[3]~13_combout\ <= NOT \processador|ULA|saida[3]~13_combout\;
\processador|ULA|ALT_INV_saida[3]~12_combout\ <= NOT \processador|ULA|saida[3]~12_combout\;
\processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \processador|MUX1|saida_MUX[3]~3_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1064_combout\ <= NOT \processador|bancoRegistrador|registrador~1064_combout\;
\processador|ULA|ALT_INV_saida[2]~11_combout\ <= NOT \processador|ULA|saida[2]~11_combout\;
\processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \processador|MUX1|saida_MUX[2]~2_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1063_combout\ <= NOT \processador|bancoRegistrador|registrador~1063_combout\;
\processador|ULA|ALT_INV_saida[2]~10_combout\ <= NOT \processador|ULA|saida[2]~10_combout\;
\processador|ULA|ALT_INV_saida[1]~8_combout\ <= NOT \processador|ULA|saida[1]~8_combout\;
\processador|ULA|ALT_INV_saida[1]~7_combout\ <= NOT \processador|ULA|saida[1]~7_combout\;
\processador|ULA|ALT_INV_saida[3]~6_combout\ <= NOT \processador|ULA|saida[3]~6_combout\;
\processador|ROM_mips|ALT_INV_memROM~15_combout\ <= NOT \processador|ROM_mips|memROM~15_combout\;
\processador|ULA|ALT_INV_saida[1]~5_combout\ <= NOT \processador|ULA|saida[1]~5_combout\;
\processador|ULA|ALT_INV_saida[1]~4_combout\ <= NOT \processador|ULA|saida[1]~4_combout\;
\processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\ <= NOT \processador|UC_ULA|ULActrl[1]~4_combout\;
\processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \processador|MUX1|saida_MUX[1]~1_combout\;
\processador|bancoRegistrador|ALT_INV_registrador~1062_combout\ <= NOT \processador|bancoRegistrador|registrador~1062_combout\;
\processador|ULA|ALT_INV_saida[1]~3_combout\ <= NOT \processador|ULA|saida[1]~3_combout\;
\processador|ULA|ALT_INV_saida[0]~1_combout\ <= NOT \processador|ULA|saida[0]~1_combout\;
\processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \processador|MUX1|saida_MUX[0]~0_combout\;
\processador|bancoRegistrador|ALT_INV_Equal1~0_combout\ <= NOT \processador|bancoRegistrador|Equal1~0_combout\;
\processador|ROM_mips|ALT_INV_memROM~14_combout\ <= NOT \processador|ROM_mips|memROM~14_combout\;
\processador|ROM_mips|ALT_INV_memROM~13_combout\ <= NOT \processador|ROM_mips|memROM~13_combout\;
\processador|ULA|ALT_INV_saida[0]~0_combout\ <= NOT \processador|ULA|saida[0]~0_combout\;
\processador|ROM_mips|ALT_INV_memROM~12_combout\ <= NOT \processador|ROM_mips|memROM~12_combout\;
\processador|UC_ULA|ALT_INV_ULActrl~3_combout\ <= NOT \processador|UC_ULA|ULActrl~3_combout\;
\processador|UC_ULA|ALT_INV_ULActrl[2]~2_combout\ <= NOT \processador|UC_ULA|ULActrl[2]~2_combout\;
\processador|ALT_INV_selMUX_AND_BEQ~0_combout\ <= NOT \processador|selMUX_AND_BEQ~0_combout\;
\processador|ROM_mips|ALT_INV_memROM~11_combout\ <= NOT \processador|ROM_mips|memROM~11_combout\;
\processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\ <= NOT \processador|UC_ULA|ULActrl[1]~1_combout\;
\processador|UC_ULA|ALT_INV_ULActrl[1]~0_combout\ <= NOT \processador|UC_ULA|ULActrl[1]~0_combout\;
\processador|ROM_mips|ALT_INV_memROM~10_combout\ <= NOT \processador|ROM_mips|memROM~10_combout\;
\processador|ROM_mips|ALT_INV_memROM~9_combout\ <= NOT \processador|ROM_mips|memROM~9_combout\;
\processador|ROM_mips|ALT_INV_memROM~8_combout\ <= NOT \processador|ROM_mips|memROM~8_combout\;
\processador|ROM_mips|ALT_INV_memROM~7_combout\ <= NOT \processador|ROM_mips|memROM~7_combout\;
\processador|ROM_mips|ALT_INV_memROM~6_combout\ <= NOT \processador|ROM_mips|memROM~6_combout\;
\processador|ROM_mips|ALT_INV_memROM~5_combout\ <= NOT \processador|ROM_mips|memROM~5_combout\;
\processador|ROM_mips|ALT_INV_memROM~4_combout\ <= NOT \processador|ROM_mips|memROM~4_combout\;
\processador|ROM_mips|ALT_INV_memROM~3_combout\ <= NOT \processador|ROM_mips|memROM~3_combout\;
\processador|ROM_mips|ALT_INV_memROM~2_combout\ <= NOT \processador|ROM_mips|memROM~2_combout\;
\processador|ROM_mips|ALT_INV_memROM~1_combout\ <= NOT \processador|ROM_mips|memROM~1_combout\;
\processador|ROM_mips|ALT_INV_memROM~0_combout\ <= NOT \processador|ROM_mips|memROM~0_combout\;
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|somadorPC|ALT_INV_Add0~117_sumout\ <= NOT \processador|somadorPC|Add0~117_sumout\;
\processador|somadorPC|ALT_INV_Add0~113_sumout\ <= NOT \processador|somadorPC|Add0~113_sumout\;
\processador|somadorPC|ALT_INV_Add0~109_sumout\ <= NOT \processador|somadorPC|Add0~109_sumout\;
\processador|somadorPC|ALT_INV_Add0~105_sumout\ <= NOT \processador|somadorPC|Add0~105_sumout\;
\processador|somadorPC|ALT_INV_Add0~101_sumout\ <= NOT \processador|somadorPC|Add0~101_sumout\;
\processador|somadorPC|ALT_INV_Add0~97_sumout\ <= NOT \processador|somadorPC|Add0~97_sumout\;
\processador|somadorPC|ALT_INV_Add0~93_sumout\ <= NOT \processador|somadorPC|Add0~93_sumout\;
\processador|somadorPC|ALT_INV_Add0~89_sumout\ <= NOT \processador|somadorPC|Add0~89_sumout\;
\processador|somadorPC|ALT_INV_Add0~85_sumout\ <= NOT \processador|somadorPC|Add0~85_sumout\;
\processador|somadorPC|ALT_INV_Add0~81_sumout\ <= NOT \processador|somadorPC|Add0~81_sumout\;
\processador|somadorPC|ALT_INV_Add0~77_sumout\ <= NOT \processador|somadorPC|Add0~77_sumout\;
\processador|somadorPC|ALT_INV_Add0~73_sumout\ <= NOT \processador|somadorPC|Add0~73_sumout\;
\processador|somadorPC|ALT_INV_Add0~69_sumout\ <= NOT \processador|somadorPC|Add0~69_sumout\;
\processador|somadorPC|ALT_INV_Add0~65_sumout\ <= NOT \processador|somadorPC|Add0~65_sumout\;
\processador|somadorPC|ALT_INV_Add0~61_sumout\ <= NOT \processador|somadorPC|Add0~61_sumout\;
\processador|somadorPC|ALT_INV_Add0~57_sumout\ <= NOT \processador|somadorPC|Add0~57_sumout\;
\processador|somadorPC|ALT_INV_Add0~53_sumout\ <= NOT \processador|somadorPC|Add0~53_sumout\;
\processador|somadorPC|ALT_INV_Add0~49_sumout\ <= NOT \processador|somadorPC|Add0~49_sumout\;
\processador|somadorPC|ALT_INV_Add0~45_sumout\ <= NOT \processador|somadorPC|Add0~45_sumout\;
\processador|somadorPC|ALT_INV_Add0~41_sumout\ <= NOT \processador|somadorPC|Add0~41_sumout\;
\processador|somadorPC|ALT_INV_Add0~37_sumout\ <= NOT \processador|somadorPC|Add0~37_sumout\;
\processador|somadorPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|somadorPC|Add0~33_sumout\;
\processador|somadorPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|somadorPC|Add0~29_sumout\;
\processador|somadorPC|ALT_INV_Add0~25_sumout\ <= NOT \processador|somadorPC|Add0~25_sumout\;
\processador|somadorPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|somadorPC|Add0~21_sumout\;
\processador|somadorPC|ALT_INV_Add0~17_sumout\ <= NOT \processador|somadorPC|Add0~17_sumout\;
\processador|somadorPC|ALT_INV_Add0~13_sumout\ <= NOT \processador|somadorPC|Add0~13_sumout\;
\processador|somadorPC|ALT_INV_Add0~9_sumout\ <= NOT \processador|somadorPC|Add0~9_sumout\;
\processador|somadorPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|somadorPC|Add0~5_sumout\;
\processador|somadorPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|somadorPC|Add0~1_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1141_combout\ <= NOT \processador|bancoRegistrador|registrador~1141_combout\;
\processador|ULA|ALT_INV_Add0~121_sumout\ <= NOT \processador|ULA|Add0~121_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1136_combout\ <= NOT \processador|bancoRegistrador|registrador~1136_combout\;
\processador|ULA|ALT_INV_Add0~117_sumout\ <= NOT \processador|ULA|Add0~117_sumout\;
\processador|ULA|ALT_INV_Add2~125_sumout\ <= NOT \processador|ULA|Add2~125_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1131_combout\ <= NOT \processador|bancoRegistrador|registrador~1131_combout\;
\processador|ULA|ALT_INV_Add0~113_sumout\ <= NOT \processador|ULA|Add0~113_sumout\;
\processador|ULA|ALT_INV_Add2~121_sumout\ <= NOT \processador|ULA|Add2~121_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1126_combout\ <= NOT \processador|bancoRegistrador|registrador~1126_combout\;
\processador|ULA|ALT_INV_Add0~109_sumout\ <= NOT \processador|ULA|Add0~109_sumout\;
\processador|ULA|ALT_INV_Add2~117_sumout\ <= NOT \processador|ULA|Add2~117_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1121_combout\ <= NOT \processador|bancoRegistrador|registrador~1121_combout\;
\processador|ULA|ALT_INV_Add0~105_sumout\ <= NOT \processador|ULA|Add0~105_sumout\;
\processador|ULA|ALT_INV_Add2~113_sumout\ <= NOT \processador|ULA|Add2~113_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1116_combout\ <= NOT \processador|bancoRegistrador|registrador~1116_combout\;
\processador|ULA|ALT_INV_Add0~101_sumout\ <= NOT \processador|ULA|Add0~101_sumout\;
\processador|ULA|ALT_INV_Add2~109_sumout\ <= NOT \processador|ULA|Add2~109_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1111_combout\ <= NOT \processador|bancoRegistrador|registrador~1111_combout\;
\processador|ULA|ALT_INV_Add0~97_sumout\ <= NOT \processador|ULA|Add0~97_sumout\;
\processador|ULA|ALT_INV_Add2~105_sumout\ <= NOT \processador|ULA|Add2~105_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1106_combout\ <= NOT \processador|bancoRegistrador|registrador~1106_combout\;
\processador|ULA|ALT_INV_Add0~93_sumout\ <= NOT \processador|ULA|Add0~93_sumout\;
\processador|ULA|ALT_INV_Add2~101_sumout\ <= NOT \processador|ULA|Add2~101_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1101_combout\ <= NOT \processador|bancoRegistrador|registrador~1101_combout\;
\processador|ULA|ALT_INV_Add0~89_sumout\ <= NOT \processador|ULA|Add0~89_sumout\;
\processador|ULA|ALT_INV_Add2~97_sumout\ <= NOT \processador|ULA|Add2~97_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1096_combout\ <= NOT \processador|bancoRegistrador|registrador~1096_combout\;
\processador|ULA|ALT_INV_Add0~85_sumout\ <= NOT \processador|ULA|Add0~85_sumout\;
\processador|ULA|ALT_INV_Add2~93_sumout\ <= NOT \processador|ULA|Add2~93_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1091_combout\ <= NOT \processador|bancoRegistrador|registrador~1091_combout\;
\processador|ULA|ALT_INV_Add0~81_sumout\ <= NOT \processador|ULA|Add0~81_sumout\;
\processador|ULA|ALT_INV_Add2~89_sumout\ <= NOT \processador|ULA|Add2~89_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1086_combout\ <= NOT \processador|bancoRegistrador|registrador~1086_combout\;
\processador|ULA|ALT_INV_Add0~77_sumout\ <= NOT \processador|ULA|Add0~77_sumout\;
\processador|ULA|ALT_INV_Add2~85_sumout\ <= NOT \processador|ULA|Add2~85_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1081_combout\ <= NOT \processador|bancoRegistrador|registrador~1081_combout\;
\processador|ULA|ALT_INV_Add0~73_sumout\ <= NOT \processador|ULA|Add0~73_sumout\;
\processador|ULA|ALT_INV_Add2~81_sumout\ <= NOT \processador|ULA|Add2~81_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1076_combout\ <= NOT \processador|bancoRegistrador|registrador~1076_combout\;
\processador|ULA|ALT_INV_Add0~69_sumout\ <= NOT \processador|ULA|Add0~69_sumout\;
\processador|ULA|ALT_INV_Add2~77_sumout\ <= NOT \processador|ULA|Add2~77_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1071_combout\ <= NOT \processador|bancoRegistrador|registrador~1071_combout\;
\processador|ULA|ALT_INV_Add0~65_sumout\ <= NOT \processador|ULA|Add0~65_sumout\;
\processador|ULA|ALT_INV_Add2~73_sumout\ <= NOT \processador|ULA|Add2~73_sumout\;
\processador|bancoRegistrador|ALT_INV_registrador~1066_combout\ <= NOT \processador|bancoRegistrador|registrador~1066_combout\;
\processador|ULA|ALT_INV_Add0~61_sumout\ <= NOT \processador|ULA|Add0~61_sumout\;
\processador|ULA|ALT_INV_Add2~69_sumout\ <= NOT \processador|ULA|Add2~69_sumout\;
\processador|ULA|ALT_INV_Add0~57_sumout\ <= NOT \processador|ULA|Add0~57_sumout\;
\processador|ULA|ALT_INV_Add2~65_sumout\ <= NOT \processador|ULA|Add2~65_sumout\;
\processador|ULA|ALT_INV_Add0~53_sumout\ <= NOT \processador|ULA|Add0~53_sumout\;
\processador|ULA|ALT_INV_Add2~61_sumout\ <= NOT \processador|ULA|Add2~61_sumout\;
\processador|ULA|ALT_INV_Add0~49_sumout\ <= NOT \processador|ULA|Add0~49_sumout\;
\processador|ULA|ALT_INV_Add2~57_sumout\ <= NOT \processador|ULA|Add2~57_sumout\;
\processador|ULA|ALT_INV_Add0~45_sumout\ <= NOT \processador|ULA|Add0~45_sumout\;
\processador|ULA|ALT_INV_Add2~53_sumout\ <= NOT \processador|ULA|Add2~53_sumout\;
\processador|ULA|ALT_INV_Add0~41_sumout\ <= NOT \processador|ULA|Add0~41_sumout\;
\processador|ULA|ALT_INV_Add2~49_sumout\ <= NOT \processador|ULA|Add2~49_sumout\;
\processador|ULA|ALT_INV_Add0~37_sumout\ <= NOT \processador|ULA|Add0~37_sumout\;
\processador|ULA|ALT_INV_Add2~45_sumout\ <= NOT \processador|ULA|Add2~45_sumout\;
\processador|ULA|ALT_INV_Add0~33_sumout\ <= NOT \processador|ULA|Add0~33_sumout\;
\processador|ULA|ALT_INV_Add2~41_sumout\ <= NOT \processador|ULA|Add2~41_sumout\;
\processador|ULA|ALT_INV_Add0~29_sumout\ <= NOT \processador|ULA|Add0~29_sumout\;
\processador|ULA|ALT_INV_Add2~37_sumout\ <= NOT \processador|ULA|Add2~37_sumout\;
\processador|ULA|ALT_INV_Add0~25_sumout\ <= NOT \processador|ULA|Add0~25_sumout\;
\processador|ULA|ALT_INV_Add2~33_sumout\ <= NOT \processador|ULA|Add2~33_sumout\;
\processador|ULA|ALT_INV_Add0~21_sumout\ <= NOT \processador|ULA|Add0~21_sumout\;
\processador|ULA|ALT_INV_Add2~29_sumout\ <= NOT \processador|ULA|Add2~29_sumout\;
\processador|ULA|ALT_INV_Add0~17_sumout\ <= NOT \processador|ULA|Add0~17_sumout\;
\processador|ULA|ALT_INV_Add2~25_sumout\ <= NOT \processador|ULA|Add2~25_sumout\;
\processador|ULA|ALT_INV_Add0~13_sumout\ <= NOT \processador|ULA|Add0~13_sumout\;
\processador|ULA|ALT_INV_Add2~21_sumout\ <= NOT \processador|ULA|Add2~21_sumout\;
\processador|ULA|ALT_INV_Add0~9_sumout\ <= NOT \processador|ULA|Add0~9_sumout\;
\processador|ULA|ALT_INV_Add2~17_sumout\ <= NOT \processador|ULA|Add2~17_sumout\;
\processador|ULA|ALT_INV_Add0~5_sumout\ <= NOT \processador|ULA|Add0~5_sumout\;
\processador|ULA|ALT_INV_Add2~13_sumout\ <= NOT \processador|ULA|Add2~13_sumout\;
\processador|ULA|ALT_INV_Add0~1_sumout\ <= NOT \processador|ULA|Add0~1_sumout\;
\processador|ULA|ALT_INV_Add2~9_sumout\ <= NOT \processador|ULA|Add2~9_sumout\;
\processador|ULA|ALT_INV_Add2~5_sumout\ <= NOT \processador|ULA|Add2~5_sumout\;
\processador|ULA|ALT_INV_Add2~1_sumout\ <= NOT \processador|ULA|Add2~1_sumout\;
\processador|PC|ALT_INV_DOUT\(31) <= NOT \processador|PC|DOUT\(31);
\processador|PC|ALT_INV_DOUT\(30) <= NOT \processador|PC|DOUT\(30);
\processador|PC|ALT_INV_DOUT\(29) <= NOT \processador|PC|DOUT\(29);
\processador|PC|ALT_INV_DOUT\(28) <= NOT \processador|PC|DOUT\(28);
\processador|PC|ALT_INV_DOUT\(27) <= NOT \processador|PC|DOUT\(27);
\processador|PC|ALT_INV_DOUT\(26) <= NOT \processador|PC|DOUT\(26);
\processador|PC|ALT_INV_DOUT\(25) <= NOT \processador|PC|DOUT\(25);
\processador|PC|ALT_INV_DOUT\(24) <= NOT \processador|PC|DOUT\(24);
\processador|PC|ALT_INV_DOUT\(23) <= NOT \processador|PC|DOUT\(23);
\processador|PC|ALT_INV_DOUT\(22) <= NOT \processador|PC|DOUT\(22);
\processador|PC|ALT_INV_DOUT\(21) <= NOT \processador|PC|DOUT\(21);
\processador|PC|ALT_INV_DOUT\(20) <= NOT \processador|PC|DOUT\(20);
\processador|PC|ALT_INV_DOUT\(19) <= NOT \processador|PC|DOUT\(19);
\processador|PC|ALT_INV_DOUT\(18) <= NOT \processador|PC|DOUT\(18);
\processador|PC|ALT_INV_DOUT\(17) <= NOT \processador|PC|DOUT\(17);
\processador|PC|ALT_INV_DOUT\(16) <= NOT \processador|PC|DOUT\(16);
\processador|PC|ALT_INV_DOUT\(15) <= NOT \processador|PC|DOUT\(15);
\processador|PC|ALT_INV_DOUT\(14) <= NOT \processador|PC|DOUT\(14);
\processador|PC|ALT_INV_DOUT\(13) <= NOT \processador|PC|DOUT\(13);
\processador|PC|ALT_INV_DOUT\(12) <= NOT \processador|PC|DOUT\(12);
\processador|PC|ALT_INV_DOUT\(10) <= NOT \processador|PC|DOUT\(10);
\processador|PC|ALT_INV_DOUT\(9) <= NOT \processador|PC|DOUT\(9);
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);

-- Location: IOOBUF_X51_Y0_N36
\PC_out_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out_out(0));

-- Location: IOOBUF_X51_Y0_N2
\PC_out_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_out_out(1));

-- Location: IOOBUF_X0_Y18_N96
\PC_out_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out_out(2));

-- Location: IOOBUF_X0_Y19_N39
\PC_out_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out_out(3));

-- Location: IOOBUF_X0_Y18_N45
\PC_out_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_out_out(4));

-- Location: IOOBUF_X11_Y0_N53
\PC_out_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_out_out(5));

-- Location: IOOBUF_X11_Y0_N2
\PC_out_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_out_out(6));

-- Location: IOOBUF_X10_Y0_N76
\PC_out_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_out_out(7));

-- Location: IOOBUF_X0_Y19_N22
\PC_out_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_out_out(8));

-- Location: IOOBUF_X0_Y20_N56
\PC_out_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_out_out(9));

-- Location: IOOBUF_X29_Y0_N53
\PC_out_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_out_out(10));

-- Location: IOOBUF_X0_Y19_N5
\PC_out_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_out_out(11));

-- Location: IOOBUF_X0_Y19_N56
\PC_out_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_out_out(12));

-- Location: IOOBUF_X0_Y21_N5
\PC_out_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_out_out(13));

-- Location: IOOBUF_X14_Y0_N36
\PC_out_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_out_out(14));

-- Location: IOOBUF_X0_Y21_N39
\PC_out_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_out_out(15));

-- Location: IOOBUF_X0_Y18_N62
\PC_out_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_out_out(16));

-- Location: IOOBUF_X54_Y20_N22
\PC_out_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_out_out(17));

-- Location: IOOBUF_X10_Y45_N19
\PC_out_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_out_out(18));

-- Location: IOOBUF_X16_Y0_N93
\PC_out_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_out_out(19));

-- Location: IOOBUF_X0_Y18_N79
\PC_out_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_out_out(20));

-- Location: IOOBUF_X14_Y0_N53
\PC_out_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_out_out(21));

-- Location: IOOBUF_X0_Y20_N5
\PC_out_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_out_out(22));

-- Location: IOOBUF_X10_Y0_N93
\PC_out_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_out_out(23));

-- Location: IOOBUF_X10_Y45_N53
\PC_out_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_out_out(24));

-- Location: IOOBUF_X11_Y0_N36
\PC_out_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_out_out(25));

-- Location: IOOBUF_X12_Y0_N19
\PC_out_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_out_out(26));

-- Location: IOOBUF_X0_Y20_N22
\PC_out_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_out_out(27));

-- Location: IOOBUF_X0_Y20_N39
\PC_out_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_out_out(28));

-- Location: IOOBUF_X12_Y0_N53
\PC_out_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_out_out(29));

-- Location: IOOBUF_X12_Y0_N2
\PC_out_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_out_out(30));

-- Location: IOOBUF_X14_Y0_N19
\PC_out_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_out_out(31));

-- Location: IOOBUF_X14_Y0_N2
\barramentoEndout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(0));

-- Location: IOOBUF_X22_Y0_N2
\barramentoEndout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[1]~9_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(1));

-- Location: IOOBUF_X16_Y0_N59
\barramentoEndout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[2]~61_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(2));

-- Location: IOOBUF_X14_Y45_N53
\barramentoEndout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[3]~13_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(3));

-- Location: IOOBUF_X24_Y0_N2
\barramentoEndout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[4]~14_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(4));

-- Location: IOOBUF_X23_Y0_N42
\barramentoEndout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[5]~16_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(5));

-- Location: IOOBUF_X25_Y0_N2
\barramentoEndout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[6]~17_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(6));

-- Location: IOOBUF_X19_Y0_N19
\barramentoEndout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[7]~18_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(7));

-- Location: IOOBUF_X18_Y0_N19
\barramentoEndout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[8]~19_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(8));

-- Location: IOOBUF_X10_Y0_N42
\barramentoEndout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[9]~20_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(9));

-- Location: IOOBUF_X16_Y0_N42
\barramentoEndout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[10]~21_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(10));

-- Location: IOOBUF_X16_Y0_N76
\barramentoEndout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[11]~22_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(11));

-- Location: IOOBUF_X0_Y21_N56
\barramentoEndout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[12]~23_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(12));

-- Location: IOOBUF_X10_Y0_N59
\barramentoEndout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[13]~24_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(13));

-- Location: IOOBUF_X25_Y0_N36
\barramentoEndout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[14]~25_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(14));

-- Location: IOOBUF_X24_Y0_N53
\barramentoEndout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[15]~26_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(15));

-- Location: IOOBUF_X19_Y0_N36
\barramentoEndout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[16]~29_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(16));

-- Location: IOOBUF_X18_Y0_N2
\barramentoEndout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[17]~31_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(17));

-- Location: IOOBUF_X18_Y0_N36
\barramentoEndout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[18]~33_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(18));

-- Location: IOOBUF_X19_Y0_N2
\barramentoEndout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[19]~35_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(19));

-- Location: IOOBUF_X22_Y0_N36
\barramentoEndout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[20]~37_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(20));

-- Location: IOOBUF_X24_Y0_N19
\barramentoEndout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[21]~39_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(21));

-- Location: IOOBUF_X22_Y0_N53
\barramentoEndout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[22]~41_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(22));

-- Location: IOOBUF_X24_Y0_N36
\barramentoEndout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[23]~43_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(23));

-- Location: IOOBUF_X29_Y0_N2
\barramentoEndout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[24]~45_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(24));

-- Location: IOOBUF_X38_Y0_N2
\barramentoEndout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[25]~47_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(25));

-- Location: IOOBUF_X23_Y0_N76
\barramentoEndout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[26]~49_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(26));

-- Location: IOOBUF_X23_Y0_N59
\barramentoEndout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[27]~51_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(27));

-- Location: IOOBUF_X19_Y0_N53
\barramentoEndout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[28]~53_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(28));

-- Location: IOOBUF_X11_Y0_N19
\barramentoEndout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[29]~55_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(29));

-- Location: IOOBUF_X18_Y0_N53
\barramentoEndout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[30]~57_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(30));

-- Location: IOOBUF_X23_Y0_N93
\barramentoEndout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|ULA|saida[31]~59_combout\,
	devoe => ww_devoe,
	o => ww_barramentoEndout(31));

-- Location: IOOBUF_X12_Y0_N36
\seletor_out_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|UC_ULA|ULActrl[0]~5_combout\,
	devoe => ww_devoe,
	o => ww_seletor_out_out(0));

-- Location: IOOBUF_X33_Y0_N42
\seletor_out_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|UC_ULA|ULActrl[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_seletor_out_out(1));

-- Location: IOOBUF_X22_Y0_N19
\seletor_out_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|UC_ULA|ULActrl[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_seletor_out_out(2));

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X10_Y11_N0
\processador|somadorPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \processador|somadorPC|Add0~2\ = CARRY(( \processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \processador|somadorPC|Add0~1_sumout\,
	cout => \processador|somadorPC|Add0~2\);

-- Location: FF_X12_Y11_N56
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|somadorPC|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y11_N3
\processador|somadorPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~2\ ))
-- \processador|somadorPC|Add0~6\ = CARRY(( \processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~2\,
	sumout => \processador|somadorPC|Add0~5_sumout\,
	cout => \processador|somadorPC|Add0~6\);

-- Location: LABCELL_X10_Y11_N6
\processador|somadorPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~6\ ))
-- \processador|somadorPC|Add0~10\ = CARRY(( \processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~6\,
	sumout => \processador|somadorPC|Add0~9_sumout\,
	cout => \processador|somadorPC|Add0~10\);

-- Location: LABCELL_X10_Y11_N9
\processador|somadorPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~10\ ))
-- \processador|somadorPC|Add0~14\ = CARRY(( \processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~10\,
	sumout => \processador|somadorPC|Add0~13_sumout\,
	cout => \processador|somadorPC|Add0~14\);

-- Location: FF_X14_Y11_N10
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~9_sumout\,
	asdata => \processador|somadorPC|Add0~13_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X12_Y11_N15
\processador|ROM_mips|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~7_combout\ = ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT[2]~DUPLICATE_q\ $ (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( 
-- (\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & !\processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|ROM_mips|memROM~7_combout\);

-- Location: LABCELL_X10_Y11_N12
\processador|somadorPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~14\ ))
-- \processador|somadorPC|Add0~18\ = CARRY(( \processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~14\,
	sumout => \processador|somadorPC|Add0~17_sumout\,
	cout => \processador|somadorPC|Add0~18\);

-- Location: FF_X14_Y11_N14
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~13_sumout\,
	asdata => \processador|somadorPC|Add0~17_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: FF_X14_Y11_N16
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~17_sumout\,
	asdata => \processador|somadorPC|Add0~21_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X12_Y11_N57
\processador|ROM_mips|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~9_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT\(7) & (\processador|PC|DOUT[4]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \processador|ROM_mips|memROM~9_combout\);

-- Location: LABCELL_X14_Y11_N0
\processador|somador_somador|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~118_cout\ = CARRY(( \processador|somadorPC|Add0~1_sumout\ ) + ( \processador|ROM_mips|memROM~9_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|somadorPC|ALT_INV_Add0~1_sumout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~9_combout\,
	cin => GND,
	cout => \processador|somador_somador|Add0~118_cout\);

-- Location: LABCELL_X14_Y11_N3
\processador|somador_somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~1_sumout\ = SUM(( \processador|somadorPC|Add0~5_sumout\ ) + ( (\processador|ROM_mips|memROM~3_combout\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[7]~DUPLICATE_q\)) ) + ( 
-- \processador|somador_somador|Add0~118_cout\ ))
-- \processador|somador_somador|Add0~2\ = CARRY(( \processador|somadorPC|Add0~5_sumout\ ) + ( (\processador|ROM_mips|memROM~3_combout\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[7]~DUPLICATE_q\)) ) + ( \processador|somador_somador|Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111011111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~3_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \processador|somadorPC|ALT_INV_Add0~5_sumout\,
	cin => \processador|somador_somador|Add0~118_cout\,
	sumout => \processador|somador_somador|Add0~1_sumout\,
	cout => \processador|somador_somador|Add0~2\);

-- Location: LABCELL_X14_Y11_N6
\processador|somador_somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~5_sumout\ = SUM(( \processador|somadorPC|Add0~9_sumout\ ) + ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~7_combout\)) ) + ( 
-- \processador|somador_somador|Add0~2\ ))
-- \processador|somador_somador|Add0~6\ = CARRY(( \processador|somadorPC|Add0~9_sumout\ ) + ( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~7_combout\)) ) + ( 
-- \processador|somador_somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~7_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~9_sumout\,
	cin => \processador|somador_somador|Add0~2\,
	sumout => \processador|somador_somador|Add0~5_sumout\,
	cout => \processador|somador_somador|Add0~6\);

-- Location: FF_X14_Y11_N7
\processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~5_sumout\,
	asdata => \processador|somadorPC|Add0~9_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y9_N0
\processador|ROM_mips|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~5_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( ((!\processador|PC|DOUT[4]~DUPLICATE_q\ & \processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(5)) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- ((\processador|PC|DOUT\(5)) # (\processador|PC|DOUT\(3))) # (\processador|PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \processador|ROM_mips|memROM~5_combout\);

-- Location: LABCELL_X14_Y11_N9
\processador|somador_somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~9_sumout\ = SUM(( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|ROM_mips|memROM~5_combout\)) ) + ( \processador|somadorPC|Add0~13_sumout\ ) + ( 
-- \processador|somador_somador|Add0~6\ ))
-- \processador|somador_somador|Add0~10\ = CARRY(( (!\processador|PC|DOUT[6]~DUPLICATE_q\ & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & !\processador|ROM_mips|memROM~5_combout\)) ) + ( \processador|somadorPC|Add0~13_sumout\ ) + ( 
-- \processador|somador_somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~5_combout\,
	dataf => \processador|somadorPC|ALT_INV_Add0~13_sumout\,
	cin => \processador|somador_somador|Add0~6\,
	sumout => \processador|somador_somador|Add0~9_sumout\,
	cout => \processador|somador_somador|Add0~10\);

-- Location: FF_X14_Y11_N11
\processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~9_sumout\,
	asdata => \processador|somadorPC|Add0~13_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y11_N15
\processador|somadorPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~18\ ))
-- \processador|somadorPC|Add0~22\ = CARRY(( \processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~18\,
	sumout => \processador|somadorPC|Add0~21_sumout\,
	cout => \processador|somadorPC|Add0~22\);

-- Location: FF_X14_Y11_N8
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~5_sumout\,
	asdata => \processador|somadorPC|Add0~9_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: MLABCELL_X13_Y12_N57
\processador|ROM_mips|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~0_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT\(5)) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & 
-- !\processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM_mips|memROM~0_combout\);

-- Location: LABCELL_X14_Y11_N12
\processador|somador_somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~13_sumout\ = SUM(( \processador|somadorPC|Add0~17_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~10\ ))
-- \processador|somador_somador|Add0~14\ = CARRY(( \processador|somadorPC|Add0~17_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~17_sumout\,
	cin => \processador|somador_somador|Add0~10\,
	sumout => \processador|somador_somador|Add0~13_sumout\,
	cout => \processador|somador_somador|Add0~14\);

-- Location: LABCELL_X14_Y11_N15
\processador|somador_somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~17_sumout\ = SUM(( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~0_combout\) ) + ( \processador|somadorPC|Add0~21_sumout\ ) + ( \processador|somador_somador|Add0~14\ ))
-- \processador|somador_somador|Add0~18\ = CARRY(( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~0_combout\) ) + ( \processador|somadorPC|Add0~21_sumout\ ) + ( \processador|somador_somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|somadorPC|ALT_INV_Add0~21_sumout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	cin => \processador|somador_somador|Add0~14\,
	sumout => \processador|somador_somador|Add0~17_sumout\,
	cout => \processador|somador_somador|Add0~18\);

-- Location: FF_X14_Y11_N17
\processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~17_sumout\,
	asdata => \processador|somadorPC|Add0~21_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X12_Y11_N55
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|somadorPC|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: MLABCELL_X13_Y12_N12
\processador|ROM_mips|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~11_combout\ = ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(5) & !\processador|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(5),
	datad => \processador|PC|ALT_INV_DOUT\(6),
	datae => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM_mips|memROM~11_combout\);

-- Location: FF_X14_Y11_N13
\processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~13_sumout\,
	asdata => \processador|somadorPC|Add0~17_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y11_N0
\processador|ROM_mips|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~4_combout\ = ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(5) & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\)) ) ) ) # ( 
-- !\processador|PC|DOUT[4]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \processador|ROM_mips|memROM~4_combout\);

-- Location: LABCELL_X12_Y11_N30
\processador|UC|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|Equal5~0_combout\ = ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( \processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT[2]~DUPLICATE_q\ & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[4]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT\(7)))) ) ) ) # ( !\processador|PC|DOUT[6]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(5) & ( (!\processador|PC|DOUT\(7) & ((!\processador|PC|DOUT[3]~DUPLICATE_q\ & ((!\processador|PC|DOUT[4]~DUPLICATE_q\))) # 
-- (\processador|PC|DOUT[3]~DUPLICATE_q\ & (\processador|PC|DOUT[2]~DUPLICATE_q\ & \processador|PC|DOUT[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(5),
	combout => \processador|UC|Equal5~0_combout\);

-- Location: MLABCELL_X13_Y11_N48
\processador|ROM_mips|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~1_combout\ = ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & ((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \processador|ROM_mips|memROM~1_combout\);

-- Location: MLABCELL_X13_Y11_N3
\processador|ROM_mips|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~2_combout\ = ( !\processador|PC|DOUT\(6) & ( !\processador|PC|DOUT[7]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \processador|ROM_mips|memROM~2_combout\);

-- Location: LABCELL_X12_Y11_N39
\processador|ROM_mips|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~8_combout\ = ( \processador|ROM_mips|memROM~7_combout\ & ( \processador|ROM_mips|memROM~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM_mips|ALT_INV_memROM~2_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~7_combout\,
	combout => \processador|ROM_mips|memROM~8_combout\);

-- Location: LABCELL_X12_Y11_N36
\processador|UC_ULA|ULActrl[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl[1]~1_combout\ = ( !\processador|ROM_mips|memROM~8_combout\ & ( (\processador|ROM_mips|memROM~4_combout\ & (!\processador|UC|Equal5~0_combout\ & (!\processador|ROM_mips|memROM~9_combout\ & 
-- \processador|ROM_mips|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~4_combout\,
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~9_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~8_combout\,
	combout => \processador|UC_ULA|ULActrl[1]~1_combout\);

-- Location: MLABCELL_X13_Y12_N0
\processador|ROM_mips|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~10_combout\ = ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT[4]~DUPLICATE_q\ & !\processador|PC|DOUT\(5)) ) ) ) # ( !\processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(2) & ( 
-- !\processador|PC|DOUT[4]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(5),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM_mips|memROM~10_combout\);

-- Location: LABCELL_X14_Y9_N0
\processador|selMUX_AND_BEQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~0_combout\ = ( \processador|ROM_mips|memROM~11_combout\ & ( (!\processador|ROM_mips|memROM~2_combout\) # (!\processador|ROM_mips|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~2_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~10_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	combout => \processador|selMUX_AND_BEQ~0_combout\);

-- Location: LABCELL_X14_Y9_N3
\processador|UC_ULA|ULActrl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl~3_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( (!\processador|PC|DOUT\(7) & (((!\processador|ROM_mips|memROM~3_combout\ & \processador|ROM_mips|memROM~5_combout\)) # (\processador|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010101000100010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|ROM_mips|ALT_INV_memROM~3_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	combout => \processador|UC_ULA|ULActrl~3_combout\);

-- Location: LABCELL_X14_Y9_N33
\processador|UC_ULA|ULActrl[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl[1]~4_combout\ = ( \processador|ROM_mips|memROM~8_combout\ & ( \processador|UC|Equal5~0_combout\ ) ) # ( !\processador|ROM_mips|memROM~8_combout\ & ( ((!\processador|ROM_mips|memROM~9_combout\ & 
-- \processador|UC_ULA|ULActrl~3_combout\)) # (\processador|UC|Equal5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC|ALT_INV_Equal5~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~9_combout\,
	datad => \processador|UC_ULA|ALT_INV_ULActrl~3_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~8_combout\,
	combout => \processador|UC_ULA|ULActrl[1]~4_combout\);

-- Location: MLABCELL_X13_Y10_N45
\processador|ULA|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~10_combout\ = ( \processador|UC_ULA|ULActrl[1]~4_combout\ & ( (!\processador|UC_ULA|ULActrl[1]~1_combout\ & !\processador|selMUX_AND_BEQ~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\,
	combout => \processador|ULA|saida[2]~10_combout\);

-- Location: LABCELL_X12_Y11_N27
\processador|UC_ULA|ULActrl[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl[0]~5_combout\ = ( \processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(5) & (!\processador|PC|DOUT\(7) & !\processador|PC|DOUT[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(5),
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \processador|UC_ULA|ULActrl[0]~5_combout\);

-- Location: LABCELL_X14_Y9_N45
\processador|ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~3_combout\ = ( \processador|UC_ULA|ULActrl[1]~1_combout\ & ( !\processador|UC_ULA|ULActrl[0]~5_combout\ ) ) # ( !\processador|UC_ULA|ULActrl[1]~1_combout\ & ( (!\processador|UC_ULA|ULActrl[0]~5_combout\ & 
-- \processador|selMUX_AND_BEQ~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	combout => \processador|ULA|saida[1]~3_combout\);

-- Location: MLABCELL_X13_Y12_N45
\processador|MUX1|saida_MUX[31]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[31]~4_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT\(5))) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\processador|PC|DOUT\(7) & (!\processador|PC|DOUT[6]~DUPLICATE_q\ & !\processador|PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|MUX1|saida_MUX[31]~4_combout\);

-- Location: MLABCELL_X13_Y10_N48
\processador|ULA|saida[31]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[31]~27_combout\ = ( \processador|UC_ULA|ULActrl[0]~5_combout\ & ( \processador|UC_ULA|ULActrl[1]~4_combout\ & ( (\processador|MUX1|saida_MUX[31]~4_combout\ & (\processador|UC_ULA|ULActrl[1]~1_combout\ & 
-- !\processador|selMUX_AND_BEQ~0_combout\)) ) ) ) # ( !\processador|UC_ULA|ULActrl[0]~5_combout\ & ( !\processador|UC_ULA|ULActrl[1]~4_combout\ & ( (\processador|MUX1|saida_MUX[31]~4_combout\ & (!\processador|UC_ULA|ULActrl[1]~1_combout\ & 
-- !\processador|selMUX_AND_BEQ~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	datae => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\,
	combout => \processador|ULA|saida[31]~27_combout\);

-- Location: MLABCELL_X13_Y11_N6
\processador|ROM_mips|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~14_combout\ = ( !\processador|PC|DOUT\(6) & ( (!\processador|PC|DOUT[5]~DUPLICATE_q\ & !\processador|PC|DOUT[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(6),
	combout => \processador|ROM_mips|memROM~14_combout\);

-- Location: MLABCELL_X13_Y11_N0
\processador|ROM_mips|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~12_combout\ = ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(4) & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(4),
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM_mips|memROM~12_combout\);

-- Location: LABCELL_X12_Y12_N42
\processador|UC|palavraControle[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC|palavraControle\(5) = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( \processador|ROM_mips|memROM~2_combout\ & ( (!\processador|ROM_mips|memROM~10_combout\ & (!\processador|ROM_mips|memROM~12_combout\ & 
-- !\processador|ROM_mips|memROM~11_combout\)) # (\processador|ROM_mips|memROM~10_combout\ & (\processador|ROM_mips|memROM~12_combout\)) ) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( \processador|ROM_mips|memROM~2_combout\ & ( 
-- (!\processador|ROM_mips|memROM~10_combout\ & (!\processador|ROM_mips|memROM~12_combout\ & !\processador|ROM_mips|memROM~11_combout\)) ) ) ) # ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|ROM_mips|memROM~2_combout\ & ( 
-- (!\processador|ROM_mips|memROM~12_combout\ & !\processador|ROM_mips|memROM~11_combout\) ) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( !\processador|ROM_mips|memROM~2_combout\ & ( (!\processador|ROM_mips|memROM~12_combout\ & 
-- !\processador|ROM_mips|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000010000000100000001001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~10_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datae => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~2_combout\,
	combout => \processador|UC|palavraControle\(5));

-- Location: MLABCELL_X13_Y11_N33
\processador|ROM_mips|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~13_combout\ = ( \processador|PC|DOUT\(4) & ( \processador|PC|DOUT\(2) & ( (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) ) # ( 
-- !\processador|PC|DOUT\(4) & ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT\(4),
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \processador|ROM_mips|memROM~13_combout\);

-- Location: LABCELL_X12_Y10_N54
\processador|bancoRegistrador|registrador~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1146_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( (\processador|UC|palavraControle\(5) & ((!\processador|ROM_mips|memROM~1_combout\ & (!\processador|ROM_mips|memROM~13_combout\ & 
-- \processador|UC|Equal5~0_combout\)) # (\processador|ROM_mips|memROM~1_combout\ & ((!\processador|UC|Equal5~0_combout\))))) ) ) # ( !\processador|ROM_mips|memROM~14_combout\ & ( (\processador|UC|palavraControle\(5) & 
-- (\processador|ROM_mips|memROM~1_combout\ & !\processador|UC|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001010000000001000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle\(5),
	datab => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1146_combout\);

-- Location: FF_X12_Y7_N2
\processador|bancoRegistrador|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~323_q\);

-- Location: LABCELL_X12_Y10_N57
\processador|bancoRegistrador|registrador~1145\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1145_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( (\processador|UC|palavraControle\(5) & (!\processador|ROM_mips|memROM~1_combout\ & !\processador|UC|Equal5~0_combout\)) ) ) # ( 
-- !\processador|ROM_mips|memROM~13_combout\ & ( (\processador|UC|palavraControle\(5) & (!\processador|ROM_mips|memROM~1_combout\ & ((!\processador|ROM_mips|memROM~14_combout\) # (!\processador|UC|Equal5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010001000100000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC|ALT_INV_palavraControle\(5),
	datab => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1145_combout\);

-- Location: FF_X12_Y7_N32
\processador|bancoRegistrador|registrador~67DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~67DUPLICATE_q\);

-- Location: LABCELL_X12_Y7_N33
\processador|bancoRegistrador|registrador~1160\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1160_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|ROM_mips|memROM~14_combout\ & ( \processador|ROM_mips|memROM~13_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- \processador|ROM_mips|memROM~14_combout\ & ( \processador|ROM_mips|memROM~13_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ & ( (\processador|bancoRegistrador|registrador~67DUPLICATE_q\ & 
-- !\processador|ROM_mips|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~67DUPLICATE_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1160_combout\);

-- Location: LABCELL_X12_Y7_N6
\processador|bancoRegistrador|registrador~1131\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1131_combout\ = ( \processador|bancoRegistrador|registrador~1160_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1160_combout\ & ( 
-- (\processador|ROM_mips|memROM~14_combout\ & (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~323_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~323_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1160_combout\,
	combout => \processador|bancoRegistrador|registrador~1131_combout\);

-- Location: MLABCELL_X13_Y12_N24
\processador|ROM_mips|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~15_combout\ = ( \processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(6) & (!\processador|PC|DOUT\(3) & !\processador|PC|DOUT\(5))) ) ) # ( !\processador|PC|DOUT\(4) & ( (!\processador|PC|DOUT\(6) & (\processador|PC|DOUT\(3) & 
-- !\processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(6),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM_mips|memROM~15_combout\);

-- Location: FF_X12_Y7_N31
\processador|bancoRegistrador|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~67_q\);

-- Location: MLABCELL_X13_Y11_N21
\processador|ROM_mips|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~16_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) ) # ( 
-- !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(4) & (!\processador|PC|DOUT[7]~DUPLICATE_q\ & (!\processador|PC|DOUT\(6) & !\processador|PC|DOUT[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(4),
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(6),
	datad => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \processador|ROM_mips|memROM~16_combout\);

-- Location: LABCELL_X12_Y7_N48
\processador|bancoRegistrador|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1130_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~67_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~323_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~67_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~323_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1130_combout\);

-- Location: LABCELL_X12_Y7_N21
\processador|bancoRegistrador|saidaA[29]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[29]~13_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( \processador|bancoRegistrador|registrador~1130_combout\ & ( !\processador|PC|DOUT\(7) ) ) ) # ( !\processador|ROM_mips|memROM~0_combout\ & ( 
-- \processador|bancoRegistrador|registrador~1130_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1130_combout\,
	combout => \processador|bancoRegistrador|saidaA[29]~13_combout\);

-- Location: LABCELL_X14_Y9_N6
\processador|ULA|saida[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~11_combout\ = ( !\processador|UC_ULA|ULActrl[1]~1_combout\ & ( (\processador|UC_ULA|ULActrl[0]~5_combout\ & (!\processador|UC_ULA|ULActrl[1]~4_combout\ & !\processador|selMUX_AND_BEQ~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datac => \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	combout => \processador|ULA|saida[2]~11_combout\);

-- Location: MLABCELL_X13_Y8_N54
\processador|ULA|saida[29]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[29]~54_combout\ = ( \processador|ULA|saida[2]~11_combout\ & ( ((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1131_combout\)) # (\processador|bancoRegistrador|saidaA[29]~13_combout\) ) ) # ( 
-- !\processador|ULA|saida[2]~11_combout\ & ( (\processador|ULA|saida[31]~27_combout\ & (\processador|bancoRegistrador|registrador~1131_combout\ & \processador|bancoRegistrador|saidaA[29]~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1131_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[29]~13_combout\,
	dataf => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	combout => \processador|ULA|saida[29]~54_combout\);

-- Location: MLABCELL_X13_Y11_N51
\processador|bancoRegistrador|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|Equal1~0_combout\ = ( \processador|PC|DOUT[7]~DUPLICATE_q\ ) # ( !\processador|PC|DOUT[7]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(6)) # (\processador|PC|DOUT[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(6),
	dataf => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \processador|bancoRegistrador|Equal1~0_combout\);

-- Location: LABCELL_X12_Y8_N51
\processador|ROM_mips|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~17_combout\ = ( \processador|ROM_mips|memROM~2_combout\ & ( \processador|ROM_mips|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|ROM_mips|ALT_INV_memROM~2_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~10_combout\,
	combout => \processador|ROM_mips|memROM~17_combout\);

-- Location: FF_X12_Y7_N20
\processador|bancoRegistrador|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~322_q\);

-- Location: FF_X12_Y7_N14
\processador|bancoRegistrador|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~66_q\);

-- Location: LABCELL_X12_Y7_N51
\processador|bancoRegistrador|registrador~1159\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1159_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( \processador|ROM_mips|memROM~13_combout\ ) ) # ( !\processador|ROM_mips|memROM~14_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & 
-- (\processador|bancoRegistrador|registrador~66_q\ & !\processador|ROM_mips|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~66_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1159_combout\);

-- Location: LABCELL_X12_Y7_N36
\processador|bancoRegistrador|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1126_combout\ = ( \processador|bancoRegistrador|registrador~1159_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1159_combout\ & ( 
-- (\processador|bancoRegistrador|registrador~322_q\ & (\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~322_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1159_combout\,
	combout => \processador|bancoRegistrador|registrador~1126_combout\);

-- Location: LABCELL_X12_Y7_N54
\processador|bancoRegistrador|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1125_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~66_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~322_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~66_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~322_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1125_combout\);

-- Location: LABCELL_X12_Y7_N27
\processador|bancoRegistrador|saidaA[28]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[28]~12_combout\ = ( \processador|ROM_mips|memROM~15_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|bancoRegistrador|registrador~1125_combout\) ) ) # ( !\processador|ROM_mips|memROM~15_combout\ & ( 
-- (\processador|ROM_mips|memROM~0_combout\ & (!\processador|PC|DOUT\(7) & \processador|bancoRegistrador|registrador~1125_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1125_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	combout => \processador|bancoRegistrador|saidaA[28]~12_combout\);

-- Location: FF_X12_Y10_N23
\processador|bancoRegistrador|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~321_q\);

-- Location: FF_X12_Y10_N10
\processador|bancoRegistrador|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~65_q\);

-- Location: LABCELL_X12_Y10_N0
\processador|bancoRegistrador|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1120_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & ((\processador|bancoRegistrador|registrador~65_q\))) # (\processador|ROM_mips|memROM~1_combout\ & 
-- (\processador|bancoRegistrador|registrador~321_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~321_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~65_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1120_combout\);

-- Location: LABCELL_X12_Y10_N45
\processador|bancoRegistrador|saidaA[27]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[27]~11_combout\ = ( \processador|ROM_mips|memROM~15_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|bancoRegistrador|registrador~1120_combout\) ) ) # ( !\processador|ROM_mips|memROM~15_combout\ & ( 
-- (!\processador|PC|DOUT\(7) & (\processador|ROM_mips|memROM~0_combout\ & \processador|bancoRegistrador|registrador~1120_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1120_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	combout => \processador|bancoRegistrador|saidaA[27]~11_combout\);

-- Location: LABCELL_X12_Y10_N9
\processador|bancoRegistrador|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1158_combout\ = ( \processador|bancoRegistrador|registrador~65_q\ & ( \processador|ROM_mips|memROM~1_combout\ & ( (\processador|ROM_mips|memROM~14_combout\ & \processador|ROM_mips|memROM~13_combout\) ) ) ) # ( 
-- !\processador|bancoRegistrador|registrador~65_q\ & ( \processador|ROM_mips|memROM~1_combout\ & ( (\processador|ROM_mips|memROM~14_combout\ & \processador|ROM_mips|memROM~13_combout\) ) ) ) # ( \processador|bancoRegistrador|registrador~65_q\ & ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ $ (\processador|ROM_mips|memROM~13_combout\) ) ) ) # ( !\processador|bancoRegistrador|registrador~65_q\ & ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- (\processador|ROM_mips|memROM~14_combout\ & \processador|ROM_mips|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datae => \processador|bancoRegistrador|ALT_INV_registrador~65_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1158_combout\);

-- Location: LABCELL_X12_Y10_N12
\processador|bancoRegistrador|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1121_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1158_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1158_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|bancoRegistrador|registrador~1158_combout\ & ( (\processador|bancoRegistrador|registrador~321_q\ & \processador|ROM_mips|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~321_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1158_combout\,
	combout => \processador|bancoRegistrador|registrador~1121_combout\);

-- Location: FF_X12_Y10_N26
\processador|bancoRegistrador|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~64_q\);

-- Location: FF_X12_Y10_N44
\processador|bancoRegistrador|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~320_q\);

-- Location: LABCELL_X12_Y10_N33
\processador|bancoRegistrador|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1115_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~64_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~320_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~64_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~320_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1115_combout\);

-- Location: LABCELL_X12_Y10_N51
\processador|bancoRegistrador|saidaA[26]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[26]~10_combout\ = ( \processador|bancoRegistrador|registrador~1115_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~15_combout\) # (\processador|ROM_mips|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1115_combout\,
	combout => \processador|bancoRegistrador|saidaA[26]~10_combout\);

-- Location: LABCELL_X12_Y10_N24
\processador|bancoRegistrador|registrador~1157\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1157_combout\ = ( \processador|bancoRegistrador|registrador~64_q\ & ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) ) # ( 
-- !\processador|bancoRegistrador|registrador~64_q\ & ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) ) # ( \processador|bancoRegistrador|registrador~64_q\ & ( !\processador|ROM_mips|memROM~13_combout\ & ( 
-- (!\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datae => \processador|bancoRegistrador|ALT_INV_registrador~64_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1157_combout\);

-- Location: LABCELL_X12_Y10_N42
\processador|bancoRegistrador|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1116_combout\ = ( \processador|bancoRegistrador|registrador~1157_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1157_combout\ & ( 
-- (!\processador|ROM_mips|memROM~1_combout\ & (\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~320_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~320_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1157_combout\,
	combout => \processador|bancoRegistrador|registrador~1116_combout\);

-- Location: FF_X12_Y10_N29
\processador|bancoRegistrador|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~63_q\);

-- Location: FF_X12_Y10_N38
\processador|bancoRegistrador|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~319_q\);

-- Location: LABCELL_X12_Y12_N18
\processador|bancoRegistrador|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1110_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~319_q\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|bancoRegistrador|ALT_INV_registrador~63_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~319_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1110_combout\);

-- Location: LABCELL_X12_Y12_N54
\processador|bancoRegistrador|saidaA[25]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[25]~9_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( \processador|bancoRegistrador|registrador~1110_combout\ & ( !\processador|PC|DOUT\(7) ) ) ) # ( !\processador|ROM_mips|memROM~0_combout\ & ( 
-- \processador|bancoRegistrador|registrador~1110_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1110_combout\,
	combout => \processador|bancoRegistrador|saidaA[25]~9_combout\);

-- Location: LABCELL_X12_Y10_N48
\processador|bancoRegistrador|registrador~1156\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1156_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (\processador|bancoRegistrador|registrador~63_q\ & 
-- (!\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~63_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1156_combout\);

-- Location: LABCELL_X12_Y10_N39
\processador|bancoRegistrador|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1111_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1156_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1156_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|bancoRegistrador|registrador~1156_combout\ & ( (\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~319_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~319_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1156_combout\,
	combout => \processador|bancoRegistrador|registrador~1111_combout\);

-- Location: FF_X12_Y10_N17
\processador|bancoRegistrador|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~318_q\);

-- Location: FF_X12_Y10_N8
\processador|bancoRegistrador|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~62_q\);

-- Location: LABCELL_X12_Y10_N30
\processador|bancoRegistrador|registrador~1155\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1155_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (\processador|bancoRegistrador|registrador~62_q\ & 
-- (!\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~62_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1155_combout\);

-- Location: LABCELL_X12_Y10_N21
\processador|bancoRegistrador|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1106_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1155_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1155_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|bancoRegistrador|registrador~1155_combout\ & ( (\processador|bancoRegistrador|registrador~318_q\ & \processador|ROM_mips|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~318_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1155_combout\,
	combout => \processador|bancoRegistrador|registrador~1106_combout\);

-- Location: LABCELL_X12_Y12_N39
\processador|bancoRegistrador|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1105_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~318_q\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|bancoRegistrador|ALT_INV_registrador~318_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~62_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1105_combout\);

-- Location: LABCELL_X12_Y12_N15
\processador|bancoRegistrador|saidaA[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[24]~8_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( \processador|bancoRegistrador|registrador~1105_combout\ & ( !\processador|PC|DOUT\(7) ) ) ) # ( !\processador|ROM_mips|memROM~0_combout\ & ( 
-- \processador|bancoRegistrador|registrador~1105_combout\ & ( (\processador|ROM_mips|memROM~15_combout\ & !\processador|PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1105_combout\,
	combout => \processador|bancoRegistrador|saidaA[24]~8_combout\);

-- Location: FF_X13_Y11_N35
\processador|bancoRegistrador|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~317_q\);

-- Location: FF_X13_Y11_N14
\processador|bancoRegistrador|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~61_q\);

-- Location: MLABCELL_X13_Y11_N12
\processador|bancoRegistrador|registrador~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1154_combout\ = (!\processador|ROM_mips|memROM~13_combout\ & (!\processador|ROM_mips|memROM~14_combout\ & (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~61_q\))) # 
-- (\processador|ROM_mips|memROM~13_combout\ & (\processador|ROM_mips|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010001000100011001000100010001100100010001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~61_q\,
	combout => \processador|bancoRegistrador|registrador~1154_combout\);

-- Location: MLABCELL_X13_Y11_N27
\processador|bancoRegistrador|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1101_combout\ = ( \processador|bancoRegistrador|registrador~1154_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1154_combout\ & ( 
-- (\processador|bancoRegistrador|registrador~317_q\ & (\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~317_q\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1154_combout\,
	combout => \processador|bancoRegistrador|registrador~1101_combout\);

-- Location: MLABCELL_X13_Y12_N9
\processador|bancoRegistrador|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1100_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & ((\processador|bancoRegistrador|registrador~61_q\))) # (\processador|ROM_mips|memROM~1_combout\ & 
-- (\processador|bancoRegistrador|registrador~317_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~317_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~61_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1100_combout\);

-- Location: MLABCELL_X13_Y12_N33
\processador|bancoRegistrador|saidaA[23]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[23]~7_combout\ = ( \processador|bancoRegistrador|registrador~1100_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~0_combout\) # (\processador|ROM_mips|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1100_combout\,
	combout => \processador|bancoRegistrador|saidaA[23]~7_combout\);

-- Location: FF_X13_Y11_N58
\processador|bancoRegistrador|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~60_q\);

-- Location: MLABCELL_X13_Y11_N57
\processador|bancoRegistrador|registrador~1153\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1153_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & 
-- (!\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~60_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~60_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1153_combout\);

-- Location: FF_X13_Y11_N10
\processador|bancoRegistrador|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~316_q\);

-- Location: MLABCELL_X13_Y11_N9
\processador|bancoRegistrador|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1096_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( (!\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~1153_combout\) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ 
-- & ( (!\processador|ROM_mips|memROM~14_combout\ & (\processador|bancoRegistrador|registrador~1153_combout\)) # (\processador|ROM_mips|memROM~14_combout\ & (!\processador|bancoRegistrador|registrador~1153_combout\ & 
-- \processador|bancoRegistrador|registrador~316_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111100000011000011110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1153_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~316_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1096_combout\);

-- Location: MLABCELL_X13_Y12_N39
\processador|bancoRegistrador|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1095_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~316_q\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|bancoRegistrador|ALT_INV_registrador~316_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~60_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1095_combout\);

-- Location: MLABCELL_X13_Y12_N42
\processador|bancoRegistrador|saidaA[22]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[22]~6_combout\ = ( \processador|bancoRegistrador|registrador~1095_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~0_combout\) # (\processador|ROM_mips|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1095_combout\,
	combout => \processador|bancoRegistrador|saidaA[22]~6_combout\);

-- Location: FF_X13_Y11_N44
\processador|bancoRegistrador|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~1_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~59_q\);

-- Location: FF_X13_Y11_N8
\processador|bancoRegistrador|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~1_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~315_q\);

-- Location: MLABCELL_X13_Y12_N30
\processador|bancoRegistrador|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1090_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~59_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~315_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~59_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~315_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1090_combout\);

-- Location: MLABCELL_X13_Y12_N27
\processador|bancoRegistrador|saidaA[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[21]~5_combout\ = ( \processador|bancoRegistrador|registrador~1090_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~0_combout\) # (\processador|ROM_mips|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1090_combout\,
	combout => \processador|bancoRegistrador|saidaA[21]~5_combout\);

-- Location: MLABCELL_X13_Y11_N42
\processador|bancoRegistrador|registrador~1152\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1152_combout\ = ( \processador|bancoRegistrador|registrador~59_q\ & ( (!\processador|ROM_mips|memROM~13_combout\ & (!\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) # 
-- (\processador|ROM_mips|memROM~13_combout\ & (\processador|ROM_mips|memROM~14_combout\)) ) ) # ( !\processador|bancoRegistrador|registrador~59_q\ & ( (\processador|ROM_mips|memROM~13_combout\ & \processador|ROM_mips|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~59_q\,
	combout => \processador|bancoRegistrador|registrador~1152_combout\);

-- Location: MLABCELL_X13_Y11_N39
\processador|bancoRegistrador|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1091_combout\ = ( \processador|bancoRegistrador|registrador~1152_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1152_combout\ & ( 
-- (!\processador|ROM_mips|memROM~1_combout\ & (\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~315_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~315_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1152_combout\,
	combout => \processador|bancoRegistrador|registrador~1091_combout\);

-- Location: FF_X12_Y11_N52
\processador|bancoRegistrador|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~314_q\);

-- Location: FF_X12_Y11_N47
\processador|bancoRegistrador|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~58_q\);

-- Location: LABCELL_X12_Y11_N42
\processador|bancoRegistrador|registrador~1151\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1151_combout\ = (!\processador|ROM_mips|memROM~13_combout\ & (!\processador|ROM_mips|memROM~14_combout\ & (\processador|bancoRegistrador|registrador~58_q\ & !\processador|ROM_mips|memROM~1_combout\))) # 
-- (\processador|ROM_mips|memROM~13_combout\ & (\processador|ROM_mips|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100010001000110010001000100011001000100010001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~58_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1151_combout\);

-- Location: LABCELL_X12_Y11_N51
\processador|bancoRegistrador|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1086_combout\ = ( \processador|bancoRegistrador|registrador~1151_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1151_combout\ & ( 
-- (\processador|ROM_mips|memROM~14_combout\ & (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~314_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~314_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1151_combout\,
	combout => \processador|bancoRegistrador|registrador~1086_combout\);

-- Location: MLABCELL_X13_Y12_N51
\processador|bancoRegistrador|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1085_combout\ = ( \processador|bancoRegistrador|registrador~58_q\ & ( (!\processador|ROM_mips|memROM~16_combout\ & ((!\processador|ROM_mips|memROM~1_combout\) # (\processador|bancoRegistrador|registrador~314_q\))) 
-- ) ) # ( !\processador|bancoRegistrador|registrador~58_q\ & ( (!\processador|ROM_mips|memROM~16_combout\ & (\processador|bancoRegistrador|registrador~314_q\ & \processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~314_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~58_q\,
	combout => \processador|bancoRegistrador|registrador~1085_combout\);

-- Location: MLABCELL_X13_Y12_N6
\processador|bancoRegistrador|saidaA[20]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[20]~4_combout\ = ( \processador|bancoRegistrador|registrador~1085_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~15_combout\) # (\processador|ROM_mips|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1085_combout\,
	combout => \processador|bancoRegistrador|saidaA[20]~4_combout\);

-- Location: LABCELL_X12_Y9_N9
\processador|ROM_mips|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~6_combout\ = ( \processador|ROM_mips|memROM~2_combout\ & ( !\processador|ROM_mips|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|ROM_mips|ALT_INV_memROM~5_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~2_combout\,
	combout => \processador|ROM_mips|memROM~6_combout\);

-- Location: FF_X12_Y10_N19
\processador|bancoRegistrador|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~6_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~313_q\);

-- Location: FF_X12_Y11_N35
\processador|bancoRegistrador|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~6_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~57_q\);

-- Location: LABCELL_X14_Y12_N51
\processador|bancoRegistrador|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1080_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~313_q\ ) ) ) # ( !\processador|ROM_mips|memROM~16_combout\ & ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~57_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|bancoRegistrador|ALT_INV_registrador~313_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~57_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1080_combout\);

-- Location: LABCELL_X14_Y12_N24
\processador|bancoRegistrador|saidaA[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[19]~3_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( \processador|bancoRegistrador|registrador~1080_combout\ & ( !\processador|PC|DOUT\(7) ) ) ) # ( !\processador|ROM_mips|memROM~0_combout\ & ( 
-- \processador|bancoRegistrador|registrador~1080_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(7),
	datad => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1080_combout\,
	combout => \processador|bancoRegistrador|saidaA[19]~3_combout\);

-- Location: LABCELL_X12_Y11_N6
\processador|bancoRegistrador|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1150_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (\processador|bancoRegistrador|registrador~57_q\ & 
-- (!\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~57_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1150_combout\);

-- Location: LABCELL_X12_Y10_N3
\processador|bancoRegistrador|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1081_combout\ = ( \processador|bancoRegistrador|registrador~1150_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1150_combout\ & ( 
-- (\processador|bancoRegistrador|registrador~313_q\ & (\processador|ROM_mips|memROM~14_combout\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~313_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1150_combout\,
	combout => \processador|bancoRegistrador|registrador~1081_combout\);

-- Location: FF_X13_Y11_N56
\processador|bancoRegistrador|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~8_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~56_q\);

-- Location: FF_X12_Y12_N44
\processador|bancoRegistrador|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~8_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~312_q\);

-- Location: LABCELL_X12_Y12_N51
\processador|bancoRegistrador|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1075_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~312_q\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|ROM_mips|memROM~16_combout\ & ( \processador|bancoRegistrador|registrador~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~56_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~312_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1075_combout\);

-- Location: LABCELL_X12_Y12_N27
\processador|bancoRegistrador|saidaA[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[18]~2_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( \processador|bancoRegistrador|registrador~1075_combout\ & ( !\processador|PC|DOUT\(7) ) ) ) # ( !\processador|ROM_mips|memROM~0_combout\ & ( 
-- \processador|bancoRegistrador|registrador~1075_combout\ & ( (\processador|ROM_mips|memROM~15_combout\ & !\processador|PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1075_combout\,
	combout => \processador|bancoRegistrador|saidaA[18]~2_combout\);

-- Location: MLABCELL_X13_Y11_N15
\processador|bancoRegistrador|registrador~1149\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1149_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( \processador|ROM_mips|memROM~13_combout\ ) ) # ( !\processador|ROM_mips|memROM~14_combout\ & ( (!\processador|ROM_mips|memROM~13_combout\ & 
-- (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~56_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~56_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1149_combout\);

-- Location: MLABCELL_X13_Y11_N36
\processador|bancoRegistrador|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1076_combout\ = ( \processador|bancoRegistrador|registrador~1149_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1149_combout\ & ( 
-- (\processador|ROM_mips|memROM~14_combout\ & (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~312_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~312_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1149_combout\,
	combout => \processador|bancoRegistrador|registrador~1076_combout\);

-- Location: FF_X12_Y11_N4
\processador|bancoRegistrador|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~4_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~55_q\);

-- Location: FF_X13_Y11_N31
\processador|bancoRegistrador|registrador~311DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~4_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~311DUPLICATE_q\);

-- Location: MLABCELL_X13_Y12_N54
\processador|bancoRegistrador|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1070_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~55_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~311DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~55_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~311DUPLICATE_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1070_combout\);

-- Location: MLABCELL_X13_Y12_N18
\processador|bancoRegistrador|saidaA[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[17]~1_combout\ = ( \processador|bancoRegistrador|registrador~1070_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~15_combout\) # (\processador|ROM_mips|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000000000000000000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	datae => \processador|bancoRegistrador|ALT_INV_registrador~1070_combout\,
	combout => \processador|bancoRegistrador|saidaA[17]~1_combout\);

-- Location: FF_X13_Y11_N32
\processador|bancoRegistrador|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~4_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~311_q\);

-- Location: FF_X12_Y11_N5
\processador|bancoRegistrador|registrador~55DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~4_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~55DUPLICATE_q\);

-- Location: LABCELL_X12_Y11_N18
\processador|bancoRegistrador|registrador~1148\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1148_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & 
-- (!\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~55DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~55DUPLICATE_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1148_combout\);

-- Location: LABCELL_X12_Y11_N21
\processador|bancoRegistrador|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1071_combout\ = ( \processador|bancoRegistrador|registrador~1148_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1148_combout\ & ( 
-- (\processador|ROM_mips|memROM~14_combout\ & (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~311_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~311_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1148_combout\,
	combout => \processador|bancoRegistrador|registrador~1071_combout\);

-- Location: FF_X13_Y11_N17
\processador|bancoRegistrador|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~9_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~54_q\);

-- Location: FF_X12_Y11_N13
\processador|bancoRegistrador|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~9_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~310_q\);

-- Location: LABCELL_X12_Y11_N12
\processador|bancoRegistrador|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1065_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( (!\processador|ROM_mips|memROM~16_combout\ & \processador|bancoRegistrador|registrador~310_q\) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- (\processador|bancoRegistrador|registrador~54_q\ & !\processador|ROM_mips|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~54_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~310_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1065_combout\);

-- Location: LABCELL_X12_Y11_N9
\processador|bancoRegistrador|saidaA[16]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[16]~0_combout\ = ( \processador|ROM_mips|memROM~15_combout\ & ( (\processador|bancoRegistrador|registrador~1065_combout\ & !\processador|PC|DOUT\(7)) ) ) # ( !\processador|ROM_mips|memROM~15_combout\ & ( 
-- (\processador|bancoRegistrador|registrador~1065_combout\ & (\processador|ROM_mips|memROM~0_combout\ & !\processador|PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~1065_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|PC|ALT_INV_DOUT\(7),
	dataf => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	combout => \processador|bancoRegistrador|saidaA[16]~0_combout\);

-- Location: MLABCELL_X13_Y11_N24
\processador|bancoRegistrador|registrador~1147\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1147_combout\ = ( \processador|ROM_mips|memROM~13_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~13_combout\ & ( (!\processador|ROM_mips|memROM~14_combout\ & 
-- (!\processador|ROM_mips|memROM~1_combout\ & \processador|bancoRegistrador|registrador~54_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~54_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	combout => \processador|bancoRegistrador|registrador~1147_combout\);

-- Location: MLABCELL_X13_Y11_N54
\processador|bancoRegistrador|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1066_combout\ = ( \processador|bancoRegistrador|registrador~1147_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|bancoRegistrador|registrador~1147_combout\ & ( 
-- (!\processador|ROM_mips|memROM~1_combout\ & (\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~310_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~310_q\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1147_combout\,
	combout => \processador|bancoRegistrador|registrador~1066_combout\);

-- Location: MLABCELL_X13_Y11_N45
\processador|bancoRegistrador|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1064_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|ROM_mips|memROM~14_combout\ ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( (\processador|ROM_mips|memROM~13_combout\ & 
-- \processador|ROM_mips|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1064_combout\);

-- Location: LABCELL_X12_Y9_N6
\processador|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[3]~3_combout\ = ( \processador|bancoRegistrador|registrador~1064_combout\ & ( (!\processador|ROM_mips|memROM~12_combout\ & ((!\processador|bancoRegistrador|Equal1~0_combout\))) # (\processador|ROM_mips|memROM~12_combout\ & 
-- (\processador|ROM_mips|memROM~6_combout\)) ) ) # ( !\processador|bancoRegistrador|registrador~1064_combout\ & ( (\processador|ROM_mips|memROM~6_combout\ & \processador|ROM_mips|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~6_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1064_combout\,
	combout => \processador|MUX1|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X12_Y11_N24
\processador|bancoRegistrador|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1063_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( (\processador|ROM_mips|memROM~13_combout\ & \processador|ROM_mips|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1063_combout\);

-- Location: LABCELL_X12_Y11_N48
\processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[2]~2_combout\ = ( \processador|bancoRegistrador|registrador~1063_combout\ & ( (!\processador|ROM_mips|memROM~12_combout\ & ((!\processador|bancoRegistrador|Equal1~0_combout\))) # (\processador|ROM_mips|memROM~12_combout\ & 
-- (\processador|ROM_mips|memROM~8_combout\)) ) ) # ( !\processador|bancoRegistrador|registrador~1063_combout\ & ( (\processador|ROM_mips|memROM~8_combout\ & \processador|ROM_mips|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~8_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1063_combout\,
	combout => \processador|MUX1|saida_MUX[2]~2_combout\);

-- Location: MLABCELL_X13_Y11_N18
\processador|bancoRegistrador|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1062_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( !\processador|ROM_mips|memROM~13_combout\ $ (!\processador|ROM_mips|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1062_combout\);

-- Location: LABCELL_X12_Y9_N3
\processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[1]~1_combout\ = ( \processador|bancoRegistrador|registrador~1062_combout\ & ( (!\processador|ROM_mips|memROM~12_combout\ & (!\processador|bancoRegistrador|Equal1~0_combout\)) # (\processador|ROM_mips|memROM~12_combout\ & 
-- ((\processador|ROM_mips|memROM~4_combout\))) ) ) # ( !\processador|bancoRegistrador|registrador~1062_combout\ & ( (\processador|ROM_mips|memROM~4_combout\ & \processador|ROM_mips|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111110101010000011111010101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~4_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1062_combout\,
	combout => \processador|MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X12_Y11_N45
\processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX1|saida_MUX[0]~0_combout\ = ( !\processador|bancoRegistrador|Equal1~0_combout\ & ( (!\processador|ROM_mips|memROM~13_combout\ & (\processador|ROM_mips|memROM~14_combout\ & (\processador|ROM_mips|memROM~1_combout\ & 
-- !\processador|ROM_mips|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	combout => \processador|MUX1|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X13_Y9_N0
\processador|ULA|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~5_sumout\ = SUM(( !\processador|MUX1|saida_MUX[0]~0_combout\ ) + ( VCC ) + ( !VCC ))
-- \processador|ULA|Add2~6\ = CARRY(( !\processador|MUX1|saida_MUX[0]~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	cin => GND,
	sumout => \processador|ULA|Add2~5_sumout\,
	cout => \processador|ULA|Add2~6\);

-- Location: MLABCELL_X13_Y9_N3
\processador|ULA|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~9_sumout\ = SUM(( !\processador|MUX1|saida_MUX[1]~1_combout\ ) + ( (!\processador|PC|DOUT\(7) & (\processador|ROM_mips|memROM~0_combout\ & \processador|ROM_mips|memROM~15_combout\)) ) + ( \processador|ULA|Add2~6\ ))
-- \processador|ULA|Add2~10\ = CARRY(( !\processador|MUX1|saida_MUX[1]~1_combout\ ) + ( (!\processador|PC|DOUT\(7) & (\processador|ROM_mips|memROM~0_combout\ & \processador|ROM_mips|memROM~15_combout\)) ) + ( \processador|ULA|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \processador|ULA|Add2~6\,
	sumout => \processador|ULA|Add2~9_sumout\,
	cout => \processador|ULA|Add2~10\);

-- Location: MLABCELL_X13_Y9_N6
\processador|ULA|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~13_sumout\ = SUM(( !\processador|MUX1|saida_MUX[2]~2_combout\ ) + ( GND ) + ( \processador|ULA|Add2~10\ ))
-- \processador|ULA|Add2~14\ = CARRY(( !\processador|MUX1|saida_MUX[2]~2_combout\ ) + ( GND ) + ( \processador|ULA|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \processador|ULA|Add2~10\,
	sumout => \processador|ULA|Add2~13_sumout\,
	cout => \processador|ULA|Add2~14\);

-- Location: MLABCELL_X13_Y9_N9
\processador|ULA|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~17_sumout\ = SUM(( !\processador|MUX1|saida_MUX[3]~3_combout\ ) + ( (!\processador|PC|DOUT\(7) & (\processador|ROM_mips|memROM~0_combout\ & \processador|ROM_mips|memROM~15_combout\)) ) + ( \processador|ULA|Add2~14\ ))
-- \processador|ULA|Add2~18\ = CARRY(( !\processador|MUX1|saida_MUX[3]~3_combout\ ) + ( (!\processador|PC|DOUT\(7) & (\processador|ROM_mips|memROM~0_combout\ & \processador|ROM_mips|memROM~15_combout\)) ) + ( \processador|ULA|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111011111110100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(7),
	datab => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \processador|ULA|Add2~14\,
	sumout => \processador|ULA|Add2~17_sumout\,
	cout => \processador|ULA|Add2~18\);

-- Location: MLABCELL_X13_Y9_N12
\processador|ULA|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~21_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~18\ ))
-- \processador|ULA|Add2~22\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add2~18\,
	sumout => \processador|ULA|Add2~21_sumout\,
	cout => \processador|ULA|Add2~22\);

-- Location: MLABCELL_X13_Y9_N15
\processador|ULA|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~25_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add2~22\ ))
-- \processador|ULA|Add2~26\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	cin => \processador|ULA|Add2~22\,
	sumout => \processador|ULA|Add2~25_sumout\,
	cout => \processador|ULA|Add2~26\);

-- Location: MLABCELL_X13_Y9_N18
\processador|ULA|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~29_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~26\ ))
-- \processador|ULA|Add2~30\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add2~26\,
	sumout => \processador|ULA|Add2~29_sumout\,
	cout => \processador|ULA|Add2~30\);

-- Location: MLABCELL_X13_Y9_N21
\processador|ULA|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~33_sumout\ = SUM(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~30\ ))
-- \processador|ULA|Add2~34\ = CARRY(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	cin => \processador|ULA|Add2~30\,
	sumout => \processador|ULA|Add2~33_sumout\,
	cout => \processador|ULA|Add2~34\);

-- Location: MLABCELL_X13_Y9_N24
\processador|ULA|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~37_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~34\ ))
-- \processador|ULA|Add2~38\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add2~34\,
	sumout => \processador|ULA|Add2~37_sumout\,
	cout => \processador|ULA|Add2~38\);

-- Location: MLABCELL_X13_Y9_N27
\processador|ULA|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~41_sumout\ = SUM(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~38\ ))
-- \processador|ULA|Add2~42\ = CARRY(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	cin => \processador|ULA|Add2~38\,
	sumout => \processador|ULA|Add2~41_sumout\,
	cout => \processador|ULA|Add2~42\);

-- Location: MLABCELL_X13_Y9_N30
\processador|ULA|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~45_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~42\ ))
-- \processador|ULA|Add2~46\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add2~42\,
	sumout => \processador|ULA|Add2~45_sumout\,
	cout => \processador|ULA|Add2~46\);

-- Location: MLABCELL_X13_Y9_N33
\processador|ULA|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~49_sumout\ = SUM(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~46\ ))
-- \processador|ULA|Add2~50\ = CARRY(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	cin => \processador|ULA|Add2~46\,
	sumout => \processador|ULA|Add2~49_sumout\,
	cout => \processador|ULA|Add2~50\);

-- Location: MLABCELL_X13_Y9_N36
\processador|ULA|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~53_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~50\ ))
-- \processador|ULA|Add2~54\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add2~50\,
	sumout => \processador|ULA|Add2~53_sumout\,
	cout => \processador|ULA|Add2~54\);

-- Location: MLABCELL_X13_Y9_N39
\processador|ULA|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~57_sumout\ = SUM(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~54\ ))
-- \processador|ULA|Add2~58\ = CARRY(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	cin => \processador|ULA|Add2~54\,
	sumout => \processador|ULA|Add2~57_sumout\,
	cout => \processador|ULA|Add2~58\);

-- Location: MLABCELL_X13_Y9_N42
\processador|ULA|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~61_sumout\ = SUM(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add2~58\ ))
-- \processador|ULA|Add2~62\ = CARRY(( (!\processador|ROM_mips|memROM~12_combout\) # (!\processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	cin => \processador|ULA|Add2~58\,
	sumout => \processador|ULA|Add2~61_sumout\,
	cout => \processador|ULA|Add2~62\);

-- Location: MLABCELL_X13_Y9_N45
\processador|ULA|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~65_sumout\ = SUM(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~62\ ))
-- \processador|ULA|Add2~66\ = CARRY(( (!\processador|ROM_mips|memROM~11_combout\) # (!\processador|ROM_mips|memROM~12_combout\) ) + ( GND ) + ( \processador|ULA|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	cin => \processador|ULA|Add2~62\,
	sumout => \processador|ULA|Add2~65_sumout\,
	cout => \processador|ULA|Add2~66\);

-- Location: MLABCELL_X13_Y9_N48
\processador|ULA|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~69_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[16]~0_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1066_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~66\ ))
-- \processador|ULA|Add2~70\ = CARRY(( \processador|bancoRegistrador|saidaA[16]~0_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1066_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[16]~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1066_combout\,
	cin => \processador|ULA|Add2~66\,
	sumout => \processador|ULA|Add2~69_sumout\,
	cout => \processador|ULA|Add2~70\);

-- Location: MLABCELL_X13_Y9_N51
\processador|ULA|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~73_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[17]~1_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1071_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~70\ ))
-- \processador|ULA|Add2~74\ = CARRY(( \processador|bancoRegistrador|saidaA[17]~1_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1071_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[17]~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1071_combout\,
	cin => \processador|ULA|Add2~70\,
	sumout => \processador|ULA|Add2~73_sumout\,
	cout => \processador|ULA|Add2~74\);

-- Location: MLABCELL_X13_Y9_N54
\processador|ULA|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~77_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[18]~2_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1076_combout\) # ((\processador|ROM_mips|memROM~17_combout\ & \processador|ROM_mips|memROM~12_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~74\ ))
-- \processador|ULA|Add2~78\ = CARRY(( \processador|bancoRegistrador|saidaA[18]~2_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1076_combout\) # ((\processador|ROM_mips|memROM~17_combout\ & \processador|ROM_mips|memROM~12_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[18]~2_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1076_combout\,
	cin => \processador|ULA|Add2~74\,
	sumout => \processador|ULA|Add2~77_sumout\,
	cout => \processador|ULA|Add2~78\);

-- Location: MLABCELL_X13_Y9_N57
\processador|ULA|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~81_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[19]~3_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1081_combout\) # ((\processador|ROM_mips|memROM~17_combout\ & \processador|ROM_mips|memROM~12_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~78\ ))
-- \processador|ULA|Add2~82\ = CARRY(( \processador|bancoRegistrador|saidaA[19]~3_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1081_combout\) # ((\processador|ROM_mips|memROM~17_combout\ & \processador|ROM_mips|memROM~12_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[19]~3_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1081_combout\,
	cin => \processador|ULA|Add2~78\,
	sumout => \processador|ULA|Add2~81_sumout\,
	cout => \processador|ULA|Add2~82\);

-- Location: MLABCELL_X13_Y8_N0
\processador|ULA|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~85_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1086_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[20]~4_combout\ ) + ( \processador|ULA|Add2~82\ ))
-- \processador|ULA|Add2~86\ = CARRY(( ((!\processador|bancoRegistrador|registrador~1086_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[20]~4_combout\ ) + ( \processador|ULA|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1086_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[20]~4_combout\,
	cin => \processador|ULA|Add2~82\,
	sumout => \processador|ULA|Add2~85_sumout\,
	cout => \processador|ULA|Add2~86\);

-- Location: MLABCELL_X13_Y8_N3
\processador|ULA|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~89_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[21]~5_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1091_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~86\ ))
-- \processador|ULA|Add2~90\ = CARRY(( \processador|bancoRegistrador|saidaA[21]~5_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1091_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[21]~5_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1091_combout\,
	cin => \processador|ULA|Add2~86\,
	sumout => \processador|ULA|Add2~89_sumout\,
	cout => \processador|ULA|Add2~90\);

-- Location: MLABCELL_X13_Y8_N6
\processador|ULA|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~93_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1096_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[22]~6_combout\ ) + ( \processador|ULA|Add2~90\ ))
-- \processador|ULA|Add2~94\ = CARRY(( ((!\processador|bancoRegistrador|registrador~1096_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[22]~6_combout\ ) + ( \processador|ULA|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1096_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[22]~6_combout\,
	cin => \processador|ULA|Add2~90\,
	sumout => \processador|ULA|Add2~93_sumout\,
	cout => \processador|ULA|Add2~94\);

-- Location: MLABCELL_X13_Y8_N9
\processador|ULA|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~97_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1101_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[23]~7_combout\ ) + ( \processador|ULA|Add2~94\ ))
-- \processador|ULA|Add2~98\ = CARRY(( ((!\processador|bancoRegistrador|registrador~1101_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[23]~7_combout\ ) + ( \processador|ULA|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1101_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[23]~7_combout\,
	cin => \processador|ULA|Add2~94\,
	sumout => \processador|ULA|Add2~97_sumout\,
	cout => \processador|ULA|Add2~98\);

-- Location: MLABCELL_X13_Y8_N12
\processador|ULA|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~101_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1106_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[24]~8_combout\ ) + ( \processador|ULA|Add2~98\ ))
-- \processador|ULA|Add2~102\ = CARRY(( ((!\processador|bancoRegistrador|registrador~1106_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[24]~8_combout\ ) + ( \processador|ULA|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1106_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[24]~8_combout\,
	cin => \processador|ULA|Add2~98\,
	sumout => \processador|ULA|Add2~101_sumout\,
	cout => \processador|ULA|Add2~102\);

-- Location: MLABCELL_X13_Y8_N15
\processador|ULA|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~105_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[25]~9_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1111_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~102\ ))
-- \processador|ULA|Add2~106\ = CARRY(( \processador|bancoRegistrador|saidaA[25]~9_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1111_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[25]~9_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1111_combout\,
	cin => \processador|ULA|Add2~102\,
	sumout => \processador|ULA|Add2~105_sumout\,
	cout => \processador|ULA|Add2~106\);

-- Location: MLABCELL_X13_Y8_N18
\processador|ULA|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~109_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[26]~10_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1116_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~106\ ))
-- \processador|ULA|Add2~110\ = CARRY(( \processador|bancoRegistrador|saidaA[26]~10_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1116_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[26]~10_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1116_combout\,
	cin => \processador|ULA|Add2~106\,
	sumout => \processador|ULA|Add2~109_sumout\,
	cout => \processador|ULA|Add2~110\);

-- Location: MLABCELL_X13_Y8_N21
\processador|ULA|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~113_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[27]~11_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1121_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~110\ ))
-- \processador|ULA|Add2~114\ = CARRY(( \processador|bancoRegistrador|saidaA[27]~11_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1121_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[27]~11_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1121_combout\,
	cin => \processador|ULA|Add2~110\,
	sumout => \processador|ULA|Add2~113_sumout\,
	cout => \processador|ULA|Add2~114\);

-- Location: MLABCELL_X13_Y8_N24
\processador|ULA|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~117_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1126_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[28]~12_combout\ ) + ( \processador|ULA|Add2~114\ ))
-- \processador|ULA|Add2~118\ = CARRY(( ((!\processador|bancoRegistrador|registrador~1126_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[28]~12_combout\ ) + ( \processador|ULA|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1126_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[28]~12_combout\,
	cin => \processador|ULA|Add2~114\,
	sumout => \processador|ULA|Add2~117_sumout\,
	cout => \processador|ULA|Add2~118\);

-- Location: MLABCELL_X13_Y8_N27
\processador|ULA|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~121_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[29]~13_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1131_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~118\ ))
-- \processador|ULA|Add2~122\ = CARRY(( \processador|bancoRegistrador|saidaA[29]~13_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1131_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[29]~13_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1131_combout\,
	cin => \processador|ULA|Add2~118\,
	sumout => \processador|ULA|Add2~121_sumout\,
	cout => \processador|ULA|Add2~122\);

-- Location: LABCELL_X12_Y9_N12
\processador|ULA|Add0~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~126_cout\ = CARRY(( GND ) + ( GND ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \processador|ULA|Add0~126_cout\);

-- Location: LABCELL_X12_Y9_N15
\processador|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~1_sumout\ = SUM(( \processador|MUX1|saida_MUX[1]~1_combout\ ) + ( (\processador|ROM_mips|memROM~15_combout\ & (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~0_combout\)) ) + ( \processador|ULA|Add0~126_cout\ ))
-- \processador|ULA|Add0~2\ = CARRY(( \processador|MUX1|saida_MUX[1]~1_combout\ ) + ( (\processador|ROM_mips|memROM~15_combout\ & (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~0_combout\)) ) + ( \processador|ULA|Add0~126_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \processador|ULA|Add0~126_cout\,
	sumout => \processador|ULA|Add0~1_sumout\,
	cout => \processador|ULA|Add0~2\);

-- Location: LABCELL_X12_Y9_N18
\processador|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~5_sumout\ = SUM(( \processador|MUX1|saida_MUX[2]~2_combout\ ) + ( GND ) + ( \processador|ULA|Add0~2\ ))
-- \processador|ULA|Add0~6\ = CARRY(( \processador|MUX1|saida_MUX[2]~2_combout\ ) + ( GND ) + ( \processador|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \processador|ULA|Add0~2\,
	sumout => \processador|ULA|Add0~5_sumout\,
	cout => \processador|ULA|Add0~6\);

-- Location: LABCELL_X12_Y9_N21
\processador|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~9_sumout\ = SUM(( \processador|MUX1|saida_MUX[3]~3_combout\ ) + ( (\processador|ROM_mips|memROM~15_combout\ & (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~0_combout\)) ) + ( \processador|ULA|Add0~6\ ))
-- \processador|ULA|Add0~10\ = CARRY(( \processador|MUX1|saida_MUX[3]~3_combout\ ) + ( (\processador|ROM_mips|memROM~15_combout\ & (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~0_combout\)) ) + ( \processador|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \processador|ULA|Add0~6\,
	sumout => \processador|ULA|Add0~9_sumout\,
	cout => \processador|ULA|Add0~10\);

-- Location: LABCELL_X12_Y9_N24
\processador|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~13_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~10\ ))
-- \processador|ULA|Add0~14\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~10\,
	sumout => \processador|ULA|Add0~13_sumout\,
	cout => \processador|ULA|Add0~14\);

-- Location: LABCELL_X12_Y9_N27
\processador|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~17_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add0~14\ ))
-- \processador|ULA|Add0~18\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	cin => \processador|ULA|Add0~14\,
	sumout => \processador|ULA|Add0~17_sumout\,
	cout => \processador|ULA|Add0~18\);

-- Location: LABCELL_X12_Y9_N30
\processador|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~21_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~18\ ))
-- \processador|ULA|Add0~22\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~18\,
	sumout => \processador|ULA|Add0~21_sumout\,
	cout => \processador|ULA|Add0~22\);

-- Location: LABCELL_X12_Y9_N33
\processador|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~25_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~22\ ))
-- \processador|ULA|Add0~26\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~22\,
	sumout => \processador|ULA|Add0~25_sumout\,
	cout => \processador|ULA|Add0~26\);

-- Location: LABCELL_X12_Y9_N36
\processador|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~29_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~26\ ))
-- \processador|ULA|Add0~30\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~26\,
	sumout => \processador|ULA|Add0~29_sumout\,
	cout => \processador|ULA|Add0~30\);

-- Location: LABCELL_X12_Y9_N39
\processador|ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~33_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~30\ ))
-- \processador|ULA|Add0~34\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~30\,
	sumout => \processador|ULA|Add0~33_sumout\,
	cout => \processador|ULA|Add0~34\);

-- Location: LABCELL_X12_Y9_N42
\processador|ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~37_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~34\ ))
-- \processador|ULA|Add0~38\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~34\,
	sumout => \processador|ULA|Add0~37_sumout\,
	cout => \processador|ULA|Add0~38\);

-- Location: LABCELL_X12_Y9_N45
\processador|ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~41_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~38\ ))
-- \processador|ULA|Add0~42\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~38\,
	sumout => \processador|ULA|Add0~41_sumout\,
	cout => \processador|ULA|Add0~42\);

-- Location: LABCELL_X12_Y9_N48
\processador|ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~45_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~42\ ))
-- \processador|ULA|Add0~46\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~42\,
	sumout => \processador|ULA|Add0~45_sumout\,
	cout => \processador|ULA|Add0~46\);

-- Location: LABCELL_X12_Y9_N51
\processador|ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~49_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~46\ ))
-- \processador|ULA|Add0~50\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~46\,
	sumout => \processador|ULA|Add0~49_sumout\,
	cout => \processador|ULA|Add0~50\);

-- Location: LABCELL_X12_Y9_N54
\processador|ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~53_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add0~50\ ))
-- \processador|ULA|Add0~54\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~1_combout\) ) + ( GND ) + ( \processador|ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	cin => \processador|ULA|Add0~50\,
	sumout => \processador|ULA|Add0~53_sumout\,
	cout => \processador|ULA|Add0~54\);

-- Location: LABCELL_X12_Y9_N57
\processador|ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~57_sumout\ = SUM(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~54\ ))
-- \processador|ULA|Add0~58\ = CARRY(( (\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~11_combout\) ) + ( GND ) + ( \processador|ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|ULA|Add0~54\,
	sumout => \processador|ULA|Add0~57_sumout\,
	cout => \processador|ULA|Add0~58\);

-- Location: LABCELL_X12_Y8_N0
\processador|ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~61_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[16]~0_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1066_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~58\ ))
-- \processador|ULA|Add0~62\ = CARRY(( \processador|bancoRegistrador|saidaA[16]~0_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1066_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[16]~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1066_combout\,
	cin => \processador|ULA|Add0~58\,
	sumout => \processador|ULA|Add0~61_sumout\,
	cout => \processador|ULA|Add0~62\);

-- Location: LABCELL_X12_Y8_N3
\processador|ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~65_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[17]~1_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1071_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~62\ ))
-- \processador|ULA|Add0~66\ = CARRY(( \processador|bancoRegistrador|saidaA[17]~1_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1071_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[17]~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1071_combout\,
	cin => \processador|ULA|Add0~62\,
	sumout => \processador|ULA|Add0~65_sumout\,
	cout => \processador|ULA|Add0~66\);

-- Location: LABCELL_X12_Y8_N6
\processador|ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~69_sumout\ = SUM(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1076_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[18]~2_combout\ ) + ( \processador|ULA|Add0~66\ ))
-- \processador|ULA|Add0~70\ = CARRY(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1076_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[18]~2_combout\ ) + ( \processador|ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1076_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[18]~2_combout\,
	cin => \processador|ULA|Add0~66\,
	sumout => \processador|ULA|Add0~69_sumout\,
	cout => \processador|ULA|Add0~70\);

-- Location: LABCELL_X12_Y8_N9
\processador|ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~73_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[19]~3_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1081_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~70\ ))
-- \processador|ULA|Add0~74\ = CARRY(( \processador|bancoRegistrador|saidaA[19]~3_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1081_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[19]~3_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1081_combout\,
	cin => \processador|ULA|Add0~70\,
	sumout => \processador|ULA|Add0~73_sumout\,
	cout => \processador|ULA|Add0~74\);

-- Location: LABCELL_X12_Y8_N12
\processador|ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~77_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[20]~4_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1086_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~74\ ))
-- \processador|ULA|Add0~78\ = CARRY(( \processador|bancoRegistrador|saidaA[20]~4_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1086_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[20]~4_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1086_combout\,
	cin => \processador|ULA|Add0~74\,
	sumout => \processador|ULA|Add0~77_sumout\,
	cout => \processador|ULA|Add0~78\);

-- Location: LABCELL_X12_Y8_N15
\processador|ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~81_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[21]~5_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1091_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~78\ ))
-- \processador|ULA|Add0~82\ = CARRY(( \processador|bancoRegistrador|saidaA[21]~5_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1091_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[21]~5_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1091_combout\,
	cin => \processador|ULA|Add0~78\,
	sumout => \processador|ULA|Add0~81_sumout\,
	cout => \processador|ULA|Add0~82\);

-- Location: LABCELL_X12_Y8_N18
\processador|ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~85_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[22]~6_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1096_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~82\ ))
-- \processador|ULA|Add0~86\ = CARRY(( \processador|bancoRegistrador|saidaA[22]~6_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1096_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[22]~6_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1096_combout\,
	cin => \processador|ULA|Add0~82\,
	sumout => \processador|ULA|Add0~85_sumout\,
	cout => \processador|ULA|Add0~86\);

-- Location: LABCELL_X12_Y8_N21
\processador|ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~89_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[23]~7_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1101_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~86\ ))
-- \processador|ULA|Add0~90\ = CARRY(( \processador|bancoRegistrador|saidaA[23]~7_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1101_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[23]~7_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1101_combout\,
	cin => \processador|ULA|Add0~86\,
	sumout => \processador|ULA|Add0~89_sumout\,
	cout => \processador|ULA|Add0~90\);

-- Location: LABCELL_X12_Y8_N24
\processador|ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~93_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[24]~8_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1106_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) 
-- # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~90\ ))
-- \processador|ULA|Add0~94\ = CARRY(( \processador|bancoRegistrador|saidaA[24]~8_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1106_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[24]~8_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1106_combout\,
	cin => \processador|ULA|Add0~90\,
	sumout => \processador|ULA|Add0~93_sumout\,
	cout => \processador|ULA|Add0~94\);

-- Location: LABCELL_X12_Y8_N27
\processador|ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~97_sumout\ = SUM(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1111_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[25]~9_combout\ ) + ( \processador|ULA|Add0~94\ ))
-- \processador|ULA|Add0~98\ = CARRY(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1111_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[25]~9_combout\ ) + ( \processador|ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1111_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[25]~9_combout\,
	cin => \processador|ULA|Add0~94\,
	sumout => \processador|ULA|Add0~97_sumout\,
	cout => \processador|ULA|Add0~98\);

-- Location: LABCELL_X12_Y8_N30
\processador|ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~101_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[26]~10_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1116_combout\ & 
-- ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~98\ ))
-- \processador|ULA|Add0~102\ = CARRY(( \processador|bancoRegistrador|saidaA[26]~10_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1116_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[26]~10_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1116_combout\,
	cin => \processador|ULA|Add0~98\,
	sumout => \processador|ULA|Add0~101_sumout\,
	cout => \processador|ULA|Add0~102\);

-- Location: LABCELL_X12_Y8_N33
\processador|ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~105_sumout\ = SUM(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1121_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[27]~11_combout\ ) + ( \processador|ULA|Add0~102\ ))
-- \processador|ULA|Add0~106\ = CARRY(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1121_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[27]~11_combout\ ) + ( \processador|ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1121_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[27]~11_combout\,
	cin => \processador|ULA|Add0~102\,
	sumout => \processador|ULA|Add0~105_sumout\,
	cout => \processador|ULA|Add0~106\);

-- Location: LABCELL_X12_Y8_N36
\processador|ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~109_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[28]~12_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1126_combout\ & 
-- ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~106\ ))
-- \processador|ULA|Add0~110\ = CARRY(( \processador|bancoRegistrador|saidaA[28]~12_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1126_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[28]~12_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1126_combout\,
	cin => \processador|ULA|Add0~106\,
	sumout => \processador|ULA|Add0~109_sumout\,
	cout => \processador|ULA|Add0~110\);

-- Location: LABCELL_X12_Y8_N39
\processador|ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~113_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[29]~13_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1131_combout\ & 
-- ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~110\ ))
-- \processador|ULA|Add0~114\ = CARRY(( \processador|bancoRegistrador|saidaA[29]~13_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1131_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[29]~13_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1131_combout\,
	cin => \processador|ULA|Add0~110\,
	sumout => \processador|ULA|Add0~113_sumout\,
	cout => \processador|ULA|Add0~114\);

-- Location: MLABCELL_X13_Y8_N48
\processador|ULA|saida[29]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[29]~55_combout\ = ( \processador|ULA|Add0~113_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~121_sumout\)) # (\processador|ULA|saida[29]~54_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~113_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~121_sumout\)) # (\processador|ULA|saida[29]~54_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[29]~54_combout\,
	datad => \processador|ULA|ALT_INV_Add2~121_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~113_sumout\,
	combout => \processador|ULA|saida[29]~55_combout\);

-- Location: FF_X12_Y7_N5
\processador|bancoRegistrador|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~1_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~324_q\);

-- Location: FF_X12_Y7_N17
\processador|bancoRegistrador|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~1_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~68_q\);

-- Location: LABCELL_X12_Y7_N3
\processador|bancoRegistrador|registrador~1161\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1161_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( \processador|ROM_mips|memROM~13_combout\ ) ) # ( !\processador|ROM_mips|memROM~14_combout\ & ( (!\processador|ROM_mips|memROM~13_combout\ & 
-- (\processador|bancoRegistrador|registrador~68_q\ & !\processador|ROM_mips|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~68_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1161_combout\);

-- Location: LABCELL_X12_Y7_N15
\processador|bancoRegistrador|registrador~1136\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1136_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1161_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( 
-- !\processador|ROM_mips|memROM~1_combout\ & ( \processador|bancoRegistrador|registrador~1161_combout\ & ( !\processador|ROM_mips|memROM~14_combout\ ) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- !\processador|bancoRegistrador|registrador~1161_combout\ & ( (\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~324_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~324_q\,
	datae => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1161_combout\,
	combout => \processador|bancoRegistrador|registrador~1136_combout\);

-- Location: LABCELL_X12_Y7_N9
\processador|bancoRegistrador|registrador~1135\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1135_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & ((\processador|bancoRegistrador|registrador~68_q\))) # (\processador|ROM_mips|memROM~1_combout\ & 
-- (\processador|bancoRegistrador|registrador~324_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~324_q\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~68_q\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1135_combout\);

-- Location: LABCELL_X12_Y7_N42
\processador|bancoRegistrador|saidaA[30]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[30]~14_combout\ = ( \processador|bancoRegistrador|registrador~1135_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~15_combout\) # (\processador|ROM_mips|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1135_combout\,
	combout => \processador|bancoRegistrador|saidaA[30]~14_combout\);

-- Location: MLABCELL_X13_Y8_N57
\processador|ULA|saida[30]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[30]~56_combout\ = ( \processador|bancoRegistrador|saidaA[30]~14_combout\ & ( ((\processador|ULA|saida[31]~27_combout\ & \processador|bancoRegistrador|registrador~1136_combout\)) # (\processador|ULA|saida[2]~11_combout\) ) ) # ( 
-- !\processador|bancoRegistrador|saidaA[30]~14_combout\ & ( (\processador|MUX1|saida_MUX[31]~4_combout\ & (\processador|ULA|saida[2]~11_combout\ & \processador|bancoRegistrador|registrador~1136_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1136_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[30]~14_combout\,
	combout => \processador|ULA|saida[30]~56_combout\);

-- Location: LABCELL_X12_Y8_N42
\processador|ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~117_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[30]~14_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1136_combout\ & 
-- ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~114\ ))
-- \processador|ULA|Add0~118\ = CARRY(( \processador|bancoRegistrador|saidaA[30]~14_combout\ ) + ( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1136_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # 
-- (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( \processador|ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[30]~14_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1136_combout\,
	cin => \processador|ULA|Add0~114\,
	sumout => \processador|ULA|Add0~117_sumout\,
	cout => \processador|ULA|Add0~118\);

-- Location: MLABCELL_X13_Y8_N30
\processador|ULA|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~125_sumout\ = SUM(( \processador|bancoRegistrador|saidaA[30]~14_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1136_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~122\ ))
-- \processador|ULA|Add2~126\ = CARRY(( \processador|bancoRegistrador|saidaA[30]~14_combout\ ) + ( ((!\processador|bancoRegistrador|registrador~1136_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # 
-- (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( \processador|ULA|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[30]~14_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1136_combout\,
	cin => \processador|ULA|Add2~122\,
	sumout => \processador|ULA|Add2~125_sumout\,
	cout => \processador|ULA|Add2~126\);

-- Location: MLABCELL_X13_Y8_N39
\processador|ULA|saida[30]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[30]~57_combout\ = ( \processador|ULA|Add2~125_sumout\ & ( (((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~117_sumout\)) # (\processador|ULA|saida[30]~56_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( 
-- !\processador|ULA|Add2~125_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~117_sumout\)) # (\processador|ULA|saida[30]~56_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[30]~56_combout\,
	datad => \processador|ULA|ALT_INV_Add0~117_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~125_sumout\,
	combout => \processador|ULA|saida[30]~57_combout\);

-- Location: LABCELL_X14_Y8_N57
\processador|ULA|saida[7]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[7]~18_combout\ = ( \processador|ULA|Add0~25_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~33_sumout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( !\processador|ULA|Add0~25_sumout\ & ( 
-- (\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datad => \processador|ULA|ALT_INV_Add2~33_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~25_sumout\,
	combout => \processador|ULA|saida[7]~18_combout\);

-- Location: LABCELL_X14_Y8_N48
\processador|ULA|saida[8]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[8]~19_combout\ = ( \processador|ULA|Add2~37_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~29_sumout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( !\processador|ULA|Add2~37_sumout\ & ( 
-- (\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datad => \processador|ULA|ALT_INV_Add0~29_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~37_sumout\,
	combout => \processador|ULA|saida[8]~19_combout\);

-- Location: LABCELL_X14_Y8_N12
\processador|ULA|saida[16]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[16]~28_combout\ = ( \processador|ULA|saida[2]~11_combout\ & ( \processador|ULA|saida[31]~27_combout\ & ( ((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1066_combout\)) # 
-- (\processador|bancoRegistrador|saidaA[16]~0_combout\) ) ) ) # ( !\processador|ULA|saida[2]~11_combout\ & ( \processador|ULA|saida[31]~27_combout\ & ( (\processador|bancoRegistrador|saidaA[16]~0_combout\ & 
-- \processador|bancoRegistrador|registrador~1066_combout\) ) ) ) # ( \processador|ULA|saida[2]~11_combout\ & ( !\processador|ULA|saida[31]~27_combout\ & ( ((\processador|MUX1|saida_MUX[31]~4_combout\ & 
-- \processador|bancoRegistrador|registrador~1066_combout\)) # (\processador|bancoRegistrador|saidaA[16]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011100000011000000110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_saidaA[16]~0_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1066_combout\,
	datae => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[16]~28_combout\);

-- Location: LABCELL_X14_Y8_N39
\processador|ULA|saida[16]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[16]~29_combout\ = ( \processador|ULA|Add2~69_sumout\ & ( (((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~61_sumout\)) # (\processador|ULA|saida[16]~28_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( 
-- !\processador|ULA|Add2~69_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~61_sumout\)) # (\processador|ULA|saida[16]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[16]~28_combout\,
	datad => \processador|ULA|ALT_INV_Add0~61_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~69_sumout\,
	combout => \processador|ULA|saida[16]~29_combout\);

-- Location: LABCELL_X14_Y8_N3
\processador|ULA|saida[17]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[17]~30_combout\ = ( \processador|ULA|saida[31]~27_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[17]~1_combout\ & \processador|bancoRegistrador|registrador~1071_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1071_combout\)) # (\processador|bancoRegistrador|saidaA[17]~1_combout\))) ) ) # ( !\processador|ULA|saida[31]~27_combout\ & 
-- ( (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1071_combout\)) # (\processador|bancoRegistrador|saidaA[17]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000111110000001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_saidaA[17]~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1071_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[17]~30_combout\);

-- Location: LABCELL_X14_Y8_N36
\processador|ULA|saida[17]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[17]~31_combout\ = ( \processador|ULA|Add0~65_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~73_sumout\)) # (\processador|ULA|saida[17]~30_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~65_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~73_sumout\)) # (\processador|ULA|saida[17]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111101011111011111110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[17]~30_combout\,
	datad => \processador|ULA|ALT_INV_Add2~73_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~65_sumout\,
	combout => \processador|ULA|saida[17]~31_combout\);

-- Location: LABCELL_X14_Y8_N30
\processador|ULA|saida[18]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[18]~32_combout\ = ( \processador|ULA|saida[31]~27_combout\ & ( (!\processador|bancoRegistrador|registrador~1076_combout\ & (\processador|bancoRegistrador|saidaA[18]~2_combout\ & ((\processador|ULA|saida[2]~11_combout\)))) # 
-- (\processador|bancoRegistrador|registrador~1076_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|bancoRegistrador|saidaA[18]~2_combout\))) ) ) # ( !\processador|ULA|saida[31]~27_combout\ & 
-- ( (\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|registrador~1076_combout\ & \processador|MUX1|saida_MUX[31]~4_combout\)) # (\processador|bancoRegistrador|saidaA[18]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100010001001101110001000100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_registrador~1076_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_saidaA[18]~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datad => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[18]~32_combout\);

-- Location: LABCELL_X14_Y8_N9
\processador|ULA|saida[18]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[18]~33_combout\ = ( \processador|ULA|Add2~77_sumout\ & ( (((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~69_sumout\)) # (\processador|ULA|saida[18]~32_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( 
-- !\processador|ULA|Add2~77_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~69_sumout\)) # (\processador|ULA|saida[18]~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[18]~32_combout\,
	datad => \processador|ULA|ALT_INV_Add0~69_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~77_sumout\,
	combout => \processador|ULA|saida[18]~33_combout\);

-- Location: LABCELL_X14_Y8_N24
\processador|selMUX_AND_BEQ~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~9_combout\ = ( !\processador|ULA|saida[17]~31_combout\ & ( !\processador|ULA|saida[18]~33_combout\ & ( (!\processador|ULA|saida[7]~18_combout\ & (!\processador|ULA|saida[8]~19_combout\ & 
-- !\processador|ULA|saida[16]~29_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_saida[7]~18_combout\,
	datac => \processador|ULA|ALT_INV_saida[8]~19_combout\,
	datad => \processador|ULA|ALT_INV_saida[16]~29_combout\,
	datae => \processador|ULA|ALT_INV_saida[17]~31_combout\,
	dataf => \processador|ULA|ALT_INV_saida[18]~33_combout\,
	combout => \processador|selMUX_AND_BEQ~9_combout\);

-- Location: LABCELL_X14_Y9_N27
\processador|ULA|saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~4_combout\ = ( \processador|UC_ULA|ULActrl[1]~4_combout\ & ( (\processador|UC_ULA|ULActrl[0]~5_combout\ & \processador|selMUX_AND_BEQ~0_combout\) ) ) # ( !\processador|UC_ULA|ULActrl[1]~4_combout\ & ( 
-- \processador|UC_ULA|ULActrl[0]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\,
	combout => \processador|ULA|saida[1]~4_combout\);

-- Location: MLABCELL_X13_Y13_N3
\processador|UC_ULA|ULActrl[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl[1]~0_combout\ = ( \processador|UC|Equal5~0_combout\ & ( \processador|ROM_mips|memROM~6_combout\ ) ) # ( !\processador|UC|Equal5~0_combout\ & ( \processador|ROM_mips|memROM~6_combout\ & ( 
-- (!\processador|ROM_mips|memROM~9_combout\ & (\processador|ROM_mips|memROM~4_combout\ & (!\processador|ROM_mips|memROM~8_combout\ & \processador|ROM_mips|memROM~1_combout\))) ) ) ) # ( \processador|UC|Equal5~0_combout\ & ( 
-- !\processador|ROM_mips|memROM~6_combout\ ) ) # ( !\processador|UC|Equal5~0_combout\ & ( !\processador|ROM_mips|memROM~6_combout\ & ( (!\processador|ROM_mips|memROM~9_combout\ & (!\processador|ROM_mips|memROM~8_combout\ & 
-- \processador|ROM_mips|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000111111111111111100000000001000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~9_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~4_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~8_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datae => \processador|UC|ALT_INV_Equal5~0_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~6_combout\,
	combout => \processador|UC_ULA|ULActrl[1]~0_combout\);

-- Location: LABCELL_X14_Y9_N30
\processador|ULA|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~5_combout\ = ( \processador|UC_ULA|ULActrl[1]~0_combout\ & ( (!\processador|UC_ULA|ULActrl[0]~5_combout\) # ((!\processador|selMUX_AND_BEQ~0_combout\ & !\processador|UC_ULA|ULActrl[1]~1_combout\)) ) ) # ( 
-- !\processador|UC_ULA|ULActrl[1]~0_combout\ & ( (!\processador|selMUX_AND_BEQ~0_combout\ & (!\processador|UC_ULA|ULActrl[1]~1_combout\ & \processador|UC_ULA|ULActrl[0]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	datac => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	datad => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \processador|ULA|saida[1]~5_combout\);

-- Location: LABCELL_X12_Y7_N0
\processador|ULA|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~6_combout\ = ( \processador|ROM_mips|memROM~0_combout\ & ( (!\processador|PC|DOUT\(7) & \processador|ROM_mips|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	combout => \processador|ULA|saida[3]~6_combout\);

-- Location: LABCELL_X14_Y9_N15
\processador|ULA|saida[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~7_combout\ = ( \processador|UC_ULA|ULActrl[1]~1_combout\ & ( (\processador|ULA|saida[3]~6_combout\ & \processador|UC_ULA|ULActrl[0]~5_combout\) ) ) # ( !\processador|UC_ULA|ULActrl[1]~1_combout\ & ( 
-- (\processador|ULA|saida[3]~6_combout\ & ((!\processador|selMUX_AND_BEQ~0_combout\) # (\processador|UC_ULA|ULActrl[0]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_saida[3]~6_combout\,
	datac => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	combout => \processador|ULA|saida[1]~7_combout\);

-- Location: LABCELL_X14_Y9_N18
\processador|ULA|saida[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~8_combout\ = ( \processador|MUX1|saida_MUX[1]~1_combout\ & ( \processador|ULA|saida[1]~7_combout\ & ( (!\processador|ULA|saida[1]~4_combout\ & ((!\processador|ULA|saida[1]~5_combout\) # ((!\processador|ULA|saida[1]~3_combout\ & 
-- \processador|ULA|Add0~1_sumout\)))) # (\processador|ULA|saida[1]~4_combout\ & (((\processador|ULA|saida[1]~5_combout\)))) ) ) ) # ( !\processador|MUX1|saida_MUX[1]~1_combout\ & ( \processador|ULA|saida[1]~7_combout\ & ( 
-- (\processador|ULA|saida[1]~5_combout\ & (((!\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add0~1_sumout\)) # (\processador|ULA|saida[1]~4_combout\))) ) ) ) # ( \processador|MUX1|saida_MUX[1]~1_combout\ & ( !\processador|ULA|saida[1]~7_combout\ & 
-- ( (!\processador|ULA|saida[1]~3_combout\ & (\processador|ULA|saida[1]~5_combout\ & ((\processador|ULA|Add0~1_sumout\) # (\processador|ULA|saida[1]~4_combout\)))) ) ) ) # ( !\processador|MUX1|saida_MUX[1]~1_combout\ & ( 
-- !\processador|ULA|saida[1]~7_combout\ & ( (!\processador|ULA|saida[1]~4_combout\ & (!\processador|ULA|saida[1]~3_combout\ & (\processador|ULA|Add0~1_sumout\ & \processador|ULA|saida[1]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000100110000000000010111011010101001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add0~1_sumout\,
	datad => \processador|ULA|ALT_INV_saida[1]~5_combout\,
	datae => \processador|MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \processador|ULA|ALT_INV_saida[1]~7_combout\,
	combout => \processador|ULA|saida[1]~8_combout\);

-- Location: LABCELL_X14_Y9_N54
\processador|selMUX_AND_BEQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~2_combout\ = ( \processador|ULA|Add2~49_sumout\ & ( \processador|ULA|Add0~41_sumout\ & ( (!\processador|ULA|saida[2]~10_combout\ & (!\processador|ULA|saida[1]~3_combout\ & !\processador|ULA|saida[1]~8_combout\)) ) ) ) # ( 
-- !\processador|ULA|Add2~49_sumout\ & ( \processador|ULA|Add0~41_sumout\ & ( (!\processador|ULA|saida[2]~10_combout\ & (!\processador|ULA|saida[1]~8_combout\ & ((!\processador|ULA|saida[1]~3_combout\) # (!\processador|ULA|Add2~9_sumout\)))) ) ) ) # ( 
-- \processador|ULA|Add2~49_sumout\ & ( !\processador|ULA|Add0~41_sumout\ & ( (!\processador|ULA|saida[1]~3_combout\ & !\processador|ULA|saida[1]~8_combout\) ) ) ) # ( !\processador|ULA|Add2~49_sumout\ & ( !\processador|ULA|Add0~41_sumout\ & ( 
-- (!\processador|ULA|saida[1]~8_combout\ & ((!\processador|ULA|saida[1]~3_combout\) # (!\processador|ULA|Add2~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000110000001100000010100000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[1]~8_combout\,
	datad => \processador|ULA|ALT_INV_Add2~9_sumout\,
	datae => \processador|ULA|ALT_INV_Add2~49_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~41_sumout\,
	combout => \processador|selMUX_AND_BEQ~2_combout\);

-- Location: MLABCELL_X13_Y10_N27
\processador|ULA|saida[19]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[19]~34_combout\ = ( \processador|bancoRegistrador|registrador~1081_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[19]~3_combout\ & \processador|ULA|saida[31]~27_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[19]~3_combout\)) # (\processador|MUX1|saida_MUX[31]~4_combout\))) ) ) # ( !\processador|bancoRegistrador|registrador~1081_combout\ & ( (\processador|ULA|saida[2]~11_combout\ 
-- & \processador|bancoRegistrador|saidaA[19]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010101000111110001010100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_saidaA[19]~3_combout\,
	datad => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1081_combout\,
	combout => \processador|ULA|saida[19]~34_combout\);

-- Location: MLABCELL_X13_Y10_N57
\processador|ULA|saida[19]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[19]~35_combout\ = ( \processador|ULA|Add0~73_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~81_sumout\)) # (\processador|ULA|saida[2]~10_combout\)) # (\processador|ULA|saida[19]~34_combout\) ) ) # ( 
-- !\processador|ULA|Add0~73_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~81_sumout\)) # (\processador|ULA|saida[19]~34_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010101110101011101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[19]~34_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add2~81_sumout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~73_sumout\,
	combout => \processador|ULA|saida[19]~35_combout\);

-- Location: LABCELL_X14_Y8_N33
\processador|selMUX_AND_BEQ~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~11_combout\ = ( \processador|ULA|Add2~13_sumout\ & ( (\processador|UC_ULA|ULActrl[0]~5_combout\ & \processador|selMUX_AND_BEQ~0_combout\) ) ) # ( !\processador|ULA|Add2~13_sumout\ & ( \processador|selMUX_AND_BEQ~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~13_sumout\,
	combout => \processador|selMUX_AND_BEQ~11_combout\);

-- Location: LABCELL_X14_Y10_N24
\processador|selMUX_AND_BEQ~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~6_combout\ = ( \processador|ULA|Add0~49_sumout\ & ( \processador|ULA|Add2~105_sumout\ & ( (!\processador|ULA|saida[2]~10_combout\ & (\processador|selMUX_AND_BEQ~11_combout\ & !\processador|ULA|saida[1]~3_combout\)) ) ) ) # ( 
-- !\processador|ULA|Add0~49_sumout\ & ( \processador|ULA|Add2~105_sumout\ & ( (\processador|selMUX_AND_BEQ~11_combout\ & !\processador|ULA|saida[1]~3_combout\) ) ) ) # ( \processador|ULA|Add0~49_sumout\ & ( !\processador|ULA|Add2~105_sumout\ & ( 
-- (!\processador|ULA|saida[2]~10_combout\ & (\processador|selMUX_AND_BEQ~11_combout\ & ((!\processador|ULA|Add2~57_sumout\) # (!\processador|ULA|saida[1]~3_combout\)))) ) ) ) # ( !\processador|ULA|Add0~49_sumout\ & ( !\processador|ULA|Add2~105_sumout\ & ( 
-- (\processador|selMUX_AND_BEQ~11_combout\ & ((!\processador|ULA|Add2~57_sumout\) # (!\processador|ULA|saida[1]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000010100000100000001111000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_Add2~57_sumout\,
	datac => \processador|ALT_INV_selMUX_AND_BEQ~11_combout\,
	datad => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datae => \processador|ULA|ALT_INV_Add0~49_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~105_sumout\,
	combout => \processador|selMUX_AND_BEQ~6_combout\);

-- Location: LABCELL_X12_Y8_N54
\processador|ULA|saida[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[5]~15_combout\ = ( \processador|ROM_mips|memROM~12_combout\ & ( \processador|ROM_mips|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datae => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	combout => \processador|ULA|saida[5]~15_combout\);

-- Location: LABCELL_X14_Y9_N36
\processador|ULA|saida[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[5]~16_combout\ = ( \processador|ULA|Add0~17_sumout\ & ( \processador|ULA|Add2~25_sumout\ & ( (((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[2]~10_combout\)) # 
-- (\processador|ULA|saida[1]~3_combout\) ) ) ) # ( !\processador|ULA|Add0~17_sumout\ & ( \processador|ULA|Add2~25_sumout\ & ( ((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) ) # 
-- ( \processador|ULA|Add0~17_sumout\ & ( !\processador|ULA|Add2~25_sumout\ & ( ((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) ) # ( !\processador|ULA|Add0~17_sumout\ & ( 
-- !\processador|ULA|Add2~25_sumout\ & ( (\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110101111100110011011101110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[5]~15_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datad => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datae => \processador|ULA|ALT_INV_Add0~17_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~25_sumout\,
	combout => \processador|ULA|saida[5]~16_combout\);

-- Location: LABCELL_X14_Y9_N12
\processador|ULA|saida[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~12_combout\ = ( \processador|ULA|saida[1]~5_combout\ & ( (\processador|ULA|saida[1]~4_combout\ & (!\processador|ULA|saida[1]~3_combout\ & ((\processador|ULA|saida[3]~6_combout\) # (\processador|MUX1|saida_MUX[3]~3_combout\)))) ) 
-- ) # ( !\processador|ULA|saida[1]~5_combout\ & ( (\processador|MUX1|saida_MUX[3]~3_combout\ & (\processador|ULA|saida[3]~6_combout\ & (!\processador|ULA|saida[1]~4_combout\ & !\processador|ULA|saida[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[3]~6_combout\,
	datac => \processador|ULA|ALT_INV_saida[1]~4_combout\,
	datad => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	dataf => \processador|ULA|ALT_INV_saida[1]~5_combout\,
	combout => \processador|ULA|saida[3]~12_combout\);

-- Location: LABCELL_X14_Y9_N42
\processador|ULA|saida[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[3]~13_combout\ = ( \processador|ULA|Add2~17_sumout\ & ( (((\processador|ULA|Add0~9_sumout\ & \processador|ULA|saida[2]~10_combout\)) # (\processador|ULA|saida[1]~3_combout\)) # (\processador|ULA|saida[3]~12_combout\) ) ) # ( 
-- !\processador|ULA|Add2~17_sumout\ & ( ((\processador|ULA|Add0~9_sumout\ & \processador|ULA|saida[2]~10_combout\)) # (\processador|ULA|saida[3]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_Add0~9_sumout\,
	datab => \processador|ULA|ALT_INV_saida[3]~12_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datad => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~17_sumout\,
	combout => \processador|ULA|saida[3]~13_combout\);

-- Location: LABCELL_X14_Y9_N48
\processador|selMUX_AND_BEQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~1_combout\ = ( !\processador|ULA|saida[2]~10_combout\ & ( \processador|ULA|Add0~37_sumout\ & ( (!\processador|ULA|saida[1]~3_combout\) # ((!\processador|ULA|Add2~45_sumout\ & !\processador|ULA|Add2~41_sumout\)) ) ) ) # ( 
-- \processador|ULA|saida[2]~10_combout\ & ( !\processador|ULA|Add0~37_sumout\ & ( (!\processador|ULA|Add0~33_sumout\ & ((!\processador|ULA|saida[1]~3_combout\) # ((!\processador|ULA|Add2~45_sumout\ & !\processador|ULA|Add2~41_sumout\)))) ) ) ) # ( 
-- !\processador|ULA|saida[2]~10_combout\ & ( !\processador|ULA|Add0~37_sumout\ & ( (!\processador|ULA|saida[1]~3_combout\) # ((!\processador|ULA|Add2~45_sumout\ & !\processador|ULA|Add2~41_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011001100111000001100000011101110110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_Add2~45_sumout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add0~33_sumout\,
	datad => \processador|ULA|ALT_INV_Add2~41_sumout\,
	datae => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~37_sumout\,
	combout => \processador|selMUX_AND_BEQ~1_combout\);

-- Location: LABCELL_X14_Y9_N9
\processador|ULA|saida[12]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[12]~23_combout\ = ( \processador|ULA|Add0~45_sumout\ & ( ((\processador|ULA|Add2~53_sumout\ & \processador|ULA|saida[1]~3_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( !\processador|ULA|Add0~45_sumout\ & ( 
-- (\processador|ULA|Add2~53_sumout\ & \processador|ULA|saida[1]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_Add2~53_sumout\,
	datac => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~45_sumout\,
	combout => \processador|ULA|saida[12]~23_combout\);

-- Location: LABCELL_X14_Y9_N39
\processador|ULA|saida[14]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[14]~25_combout\ = ( \processador|ULA|Add0~53_sumout\ & ( \processador|ULA|Add2~61_sumout\ & ( (((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[2]~10_combout\)) # 
-- (\processador|ULA|saida[1]~3_combout\) ) ) ) # ( !\processador|ULA|Add0~53_sumout\ & ( \processador|ULA|Add2~61_sumout\ & ( ((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) ) # 
-- ( \processador|ULA|Add0~53_sumout\ & ( !\processador|ULA|Add2~61_sumout\ & ( ((\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) ) # ( !\processador|ULA|Add0~53_sumout\ & ( 
-- !\processador|ULA|Add2~61_sumout\ & ( (\processador|ULA|saida[5]~15_combout\ & \processador|ULA|saida[2]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011111111100110111001101110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[5]~15_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datae => \processador|ULA|ALT_INV_Add0~53_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~61_sumout\,
	combout => \processador|ULA|saida[14]~25_combout\);

-- Location: LABCELL_X14_Y9_N24
\processador|selMUX_AND_BEQ~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~7_combout\ = ( !\processador|ULA|saida[14]~25_combout\ & ( (!\processador|ULA|saida[5]~16_combout\ & (!\processador|ULA|saida[3]~13_combout\ & (\processador|selMUX_AND_BEQ~1_combout\ & !\processador|ULA|saida[12]~23_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[5]~16_combout\,
	datab => \processador|ULA|ALT_INV_saida[3]~13_combout\,
	datac => \processador|ALT_INV_selMUX_AND_BEQ~1_combout\,
	datad => \processador|ULA|ALT_INV_saida[12]~23_combout\,
	dataf => \processador|ULA|ALT_INV_saida[14]~25_combout\,
	combout => \processador|selMUX_AND_BEQ~7_combout\);

-- Location: MLABCELL_X13_Y8_N42
\processador|ULA|saida[24]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[24]~44_combout\ = ( \processador|bancoRegistrador|saidaA[24]~8_combout\ & ( ((\processador|bancoRegistrador|registrador~1106_combout\ & \processador|ULA|saida[31]~27_combout\)) # (\processador|ULA|saida[2]~11_combout\) ) ) # ( 
-- !\processador|bancoRegistrador|saidaA[24]~8_combout\ & ( (\processador|MUX1|saida_MUX[31]~4_combout\ & (\processador|ULA|saida[2]~11_combout\ & \processador|bancoRegistrador|registrador~1106_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1106_combout\,
	datad => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[24]~8_combout\,
	combout => \processador|ULA|saida[24]~44_combout\);

-- Location: MLABCELL_X13_Y8_N51
\processador|ULA|saida[24]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[24]~45_combout\ = ( \processador|ULA|Add0~93_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~101_sumout\)) # (\processador|ULA|saida[24]~44_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~93_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~101_sumout\)) # (\processador|ULA|saida[24]~44_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add2~101_sumout\,
	datad => \processador|ULA|ALT_INV_saida[24]~44_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~93_sumout\,
	combout => \processador|ULA|saida[24]~45_combout\);

-- Location: LABCELL_X14_Y8_N45
\processador|ULA|saida[25]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[25]~46_combout\ = ( \processador|ULA|saida[31]~27_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[25]~9_combout\ & \processador|bancoRegistrador|registrador~1111_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1111_combout\)) # (\processador|bancoRegistrador|saidaA[25]~9_combout\))) ) ) # ( !\processador|ULA|saida[31]~27_combout\ & 
-- ( (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1111_combout\)) # (\processador|bancoRegistrador|saidaA[25]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000111110000001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_saidaA[25]~9_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1111_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[25]~46_combout\);

-- Location: MLABCELL_X13_Y10_N9
\processador|ULA|saida[25]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[25]~60_combout\ = ( \processador|ULA|Add0~97_sumout\ & ( (!\processador|ULA|saida[2]~10_combout\ & !\processador|ULA|saida[25]~46_combout\) ) ) # ( !\processador|ULA|Add0~97_sumout\ & ( !\processador|ULA|saida[25]~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datad => \processador|ULA|ALT_INV_saida[25]~46_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~97_sumout\,
	combout => \processador|ULA|saida[25]~60_combout\);

-- Location: LABCELL_X14_Y10_N6
\processador|selMUX_AND_BEQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~3_combout\ = ( !\processador|ULA|saida[24]~45_combout\ & ( \processador|ULA|saida[25]~60_combout\ & ( (\processador|selMUX_AND_BEQ~2_combout\ & (!\processador|ULA|saida[19]~35_combout\ & (\processador|selMUX_AND_BEQ~6_combout\ 
-- & \processador|selMUX_AND_BEQ~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ALT_INV_selMUX_AND_BEQ~2_combout\,
	datab => \processador|ULA|ALT_INV_saida[19]~35_combout\,
	datac => \processador|ALT_INV_selMUX_AND_BEQ~6_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~7_combout\,
	datae => \processador|ULA|ALT_INV_saida[24]~45_combout\,
	dataf => \processador|ULA|ALT_INV_saida[25]~60_combout\,
	combout => \processador|selMUX_AND_BEQ~3_combout\);

-- Location: MLABCELL_X13_Y7_N9
\processador|UC_ULA|ULActrl[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|UC_ULA|ULActrl[2]~2_combout\ = ( \processador|selMUX_AND_BEQ~0_combout\ & ( \processador|UC_ULA|ULActrl[1]~1_combout\ ) ) # ( !\processador|selMUX_AND_BEQ~0_combout\ & ( \processador|UC_ULA|ULActrl[1]~1_combout\ ) ) # ( 
-- \processador|selMUX_AND_BEQ~0_combout\ & ( !\processador|UC_ULA|ULActrl[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	combout => \processador|UC_ULA|ULActrl[2]~2_combout\);

-- Location: MLABCELL_X13_Y7_N33
\processador|ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~1_combout\ = ( \processador|ULA|Add2~5_sumout\ & ( (!\processador|UC_ULA|ULActrl[2]~2_combout\ & (\processador|MUX1|saida_MUX[0]~0_combout\ & (!\processador|UC_ULA|ULActrl[0]~5_combout\ $ 
-- (!\processador|UC_ULA|ULActrl[1]~0_combout\)))) # (\processador|UC_ULA|ULActrl[2]~2_combout\ & (!\processador|UC_ULA|ULActrl[0]~5_combout\ & ((\processador|UC_ULA|ULActrl[1]~0_combout\)))) ) ) # ( !\processador|ULA|Add2~5_sumout\ & ( 
-- (!\processador|UC_ULA|ULActrl[2]~2_combout\ & (\processador|MUX1|saida_MUX[0]~0_combout\ & (!\processador|UC_ULA|ULActrl[0]~5_combout\ $ (!\processador|UC_ULA|ULActrl[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000100001010100000010000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datab => \processador|UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datac => \processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \processador|UC_ULA|ALT_INV_ULActrl[1]~0_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~5_sumout\,
	combout => \processador|ULA|saida[0]~1_combout\);

-- Location: MLABCELL_X13_Y7_N12
\processador|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~0_combout\ = ( \processador|UC_ULA|ULActrl[1]~0_combout\ & ( (\processador|UC_ULA|ULActrl[2]~2_combout\ & \processador|UC_ULA|ULActrl[0]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datac => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datae => \processador|UC_ULA|ALT_INV_ULActrl[1]~0_combout\,
	combout => \processador|ULA|saida[0]~0_combout\);

-- Location: FF_X12_Y7_N25
\processador|bancoRegistrador|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1146_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~325_q\);

-- Location: FF_X12_Y7_N46
\processador|bancoRegistrador|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \processador|ROM_mips|memROM~11_combout\,
	sload => VCC,
	ena => \processador|bancoRegistrador|registrador~1145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|bancoRegistrador|registrador~69_q\);

-- Location: LABCELL_X12_Y7_N45
\processador|bancoRegistrador|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1162_combout\ = ( \processador|ROM_mips|memROM~1_combout\ & ( (\processador|ROM_mips|memROM~13_combout\ & \processador|ROM_mips|memROM~14_combout\) ) ) # ( !\processador|ROM_mips|memROM~1_combout\ & ( 
-- (!\processador|ROM_mips|memROM~13_combout\ & (!\processador|ROM_mips|memROM~14_combout\ & \processador|bancoRegistrador|registrador~69_q\)) # (\processador|ROM_mips|memROM~13_combout\ & (\processador|ROM_mips|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~13_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~69_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	combout => \processador|bancoRegistrador|registrador~1162_combout\);

-- Location: LABCELL_X12_Y7_N57
\processador|bancoRegistrador|registrador~1141\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1141_combout\ = ( \processador|ROM_mips|memROM~14_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~325_q\ & 
-- !\processador|bancoRegistrador|registrador~1162_combout\)) ) ) # ( !\processador|ROM_mips|memROM~14_combout\ & ( \processador|bancoRegistrador|registrador~1162_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~325_q\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1162_combout\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~14_combout\,
	combout => \processador|bancoRegistrador|registrador~1141_combout\);

-- Location: LABCELL_X12_Y7_N24
\processador|bancoRegistrador|registrador~1140\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|registrador~1140_combout\ = ( !\processador|ROM_mips|memROM~16_combout\ & ( (!\processador|ROM_mips|memROM~1_combout\ & (\processador|bancoRegistrador|registrador~69_q\)) # (\processador|ROM_mips|memROM~1_combout\ & 
-- ((\processador|bancoRegistrador|registrador~325_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|bancoRegistrador|ALT_INV_registrador~69_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~1_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~325_q\,
	dataf => \processador|ROM_mips|ALT_INV_memROM~16_combout\,
	combout => \processador|bancoRegistrador|registrador~1140_combout\);

-- Location: LABCELL_X12_Y7_N39
\processador|bancoRegistrador|saidaA[31]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|bancoRegistrador|saidaA[31]~15_combout\ = ( \processador|bancoRegistrador|registrador~1140_combout\ & ( (!\processador|PC|DOUT\(7) & ((\processador|ROM_mips|memROM~0_combout\) # (\processador|ROM_mips|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(7),
	datac => \processador|ROM_mips|ALT_INV_memROM~15_combout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1140_combout\,
	combout => \processador|bancoRegistrador|saidaA[31]~15_combout\);

-- Location: MLABCELL_X13_Y8_N33
\processador|ULA|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add2~1_sumout\ = SUM(( ((!\processador|bancoRegistrador|registrador~1141_combout\) # ((\processador|ROM_mips|memROM~12_combout\ & \processador|ROM_mips|memROM~17_combout\))) # (\processador|bancoRegistrador|Equal1~0_combout\) ) + ( 
-- \processador|bancoRegistrador|saidaA[31]~15_combout\ ) + ( \processador|ULA|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datab => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1141_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[31]~15_combout\,
	cin => \processador|ULA|Add2~126\,
	sumout => \processador|ULA|Add2~1_sumout\);

-- Location: LABCELL_X14_Y8_N0
\processador|ULA|saida[20]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[20]~36_combout\ = ( \processador|ULA|saida[31]~27_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[20]~4_combout\ & \processador|bancoRegistrador|registrador~1086_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1086_combout\)) # (\processador|bancoRegistrador|saidaA[20]~4_combout\))) ) ) # ( !\processador|ULA|saida[31]~27_combout\ & 
-- ( (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1086_combout\)) # (\processador|bancoRegistrador|saidaA[20]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000111110000001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_saidaA[20]~4_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1086_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[20]~36_combout\);

-- Location: LABCELL_X14_Y8_N21
\processador|ULA|saida[20]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[20]~37_combout\ = ( \processador|ULA|Add0~77_sumout\ & ( \processador|ULA|Add2~85_sumout\ & ( ((\processador|ULA|saida[20]~36_combout\) # (\processador|ULA|saida[1]~3_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) ) # ( 
-- !\processador|ULA|Add0~77_sumout\ & ( \processador|ULA|Add2~85_sumout\ & ( (\processador|ULA|saida[20]~36_combout\) # (\processador|ULA|saida[1]~3_combout\) ) ) ) # ( \processador|ULA|Add0~77_sumout\ & ( !\processador|ULA|Add2~85_sumout\ & ( 
-- (\processador|ULA|saida[20]~36_combout\) # (\processador|ULA|saida[2]~10_combout\) ) ) ) # ( !\processador|ULA|Add0~77_sumout\ & ( !\processador|ULA|Add2~85_sumout\ & ( \processador|ULA|saida[20]~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101011111111100001111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datad => \processador|ULA|ALT_INV_saida[20]~36_combout\,
	datae => \processador|ULA|ALT_INV_Add0~77_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~85_sumout\,
	combout => \processador|ULA|saida[20]~37_combout\);

-- Location: LABCELL_X14_Y8_N42
\processador|ULA|saida[21]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[21]~38_combout\ = ( \processador|ULA|saida[31]~27_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[21]~5_combout\ & \processador|bancoRegistrador|registrador~1091_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1091_combout\)) # (\processador|bancoRegistrador|saidaA[21]~5_combout\))) ) ) # ( !\processador|ULA|saida[31]~27_combout\ & 
-- ( (\processador|ULA|saida[2]~11_combout\ & (((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1091_combout\)) # (\processador|bancoRegistrador|saidaA[21]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100000011000111110000001100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_saidaA[21]~5_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1091_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[21]~38_combout\);

-- Location: LABCELL_X14_Y8_N51
\processador|ULA|saida[21]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[21]~39_combout\ = ( \processador|ULA|Add0~81_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~89_sumout\)) # (\processador|ULA|saida[21]~38_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~81_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~89_sumout\)) # (\processador|ULA|saida[21]~38_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add2~89_sumout\,
	datad => \processador|ULA|ALT_INV_saida[21]~38_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~81_sumout\,
	combout => \processador|ULA|saida[21]~39_combout\);

-- Location: MLABCELL_X13_Y10_N33
\processador|ULA|saida[26]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[26]~48_combout\ = ( \processador|bancoRegistrador|saidaA[26]~10_combout\ & ( ((\processador|bancoRegistrador|registrador~1116_combout\ & \processador|ULA|saida[31]~27_combout\)) # (\processador|ULA|saida[2]~11_combout\) ) ) # ( 
-- !\processador|bancoRegistrador|saidaA[26]~10_combout\ & ( (\processador|ULA|saida[2]~11_combout\ & (\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1116_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1116_combout\,
	datad => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[26]~10_combout\,
	combout => \processador|ULA|saida[26]~48_combout\);

-- Location: MLABCELL_X13_Y10_N18
\processador|ULA|saida[26]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[26]~49_combout\ = ( \processador|ULA|Add0~101_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~109_sumout\)) # (\processador|ULA|saida[26]~48_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~101_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~109_sumout\)) # (\processador|ULA|saida[26]~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_saida[26]~48_combout\,
	datad => \processador|ULA|ALT_INV_Add2~109_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~101_sumout\,
	combout => \processador|ULA|saida[26]~49_combout\);

-- Location: LABCELL_X14_Y10_N0
\processador|selMUX_AND_BEQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~4_combout\ = ( !\processador|ULA|saida[21]~39_combout\ & ( !\processador|ULA|saida[26]~49_combout\ & ( (!\processador|ULA|saida[0]~1_combout\ & (!\processador|ULA|saida[20]~37_combout\ & ((!\processador|ULA|saida[0]~0_combout\) 
-- # (!\processador|ULA|Add2~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[0]~1_combout\,
	datab => \processador|ULA|ALT_INV_saida[0]~0_combout\,
	datac => \processador|ULA|ALT_INV_Add2~1_sumout\,
	datad => \processador|ULA|ALT_INV_saida[20]~37_combout\,
	datae => \processador|ULA|ALT_INV_saida[21]~39_combout\,
	dataf => \processador|ULA|ALT_INV_saida[26]~49_combout\,
	combout => \processador|selMUX_AND_BEQ~4_combout\);

-- Location: MLABCELL_X13_Y10_N54
\processador|ULA|saida[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[4]~14_combout\ = ( \processador|ULA|Add2~21_sumout\ & ( ((\processador|ULA|Add0~13_sumout\ & \processador|ULA|saida[2]~10_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( !\processador|ULA|Add2~21_sumout\ & ( 
-- (\processador|ULA|Add0~13_sumout\ & \processador|ULA|saida[2]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add0~13_sumout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~21_sumout\,
	combout => \processador|ULA|saida[4]~14_combout\);

-- Location: MLABCELL_X13_Y10_N3
\processador|ULA|saida[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[6]~17_combout\ = ( \processador|ULA|Add2~29_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~21_sumout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( !\processador|ULA|Add2~29_sumout\ & ( 
-- (\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datad => \processador|ULA|ALT_INV_Add0~21_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~29_sumout\,
	combout => \processador|ULA|saida[6]~17_combout\);

-- Location: MLABCELL_X13_Y10_N36
\processador|selMUX_AND_BEQ~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~8_combout\ = ( !\processador|ULA|saida[6]~17_combout\ & ( \processador|ULA|Add2~65_sumout\ & ( (!\processador|ULA|saida[4]~14_combout\ & (!\processador|ULA|saida[1]~3_combout\ & ((!\processador|ULA|Add0~57_sumout\) # 
-- (!\processador|ULA|saida[2]~10_combout\)))) ) ) ) # ( !\processador|ULA|saida[6]~17_combout\ & ( !\processador|ULA|Add2~65_sumout\ & ( (!\processador|ULA|saida[4]~14_combout\ & ((!\processador|ULA|Add0~57_sumout\) # 
-- (!\processador|ULA|saida[2]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000000000000000000010001000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[4]~14_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add0~57_sumout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datae => \processador|ULA|ALT_INV_saida[6]~17_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~65_sumout\,
	combout => \processador|selMUX_AND_BEQ~8_combout\);

-- Location: MLABCELL_X13_Y10_N30
\processador|ULA|saida[23]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[23]~42_combout\ = ( \processador|bancoRegistrador|registrador~1101_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|ULA|saida[31]~27_combout\ & \processador|bancoRegistrador|saidaA[23]~7_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[23]~7_combout\)) # (\processador|MUX1|saida_MUX[31]~4_combout\))) ) ) # ( !\processador|bancoRegistrador|registrador~1101_combout\ & ( (\processador|ULA|saida[2]~11_combout\ 
-- & \processador|bancoRegistrador|saidaA[23]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001010111110001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[23]~7_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1101_combout\,
	combout => \processador|ULA|saida[23]~42_combout\);

-- Location: MLABCELL_X13_Y10_N42
\processador|ULA|saida[23]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[23]~43_combout\ = ( \processador|ULA|Add0~89_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~97_sumout\)) # (\processador|ULA|saida[2]~10_combout\)) # (\processador|ULA|saida[23]~42_combout\) ) ) # ( 
-- !\processador|ULA|Add0~89_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~97_sumout\)) # (\processador|ULA|saida[23]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[23]~42_combout\,
	datac => \processador|ULA|ALT_INV_Add2~97_sumout\,
	datad => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~89_sumout\,
	combout => \processador|ULA|saida[23]~43_combout\);

-- Location: MLABCELL_X13_Y8_N45
\processador|ULA|saida[22]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[22]~40_combout\ = ( \processador|bancoRegistrador|saidaA[22]~6_combout\ & ( ((\processador|ULA|saida[31]~27_combout\ & \processador|bancoRegistrador|registrador~1096_combout\)) # (\processador|ULA|saida[2]~11_combout\) ) ) # ( 
-- !\processador|bancoRegistrador|saidaA[22]~6_combout\ & ( (\processador|MUX1|saida_MUX[31]~4_combout\ & (\processador|ULA|saida[2]~11_combout\ & \processador|bancoRegistrador|registrador~1096_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datac => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1096_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[22]~6_combout\,
	combout => \processador|ULA|saida[22]~40_combout\);

-- Location: MLABCELL_X13_Y8_N36
\processador|ULA|saida[22]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[22]~41_combout\ = ( \processador|ULA|Add0~85_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~93_sumout\)) # (\processador|ULA|saida[22]~40_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~85_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~93_sumout\)) # (\processador|ULA|saida[22]~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add2~93_sumout\,
	datad => \processador|ULA|ALT_INV_saida[22]~40_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~85_sumout\,
	combout => \processador|ULA|saida[22]~41_combout\);

-- Location: MLABCELL_X13_Y10_N6
\processador|ULA|saida[27]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[27]~50_combout\ = ( \processador|bancoRegistrador|saidaA[27]~11_combout\ & ( ((\processador|bancoRegistrador|registrador~1121_combout\ & \processador|ULA|saida[31]~27_combout\)) # (\processador|ULA|saida[2]~11_combout\) ) ) # ( 
-- !\processador|bancoRegistrador|saidaA[27]~11_combout\ & ( (\processador|ULA|saida[2]~11_combout\ & (\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1121_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1121_combout\,
	datad => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[27]~11_combout\,
	combout => \processador|ULA|saida[27]~50_combout\);

-- Location: MLABCELL_X13_Y10_N15
\processador|ULA|saida[27]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[27]~51_combout\ = ( \processador|ULA|Add0~105_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~113_sumout\)) # (\processador|ULA|saida[27]~50_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~105_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~113_sumout\)) # (\processador|ULA|saida[27]~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_Add2~113_sumout\,
	datad => \processador|ULA|ALT_INV_saida[27]~50_combout\,
	dataf => \processador|ULA|ALT_INV_Add0~105_sumout\,
	combout => \processador|ULA|saida[27]~51_combout\);

-- Location: MLABCELL_X13_Y7_N36
\processador|ULA|saida[28]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[28]~52_combout\ = ( \processador|ULA|saida[2]~11_combout\ & ( \processador|ULA|saida[31]~27_combout\ & ( ((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1126_combout\)) # 
-- (\processador|bancoRegistrador|saidaA[28]~12_combout\) ) ) ) # ( !\processador|ULA|saida[2]~11_combout\ & ( \processador|ULA|saida[31]~27_combout\ & ( (\processador|bancoRegistrador|registrador~1126_combout\ & 
-- \processador|bancoRegistrador|saidaA[28]~12_combout\) ) ) ) # ( \processador|ULA|saida[2]~11_combout\ & ( !\processador|ULA|saida[31]~27_combout\ & ( ((\processador|MUX1|saida_MUX[31]~4_combout\ & \processador|bancoRegistrador|registrador~1126_combout\)) 
-- # (\processador|bancoRegistrador|saidaA[28]~12_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000111111111100000000000011110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|bancoRegistrador|ALT_INV_registrador~1126_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[28]~12_combout\,
	datae => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	combout => \processador|ULA|saida[28]~52_combout\);

-- Location: LABCELL_X14_Y8_N6
\processador|ULA|saida[28]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[28]~53_combout\ = ( \processador|ULA|Add2~117_sumout\ & ( (((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~109_sumout\)) # (\processador|ULA|saida[28]~52_combout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( 
-- !\processador|ULA|Add2~117_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~109_sumout\)) # (\processador|ULA|saida[28]~52_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datac => \processador|ULA|ALT_INV_Add0~109_sumout\,
	datad => \processador|ULA|ALT_INV_saida[28]~52_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~117_sumout\,
	combout => \processador|ULA|saida[28]~53_combout\);

-- Location: MLABCELL_X13_Y10_N24
\processador|ULA|saida[31]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[31]~58_combout\ = ( \processador|bancoRegistrador|registrador~1141_combout\ & ( (!\processador|ULA|saida[2]~11_combout\ & (((\processador|ULA|saida[31]~27_combout\ & \processador|bancoRegistrador|saidaA[31]~15_combout\)))) # 
-- (\processador|ULA|saida[2]~11_combout\ & (((\processador|bancoRegistrador|saidaA[31]~15_combout\)) # (\processador|MUX1|saida_MUX[31]~4_combout\))) ) ) # ( !\processador|bancoRegistrador|registrador~1141_combout\ & ( (\processador|ULA|saida[2]~11_combout\ 
-- & \processador|bancoRegistrador|saidaA[31]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001010111110001000101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~11_combout\,
	datab => \processador|MUX1|ALT_INV_saida_MUX[31]~4_combout\,
	datac => \processador|ULA|ALT_INV_saida[31]~27_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_saidaA[31]~15_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_registrador~1141_combout\,
	combout => \processador|ULA|saida[31]~58_combout\);

-- Location: LABCELL_X12_Y8_N45
\processador|ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|Add0~121_sumout\ = SUM(( (!\processador|bancoRegistrador|Equal1~0_combout\ & (\processador|bancoRegistrador|registrador~1141_combout\ & ((!\processador|ROM_mips|memROM~17_combout\) # (!\processador|ROM_mips|memROM~12_combout\)))) ) + ( 
-- \processador|bancoRegistrador|saidaA[31]~15_combout\ ) + ( \processador|ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~17_combout\,
	datab => \processador|bancoRegistrador|ALT_INV_Equal1~0_combout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~12_combout\,
	datad => \processador|bancoRegistrador|ALT_INV_registrador~1141_combout\,
	dataf => \processador|bancoRegistrador|ALT_INV_saidaA[31]~15_combout\,
	cin => \processador|ULA|Add0~118\,
	sumout => \processador|ULA|Add0~121_sumout\);

-- Location: MLABCELL_X13_Y10_N0
\processador|ULA|saida[31]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[31]~59_combout\ = ( \processador|ULA|Add0~121_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~1_sumout\)) # (\processador|ULA|saida[31]~58_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~121_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~1_sumout\)) # (\processador|ULA|saida[31]~58_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_saida[31]~58_combout\,
	datad => \processador|ULA|ALT_INV_Add2~1_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~121_sumout\,
	combout => \processador|ULA|saida[31]~59_combout\);

-- Location: LABCELL_X14_Y10_N12
\processador|selMUX_AND_BEQ~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~10_combout\ = ( !\processador|ULA|saida[28]~53_combout\ & ( !\processador|ULA|saida[31]~59_combout\ & ( (\processador|selMUX_AND_BEQ~8_combout\ & (!\processador|ULA|saida[23]~43_combout\ & 
-- (!\processador|ULA|saida[22]~41_combout\ & !\processador|ULA|saida[27]~51_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ALT_INV_selMUX_AND_BEQ~8_combout\,
	datab => \processador|ULA|ALT_INV_saida[23]~43_combout\,
	datac => \processador|ULA|ALT_INV_saida[22]~41_combout\,
	datad => \processador|ULA|ALT_INV_saida[27]~51_combout\,
	datae => \processador|ULA|ALT_INV_saida[28]~53_combout\,
	dataf => \processador|ULA|ALT_INV_saida[31]~59_combout\,
	combout => \processador|selMUX_AND_BEQ~10_combout\);

-- Location: LABCELL_X14_Y10_N18
\processador|selMUX_AND_BEQ~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|selMUX_AND_BEQ~5_combout\ = ( \processador|selMUX_AND_BEQ~4_combout\ & ( \processador|selMUX_AND_BEQ~10_combout\ & ( (((!\processador|selMUX_AND_BEQ~9_combout\) # (!\processador|selMUX_AND_BEQ~3_combout\)) # 
-- (\processador|ULA|saida[30]~57_combout\)) # (\processador|ULA|saida[29]~55_combout\) ) ) ) # ( !\processador|selMUX_AND_BEQ~4_combout\ & ( \processador|selMUX_AND_BEQ~10_combout\ ) ) # ( \processador|selMUX_AND_BEQ~4_combout\ & ( 
-- !\processador|selMUX_AND_BEQ~10_combout\ ) ) # ( !\processador|selMUX_AND_BEQ~4_combout\ & ( !\processador|selMUX_AND_BEQ~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[29]~55_combout\,
	datab => \processador|ULA|ALT_INV_saida[30]~57_combout\,
	datac => \processador|ALT_INV_selMUX_AND_BEQ~9_combout\,
	datad => \processador|ALT_INV_selMUX_AND_BEQ~3_combout\,
	datae => \processador|ALT_INV_selMUX_AND_BEQ~4_combout\,
	dataf => \processador|ALT_INV_selMUX_AND_BEQ~10_combout\,
	combout => \processador|selMUX_AND_BEQ~5_combout\);

-- Location: FF_X14_Y11_N5
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~1_sumout\,
	asdata => \processador|somadorPC|Add0~5_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: MLABCELL_X13_Y12_N48
\processador|ROM_mips|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ROM_mips|memROM~3_combout\ = ( \processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(5)) ) ) # ( !\processador|PC|DOUT\(4) & ( (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(5),
	dataf => \processador|PC|ALT_INV_DOUT\(4),
	combout => \processador|ROM_mips|memROM~3_combout\);

-- Location: FF_X14_Y11_N4
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~1_sumout\,
	asdata => \processador|somadorPC|Add0~5_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y11_N18
\processador|somadorPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|somadorPC|Add0~22\ ))
-- \processador|somadorPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|somadorPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|somadorPC|Add0~22\,
	sumout => \processador|somadorPC|Add0~25_sumout\,
	cout => \processador|somadorPC|Add0~26\);

-- Location: LABCELL_X14_Y11_N18
\processador|somador_somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~21_sumout\ = SUM(( \processador|somadorPC|Add0~25_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~18\ ))
-- \processador|somador_somador|Add0~22\ = CARRY(( \processador|somadorPC|Add0~25_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~25_sumout\,
	cin => \processador|somador_somador|Add0~18\,
	sumout => \processador|somador_somador|Add0~21_sumout\,
	cout => \processador|somador_somador|Add0~22\);

-- Location: FF_X14_Y11_N19
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~21_sumout\,
	asdata => \processador|somadorPC|Add0~25_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X10_Y11_N21
\processador|somadorPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(9) ) + ( GND ) + ( \processador|somadorPC|Add0~26\ ))
-- \processador|somadorPC|Add0~30\ = CARRY(( \processador|PC|DOUT\(9) ) + ( GND ) + ( \processador|somadorPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(9),
	cin => \processador|somadorPC|Add0~26\,
	sumout => \processador|somadorPC|Add0~29_sumout\,
	cout => \processador|somadorPC|Add0~30\);

-- Location: LABCELL_X14_Y11_N21
\processador|somador_somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~25_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~29_sumout\ ) + ( \processador|somador_somador|Add0~22\ ))
-- \processador|somador_somador|Add0~26\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~29_sumout\ ) + ( \processador|somador_somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~29_sumout\,
	cin => \processador|somador_somador|Add0~22\,
	sumout => \processador|somador_somador|Add0~25_sumout\,
	cout => \processador|somador_somador|Add0~26\);

-- Location: FF_X14_Y11_N22
\processador|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~25_sumout\,
	asdata => \processador|somadorPC|Add0~29_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(9));

-- Location: LABCELL_X10_Y11_N24
\processador|somadorPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(10) ) + ( GND ) + ( \processador|somadorPC|Add0~30\ ))
-- \processador|somadorPC|Add0~34\ = CARRY(( \processador|PC|DOUT\(10) ) + ( GND ) + ( \processador|somadorPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(10),
	cin => \processador|somadorPC|Add0~30\,
	sumout => \processador|somadorPC|Add0~33_sumout\,
	cout => \processador|somadorPC|Add0~34\);

-- Location: LABCELL_X14_Y11_N24
\processador|somador_somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~29_sumout\ = SUM(( \processador|somadorPC|Add0~33_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~26\ ))
-- \processador|somador_somador|Add0~30\ = CARRY(( \processador|somadorPC|Add0~33_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~33_sumout\,
	cin => \processador|somador_somador|Add0~26\,
	sumout => \processador|somador_somador|Add0~29_sumout\,
	cout => \processador|somador_somador|Add0~30\);

-- Location: FF_X14_Y11_N25
\processador|PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~29_sumout\,
	asdata => \processador|somadorPC|Add0~33_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(10));

-- Location: FF_X14_Y11_N29
\processador|PC|DOUT[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~33_sumout\,
	asdata => \processador|somadorPC|Add0~37_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[11]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y11_N27
\processador|somadorPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~37_sumout\ = SUM(( \processador|PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~34\ ))
-- \processador|somadorPC|Add0~38\ = CARRY(( \processador|PC|DOUT[11]~DUPLICATE_q\ ) + ( GND ) + ( \processador|somadorPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT[11]~DUPLICATE_q\,
	cin => \processador|somadorPC|Add0~34\,
	sumout => \processador|somadorPC|Add0~37_sumout\,
	cout => \processador|somadorPC|Add0~38\);

-- Location: LABCELL_X14_Y11_N27
\processador|somador_somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~33_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~37_sumout\ ) + ( \processador|somador_somador|Add0~30\ ))
-- \processador|somador_somador|Add0~34\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~37_sumout\ ) + ( \processador|somador_somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|somadorPC|ALT_INV_Add0~37_sumout\,
	datad => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|somador_somador|Add0~30\,
	sumout => \processador|somador_somador|Add0~33_sumout\,
	cout => \processador|somador_somador|Add0~34\);

-- Location: FF_X14_Y11_N28
\processador|PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~33_sumout\,
	asdata => \processador|somadorPC|Add0~37_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(11));

-- Location: LABCELL_X10_Y11_N30
\processador|somadorPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~41_sumout\ = SUM(( \processador|PC|DOUT\(12) ) + ( GND ) + ( \processador|somadorPC|Add0~38\ ))
-- \processador|somadorPC|Add0~42\ = CARRY(( \processador|PC|DOUT\(12) ) + ( GND ) + ( \processador|somadorPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(12),
	cin => \processador|somadorPC|Add0~38\,
	sumout => \processador|somadorPC|Add0~41_sumout\,
	cout => \processador|somadorPC|Add0~42\);

-- Location: LABCELL_X14_Y11_N30
\processador|somador_somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~37_sumout\ = SUM(( \processador|somadorPC|Add0~41_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~34\ ))
-- \processador|somador_somador|Add0~38\ = CARRY(( \processador|somadorPC|Add0~41_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~41_sumout\,
	cin => \processador|somador_somador|Add0~34\,
	sumout => \processador|somador_somador|Add0~37_sumout\,
	cout => \processador|somador_somador|Add0~38\);

-- Location: FF_X14_Y11_N31
\processador|PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~37_sumout\,
	asdata => \processador|somadorPC|Add0~41_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(12));

-- Location: LABCELL_X10_Y11_N33
\processador|somadorPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~45_sumout\ = SUM(( \processador|PC|DOUT\(13) ) + ( GND ) + ( \processador|somadorPC|Add0~42\ ))
-- \processador|somadorPC|Add0~46\ = CARRY(( \processador|PC|DOUT\(13) ) + ( GND ) + ( \processador|somadorPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(13),
	cin => \processador|somadorPC|Add0~42\,
	sumout => \processador|somadorPC|Add0~45_sumout\,
	cout => \processador|somadorPC|Add0~46\);

-- Location: LABCELL_X14_Y11_N33
\processador|somador_somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~41_sumout\ = SUM(( \processador|somadorPC|Add0~45_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~38\ ))
-- \processador|somador_somador|Add0~42\ = CARRY(( \processador|somadorPC|Add0~45_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~45_sumout\,
	cin => \processador|somador_somador|Add0~38\,
	sumout => \processador|somador_somador|Add0~41_sumout\,
	cout => \processador|somador_somador|Add0~42\);

-- Location: FF_X14_Y11_N34
\processador|PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~41_sumout\,
	asdata => \processador|somadorPC|Add0~45_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(13));

-- Location: LABCELL_X10_Y11_N36
\processador|somadorPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~49_sumout\ = SUM(( \processador|PC|DOUT\(14) ) + ( GND ) + ( \processador|somadorPC|Add0~46\ ))
-- \processador|somadorPC|Add0~50\ = CARRY(( \processador|PC|DOUT\(14) ) + ( GND ) + ( \processador|somadorPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(14),
	cin => \processador|somadorPC|Add0~46\,
	sumout => \processador|somadorPC|Add0~49_sumout\,
	cout => \processador|somadorPC|Add0~50\);

-- Location: LABCELL_X14_Y11_N36
\processador|somador_somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~45_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~49_sumout\ ) + ( \processador|somador_somador|Add0~42\ ))
-- \processador|somador_somador|Add0~46\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~49_sumout\ ) + ( \processador|somador_somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~49_sumout\,
	cin => \processador|somador_somador|Add0~42\,
	sumout => \processador|somador_somador|Add0~45_sumout\,
	cout => \processador|somador_somador|Add0~46\);

-- Location: FF_X14_Y11_N37
\processador|PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~45_sumout\,
	asdata => \processador|somadorPC|Add0~49_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(14));

-- Location: LABCELL_X10_Y11_N39
\processador|somadorPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~53_sumout\ = SUM(( \processador|PC|DOUT\(15) ) + ( GND ) + ( \processador|somadorPC|Add0~50\ ))
-- \processador|somadorPC|Add0~54\ = CARRY(( \processador|PC|DOUT\(15) ) + ( GND ) + ( \processador|somadorPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(15),
	cin => \processador|somadorPC|Add0~50\,
	sumout => \processador|somadorPC|Add0~53_sumout\,
	cout => \processador|somadorPC|Add0~54\);

-- Location: LABCELL_X14_Y11_N39
\processador|somador_somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~49_sumout\ = SUM(( \processador|somadorPC|Add0~53_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~46\ ))
-- \processador|somador_somador|Add0~50\ = CARRY(( \processador|somadorPC|Add0~53_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~53_sumout\,
	cin => \processador|somador_somador|Add0~46\,
	sumout => \processador|somador_somador|Add0~49_sumout\,
	cout => \processador|somador_somador|Add0~50\);

-- Location: FF_X14_Y11_N41
\processador|PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~49_sumout\,
	asdata => \processador|somadorPC|Add0~53_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(15));

-- Location: LABCELL_X10_Y11_N42
\processador|somadorPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~57_sumout\ = SUM(( \processador|PC|DOUT\(16) ) + ( GND ) + ( \processador|somadorPC|Add0~54\ ))
-- \processador|somadorPC|Add0~58\ = CARRY(( \processador|PC|DOUT\(16) ) + ( GND ) + ( \processador|somadorPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(16),
	cin => \processador|somadorPC|Add0~54\,
	sumout => \processador|somadorPC|Add0~57_sumout\,
	cout => \processador|somadorPC|Add0~58\);

-- Location: LABCELL_X14_Y11_N42
\processador|somador_somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~53_sumout\ = SUM(( \processador|somadorPC|Add0~57_sumout\ ) + ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~0_combout\) ) + ( \processador|somador_somador|Add0~50\ ))
-- \processador|somador_somador|Add0~54\ = CARRY(( \processador|somadorPC|Add0~57_sumout\ ) + ( (!\processador|PC|DOUT[7]~DUPLICATE_q\ & \processador|ROM_mips|memROM~0_combout\) ) + ( \processador|somador_somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \processador|ROM_mips|ALT_INV_memROM~0_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~57_sumout\,
	cin => \processador|somador_somador|Add0~50\,
	sumout => \processador|somador_somador|Add0~53_sumout\,
	cout => \processador|somador_somador|Add0~54\);

-- Location: FF_X14_Y11_N43
\processador|PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~53_sumout\,
	asdata => \processador|somadorPC|Add0~57_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(16));

-- Location: LABCELL_X10_Y11_N45
\processador|somadorPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~61_sumout\ = SUM(( \processador|PC|DOUT\(17) ) + ( GND ) + ( \processador|somadorPC|Add0~58\ ))
-- \processador|somadorPC|Add0~62\ = CARRY(( \processador|PC|DOUT\(17) ) + ( GND ) + ( \processador|somadorPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(17),
	cin => \processador|somadorPC|Add0~58\,
	sumout => \processador|somadorPC|Add0~61_sumout\,
	cout => \processador|somadorPC|Add0~62\);

-- Location: LABCELL_X14_Y11_N45
\processador|somador_somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~57_sumout\ = SUM(( \processador|somadorPC|Add0~61_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~54\ ))
-- \processador|somador_somador|Add0~58\ = CARRY(( \processador|somadorPC|Add0~61_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~61_sumout\,
	cin => \processador|somador_somador|Add0~54\,
	sumout => \processador|somador_somador|Add0~57_sumout\,
	cout => \processador|somador_somador|Add0~58\);

-- Location: FF_X14_Y11_N46
\processador|PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~57_sumout\,
	asdata => \processador|somadorPC|Add0~61_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(17));

-- Location: LABCELL_X10_Y11_N48
\processador|somadorPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~65_sumout\ = SUM(( \processador|PC|DOUT\(18) ) + ( GND ) + ( \processador|somadorPC|Add0~62\ ))
-- \processador|somadorPC|Add0~66\ = CARRY(( \processador|PC|DOUT\(18) ) + ( GND ) + ( \processador|somadorPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(18),
	cin => \processador|somadorPC|Add0~62\,
	sumout => \processador|somadorPC|Add0~65_sumout\,
	cout => \processador|somadorPC|Add0~66\);

-- Location: LABCELL_X14_Y11_N48
\processador|somador_somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~61_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~65_sumout\ ) + ( \processador|somador_somador|Add0~58\ ))
-- \processador|somador_somador|Add0~62\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~65_sumout\ ) + ( \processador|somador_somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~65_sumout\,
	cin => \processador|somador_somador|Add0~58\,
	sumout => \processador|somador_somador|Add0~61_sumout\,
	cout => \processador|somador_somador|Add0~62\);

-- Location: FF_X14_Y11_N49
\processador|PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~61_sumout\,
	asdata => \processador|somadorPC|Add0~65_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(18));

-- Location: LABCELL_X10_Y11_N51
\processador|somadorPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~69_sumout\ = SUM(( \processador|PC|DOUT\(19) ) + ( GND ) + ( \processador|somadorPC|Add0~66\ ))
-- \processador|somadorPC|Add0~70\ = CARRY(( \processador|PC|DOUT\(19) ) + ( GND ) + ( \processador|somadorPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(19),
	cin => \processador|somadorPC|Add0~66\,
	sumout => \processador|somadorPC|Add0~69_sumout\,
	cout => \processador|somadorPC|Add0~70\);

-- Location: LABCELL_X14_Y11_N51
\processador|somador_somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~65_sumout\ = SUM(( \processador|somadorPC|Add0~69_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~62\ ))
-- \processador|somador_somador|Add0~66\ = CARRY(( \processador|somadorPC|Add0~69_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~69_sumout\,
	cin => \processador|somador_somador|Add0~62\,
	sumout => \processador|somador_somador|Add0~65_sumout\,
	cout => \processador|somador_somador|Add0~66\);

-- Location: FF_X14_Y11_N52
\processador|PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~65_sumout\,
	asdata => \processador|somadorPC|Add0~69_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(19));

-- Location: LABCELL_X10_Y11_N54
\processador|somadorPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~73_sumout\ = SUM(( \processador|PC|DOUT\(20) ) + ( GND ) + ( \processador|somadorPC|Add0~70\ ))
-- \processador|somadorPC|Add0~74\ = CARRY(( \processador|PC|DOUT\(20) ) + ( GND ) + ( \processador|somadorPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(20),
	cin => \processador|somadorPC|Add0~70\,
	sumout => \processador|somadorPC|Add0~73_sumout\,
	cout => \processador|somadorPC|Add0~74\);

-- Location: LABCELL_X14_Y11_N54
\processador|somador_somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~69_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~73_sumout\ ) + ( \processador|somador_somador|Add0~66\ ))
-- \processador|somador_somador|Add0~70\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~73_sumout\ ) + ( \processador|somador_somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|somadorPC|ALT_INV_Add0~73_sumout\,
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	cin => \processador|somador_somador|Add0~66\,
	sumout => \processador|somador_somador|Add0~69_sumout\,
	cout => \processador|somador_somador|Add0~70\);

-- Location: FF_X14_Y11_N55
\processador|PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~69_sumout\,
	asdata => \processador|somadorPC|Add0~73_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(20));

-- Location: LABCELL_X10_Y11_N57
\processador|somadorPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~77_sumout\ = SUM(( \processador|PC|DOUT\(21) ) + ( GND ) + ( \processador|somadorPC|Add0~74\ ))
-- \processador|somadorPC|Add0~78\ = CARRY(( \processador|PC|DOUT\(21) ) + ( GND ) + ( \processador|somadorPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(21),
	cin => \processador|somadorPC|Add0~74\,
	sumout => \processador|somadorPC|Add0~77_sumout\,
	cout => \processador|somadorPC|Add0~78\);

-- Location: LABCELL_X14_Y11_N57
\processador|somador_somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~73_sumout\ = SUM(( \processador|somadorPC|Add0~77_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~70\ ))
-- \processador|somador_somador|Add0~74\ = CARRY(( \processador|somadorPC|Add0~77_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~77_sumout\,
	cin => \processador|somador_somador|Add0~70\,
	sumout => \processador|somador_somador|Add0~73_sumout\,
	cout => \processador|somador_somador|Add0~74\);

-- Location: FF_X14_Y11_N58
\processador|PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~73_sumout\,
	asdata => \processador|somadorPC|Add0~77_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(21));

-- Location: LABCELL_X10_Y10_N0
\processador|somadorPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~81_sumout\ = SUM(( \processador|PC|DOUT\(22) ) + ( GND ) + ( \processador|somadorPC|Add0~78\ ))
-- \processador|somadorPC|Add0~82\ = CARRY(( \processador|PC|DOUT\(22) ) + ( GND ) + ( \processador|somadorPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(22),
	cin => \processador|somadorPC|Add0~78\,
	sumout => \processador|somadorPC|Add0~81_sumout\,
	cout => \processador|somadorPC|Add0~82\);

-- Location: LABCELL_X14_Y10_N30
\processador|somador_somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~77_sumout\ = SUM(( \processador|somadorPC|Add0~81_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~74\ ))
-- \processador|somador_somador|Add0~78\ = CARRY(( \processador|somadorPC|Add0~81_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~81_sumout\,
	cin => \processador|somador_somador|Add0~74\,
	sumout => \processador|somador_somador|Add0~77_sumout\,
	cout => \processador|somador_somador|Add0~78\);

-- Location: FF_X14_Y10_N31
\processador|PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~77_sumout\,
	asdata => \processador|somadorPC|Add0~81_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(22));

-- Location: LABCELL_X10_Y10_N3
\processador|somadorPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~85_sumout\ = SUM(( \processador|PC|DOUT\(23) ) + ( GND ) + ( \processador|somadorPC|Add0~82\ ))
-- \processador|somadorPC|Add0~86\ = CARRY(( \processador|PC|DOUT\(23) ) + ( GND ) + ( \processador|somadorPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(23),
	cin => \processador|somadorPC|Add0~82\,
	sumout => \processador|somadorPC|Add0~85_sumout\,
	cout => \processador|somadorPC|Add0~86\);

-- Location: LABCELL_X14_Y10_N33
\processador|somador_somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~81_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~85_sumout\ ) + ( \processador|somador_somador|Add0~78\ ))
-- \processador|somador_somador|Add0~82\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~85_sumout\ ) + ( \processador|somador_somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~85_sumout\,
	cin => \processador|somador_somador|Add0~78\,
	sumout => \processador|somador_somador|Add0~81_sumout\,
	cout => \processador|somador_somador|Add0~82\);

-- Location: FF_X14_Y10_N34
\processador|PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~81_sumout\,
	asdata => \processador|somadorPC|Add0~85_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(23));

-- Location: LABCELL_X10_Y10_N6
\processador|somadorPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~89_sumout\ = SUM(( \processador|PC|DOUT\(24) ) + ( GND ) + ( \processador|somadorPC|Add0~86\ ))
-- \processador|somadorPC|Add0~90\ = CARRY(( \processador|PC|DOUT\(24) ) + ( GND ) + ( \processador|somadorPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(24),
	cin => \processador|somadorPC|Add0~86\,
	sumout => \processador|somadorPC|Add0~89_sumout\,
	cout => \processador|somadorPC|Add0~90\);

-- Location: LABCELL_X14_Y10_N36
\processador|somador_somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~85_sumout\ = SUM(( \processador|somadorPC|Add0~89_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~82\ ))
-- \processador|somador_somador|Add0~86\ = CARRY(( \processador|somadorPC|Add0~89_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~89_sumout\,
	cin => \processador|somador_somador|Add0~82\,
	sumout => \processador|somador_somador|Add0~85_sumout\,
	cout => \processador|somador_somador|Add0~86\);

-- Location: FF_X14_Y10_N37
\processador|PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~85_sumout\,
	asdata => \processador|somadorPC|Add0~89_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(24));

-- Location: LABCELL_X10_Y10_N9
\processador|somadorPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~93_sumout\ = SUM(( \processador|PC|DOUT\(25) ) + ( GND ) + ( \processador|somadorPC|Add0~90\ ))
-- \processador|somadorPC|Add0~94\ = CARRY(( \processador|PC|DOUT\(25) ) + ( GND ) + ( \processador|somadorPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(25),
	cin => \processador|somadorPC|Add0~90\,
	sumout => \processador|somadorPC|Add0~93_sumout\,
	cout => \processador|somadorPC|Add0~94\);

-- Location: LABCELL_X14_Y10_N39
\processador|somador_somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~89_sumout\ = SUM(( \processador|somadorPC|Add0~93_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~86\ ))
-- \processador|somador_somador|Add0~90\ = CARRY(( \processador|somadorPC|Add0~93_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~93_sumout\,
	cin => \processador|somador_somador|Add0~86\,
	sumout => \processador|somador_somador|Add0~89_sumout\,
	cout => \processador|somador_somador|Add0~90\);

-- Location: FF_X14_Y10_N41
\processador|PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~89_sumout\,
	asdata => \processador|somadorPC|Add0~93_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(25));

-- Location: LABCELL_X10_Y10_N12
\processador|somadorPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~97_sumout\ = SUM(( \processador|PC|DOUT\(26) ) + ( GND ) + ( \processador|somadorPC|Add0~94\ ))
-- \processador|somadorPC|Add0~98\ = CARRY(( \processador|PC|DOUT\(26) ) + ( GND ) + ( \processador|somadorPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(26),
	cin => \processador|somadorPC|Add0~94\,
	sumout => \processador|somadorPC|Add0~97_sumout\,
	cout => \processador|somadorPC|Add0~98\);

-- Location: LABCELL_X14_Y10_N42
\processador|somador_somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~93_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~97_sumout\ ) + ( \processador|somador_somador|Add0~90\ ))
-- \processador|somador_somador|Add0~94\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~97_sumout\ ) + ( \processador|somador_somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	dataf => \processador|somadorPC|ALT_INV_Add0~97_sumout\,
	cin => \processador|somador_somador|Add0~90\,
	sumout => \processador|somador_somador|Add0~93_sumout\,
	cout => \processador|somador_somador|Add0~94\);

-- Location: FF_X14_Y10_N43
\processador|PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~93_sumout\,
	asdata => \processador|somadorPC|Add0~97_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(26));

-- Location: LABCELL_X10_Y10_N15
\processador|somadorPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~101_sumout\ = SUM(( \processador|PC|DOUT\(27) ) + ( GND ) + ( \processador|somadorPC|Add0~98\ ))
-- \processador|somadorPC|Add0~102\ = CARRY(( \processador|PC|DOUT\(27) ) + ( GND ) + ( \processador|somadorPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(27),
	cin => \processador|somadorPC|Add0~98\,
	sumout => \processador|somadorPC|Add0~101_sumout\,
	cout => \processador|somadorPC|Add0~102\);

-- Location: LABCELL_X14_Y10_N45
\processador|somador_somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~97_sumout\ = SUM(( \processador|somadorPC|Add0~101_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~94\ ))
-- \processador|somador_somador|Add0~98\ = CARRY(( \processador|somadorPC|Add0~101_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~101_sumout\,
	cin => \processador|somador_somador|Add0~94\,
	sumout => \processador|somador_somador|Add0~97_sumout\,
	cout => \processador|somador_somador|Add0~98\);

-- Location: FF_X14_Y10_N46
\processador|PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~97_sumout\,
	asdata => \processador|somadorPC|Add0~101_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(27));

-- Location: LABCELL_X10_Y10_N18
\processador|somadorPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~105_sumout\ = SUM(( \processador|PC|DOUT\(28) ) + ( GND ) + ( \processador|somadorPC|Add0~102\ ))
-- \processador|somadorPC|Add0~106\ = CARRY(( \processador|PC|DOUT\(28) ) + ( GND ) + ( \processador|somadorPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(28),
	cin => \processador|somadorPC|Add0~102\,
	sumout => \processador|somadorPC|Add0~105_sumout\,
	cout => \processador|somadorPC|Add0~106\);

-- Location: LABCELL_X14_Y10_N48
\processador|somador_somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~101_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~105_sumout\ ) + ( \processador|somador_somador|Add0~98\ ))
-- \processador|somador_somador|Add0~102\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~105_sumout\ ) + ( \processador|somador_somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~105_sumout\,
	cin => \processador|somador_somador|Add0~98\,
	sumout => \processador|somador_somador|Add0~101_sumout\,
	cout => \processador|somador_somador|Add0~102\);

-- Location: FF_X14_Y10_N49
\processador|PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~101_sumout\,
	asdata => \processador|somadorPC|Add0~105_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(28));

-- Location: LABCELL_X10_Y10_N21
\processador|somadorPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~109_sumout\ = SUM(( \processador|PC|DOUT\(29) ) + ( GND ) + ( \processador|somadorPC|Add0~106\ ))
-- \processador|somadorPC|Add0~110\ = CARRY(( \processador|PC|DOUT\(29) ) + ( GND ) + ( \processador|somadorPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(29),
	cin => \processador|somadorPC|Add0~106\,
	sumout => \processador|somadorPC|Add0~109_sumout\,
	cout => \processador|somadorPC|Add0~110\);

-- Location: LABCELL_X14_Y10_N51
\processador|somador_somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~105_sumout\ = SUM(( \processador|somadorPC|Add0~109_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~102\ ))
-- \processador|somador_somador|Add0~106\ = CARRY(( \processador|somadorPC|Add0~109_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~109_sumout\,
	cin => \processador|somador_somador|Add0~102\,
	sumout => \processador|somador_somador|Add0~105_sumout\,
	cout => \processador|somador_somador|Add0~106\);

-- Location: FF_X14_Y10_N53
\processador|PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~105_sumout\,
	asdata => \processador|somadorPC|Add0~109_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(29));

-- Location: LABCELL_X10_Y10_N24
\processador|somadorPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~113_sumout\ = SUM(( \processador|PC|DOUT\(30) ) + ( GND ) + ( \processador|somadorPC|Add0~110\ ))
-- \processador|somadorPC|Add0~114\ = CARRY(( \processador|PC|DOUT\(30) ) + ( GND ) + ( \processador|somadorPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(30),
	cin => \processador|somadorPC|Add0~110\,
	sumout => \processador|somadorPC|Add0~113_sumout\,
	cout => \processador|somadorPC|Add0~114\);

-- Location: LABCELL_X14_Y10_N54
\processador|somador_somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~109_sumout\ = SUM(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~113_sumout\ ) + ( \processador|somador_somador|Add0~106\ ))
-- \processador|somador_somador|Add0~110\ = CARRY(( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somadorPC|Add0~113_sumout\ ) + ( \processador|somador_somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datac => \processador|somadorPC|ALT_INV_Add0~113_sumout\,
	cin => \processador|somador_somador|Add0~106\,
	sumout => \processador|somador_somador|Add0~109_sumout\,
	cout => \processador|somador_somador|Add0~110\);

-- Location: FF_X14_Y10_N55
\processador|PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~109_sumout\,
	asdata => \processador|somadorPC|Add0~113_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(30));

-- Location: LABCELL_X10_Y10_N27
\processador|somadorPC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somadorPC|Add0~117_sumout\ = SUM(( \processador|PC|DOUT\(31) ) + ( GND ) + ( \processador|somadorPC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(31),
	cin => \processador|somadorPC|Add0~114\,
	sumout => \processador|somadorPC|Add0~117_sumout\);

-- Location: LABCELL_X14_Y10_N57
\processador|somador_somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|somador_somador|Add0~113_sumout\ = SUM(( \processador|somadorPC|Add0~117_sumout\ ) + ( \processador|ROM_mips|memROM~11_combout\ ) + ( \processador|somador_somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ROM_mips|ALT_INV_memROM~11_combout\,
	datad => \processador|somadorPC|ALT_INV_Add0~117_sumout\,
	cin => \processador|somador_somador|Add0~110\,
	sumout => \processador|somador_somador|Add0~113_sumout\);

-- Location: FF_X14_Y10_N59
\processador|PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \processador|somador_somador|Add0~113_sumout\,
	asdata => \processador|somadorPC|Add0~117_sumout\,
	sload => \processador|selMUX_AND_BEQ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(31));

-- Location: MLABCELL_X13_Y7_N30
\processador|ULA|saida[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[0]~2_combout\ = ( \processador|ULA|saida[0]~0_combout\ & ( (\processador|ULA|Add2~1_sumout\) # (\processador|ULA|saida[0]~1_combout\) ) ) # ( !\processador|ULA|saida[0]~0_combout\ & ( \processador|ULA|saida[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|ULA|ALT_INV_saida[0]~1_combout\,
	datad => \processador|ULA|ALT_INV_Add2~1_sumout\,
	dataf => \processador|ULA|ALT_INV_saida[0]~0_combout\,
	combout => \processador|ULA|saida[0]~2_combout\);

-- Location: MLABCELL_X13_Y7_N51
\processador|ULA|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[1]~9_combout\ = ( \processador|ULA|Add2~9_sumout\ & ( (\processador|ULA|saida[1]~3_combout\) # (\processador|ULA|saida[1]~8_combout\) ) ) # ( !\processador|ULA|Add2~9_sumout\ & ( \processador|ULA|saida[1]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010111110101111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~8_combout\,
	datac => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datae => \processador|ULA|ALT_INV_Add2~9_sumout\,
	combout => \processador|ULA|saida[1]~9_combout\);

-- Location: MLABCELL_X13_Y7_N0
\processador|ULA|saida[2]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[2]~61_combout\ = ( !\processador|UC_ULA|ULActrl[1]~4_combout\ & ( (!\processador|UC_ULA|ULActrl[0]~5_combout\ & (\processador|ULA|Add2~13_sumout\ & (((\processador|UC_ULA|ULActrl[1]~1_combout\)) # 
-- (\processador|selMUX_AND_BEQ~0_combout\)))) # (\processador|UC_ULA|ULActrl[0]~5_combout\ & (!\processador|selMUX_AND_BEQ~0_combout\ & (((\processador|MUX1|saida_MUX[2]~2_combout\ & !\processador|UC_ULA|ULActrl[1]~1_combout\))))) ) ) # ( 
-- \processador|UC_ULA|ULActrl[1]~4_combout\ & ( (!\processador|selMUX_AND_BEQ~0_combout\ & ((!\processador|UC_ULA|ULActrl[1]~1_combout\ & (((\processador|ULA|Add0~5_sumout\)))) # (\processador|UC_ULA|ULActrl[1]~1_combout\ & (\processador|ULA|Add2~13_sumout\ 
-- & ((!\processador|UC_ULA|ULActrl[0]~5_combout\)))))) # (\processador|selMUX_AND_BEQ~0_combout\ & (\processador|ULA|Add2~13_sumout\ & (((!\processador|UC_ULA|ULActrl[0]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001010000110110000101000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ALT_INV_selMUX_AND_BEQ~0_combout\,
	datab => \processador|ULA|ALT_INV_Add2~13_sumout\,
	datac => \processador|ULA|ALT_INV_Add0~5_sumout\,
	datad => \processador|UC_ULA|ALT_INV_ULActrl[0]~5_combout\,
	datae => \processador|UC_ULA|ALT_INV_ULActrl[1]~4_combout\,
	dataf => \processador|UC_ULA|ALT_INV_ULActrl[1]~1_combout\,
	datag => \processador|MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \processador|ULA|saida[2]~61_combout\);

-- Location: MLABCELL_X13_Y7_N54
\processador|ULA|saida[9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[9]~20_combout\ = ( \processador|ULA|saida[1]~3_combout\ & ( \processador|ULA|saida[2]~10_combout\ & ( (\processador|ULA|Add0~33_sumout\) # (\processador|ULA|Add2~41_sumout\) ) ) ) # ( !\processador|ULA|saida[1]~3_combout\ & ( 
-- \processador|ULA|saida[2]~10_combout\ & ( \processador|ULA|Add0~33_sumout\ ) ) ) # ( \processador|ULA|saida[1]~3_combout\ & ( !\processador|ULA|saida[2]~10_combout\ & ( \processador|ULA|Add2~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_Add2~41_sumout\,
	datad => \processador|ULA|ALT_INV_Add0~33_sumout\,
	datae => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	dataf => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	combout => \processador|ULA|saida[9]~20_combout\);

-- Location: MLABCELL_X13_Y7_N24
\processador|ULA|saida[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[10]~21_combout\ = ( \processador|ULA|saida[1]~3_combout\ & ( \processador|ULA|Add2~45_sumout\ ) ) # ( !\processador|ULA|saida[1]~3_combout\ & ( \processador|ULA|Add2~45_sumout\ & ( (\processador|ULA|saida[2]~10_combout\ & 
-- \processador|ULA|Add0~37_sumout\) ) ) ) # ( \processador|ULA|saida[1]~3_combout\ & ( !\processador|ULA|Add2~45_sumout\ & ( (\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~37_sumout\) ) ) ) # ( !\processador|ULA|saida[1]~3_combout\ & ( 
-- !\processador|ULA|Add2~45_sumout\ & ( (\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~37_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_Add0~37_sumout\,
	datae => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	dataf => \processador|ULA|ALT_INV_Add2~45_sumout\,
	combout => \processador|ULA|saida[10]~21_combout\);

-- Location: LABCELL_X14_Y8_N54
\processador|ULA|saida[11]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[11]~22_combout\ = ( \processador|ULA|Add0~41_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~49_sumout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( !\processador|ULA|Add0~41_sumout\ & ( 
-- (\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~49_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datab => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datad => \processador|ULA|ALT_INV_Add2~49_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~41_sumout\,
	combout => \processador|ULA|saida[11]~22_combout\);

-- Location: MLABCELL_X13_Y7_N21
\processador|ULA|saida[13]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[13]~24_combout\ = ( \processador|ULA|Add2~57_sumout\ & ( \processador|ULA|saida[2]~10_combout\ & ( (\processador|ULA|saida[1]~3_combout\) # (\processador|ULA|Add0~49_sumout\) ) ) ) # ( !\processador|ULA|Add2~57_sumout\ & ( 
-- \processador|ULA|saida[2]~10_combout\ & ( \processador|ULA|Add0~49_sumout\ ) ) ) # ( \processador|ULA|Add2~57_sumout\ & ( !\processador|ULA|saida[2]~10_combout\ & ( \processador|ULA|saida[1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101010101010101010101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_Add0~49_sumout\,
	datac => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datae => \processador|ULA|ALT_INV_Add2~57_sumout\,
	dataf => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	combout => \processador|ULA|saida[13]~24_combout\);

-- Location: MLABCELL_X13_Y10_N12
\processador|ULA|saida[15]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[15]~26_combout\ = ( \processador|ULA|Add2~65_sumout\ & ( ((\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~57_sumout\)) # (\processador|ULA|saida[1]~3_combout\) ) ) # ( !\processador|ULA|Add2~65_sumout\ & ( 
-- (\processador|ULA|saida[2]~10_combout\ & \processador|ULA|Add0~57_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_Add0~57_sumout\,
	dataf => \processador|ULA|ALT_INV_Add2~65_sumout\,
	combout => \processador|ULA|saida[15]~26_combout\);

-- Location: MLABCELL_X13_Y10_N21
\processador|ULA|saida[25]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA|saida[25]~47_combout\ = ( \processador|ULA|Add0~97_sumout\ & ( (((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~105_sumout\)) # (\processador|ULA|saida[25]~46_combout\)) # (\processador|ULA|saida[2]~10_combout\) ) ) # ( 
-- !\processador|ULA|Add0~97_sumout\ & ( ((\processador|ULA|saida[1]~3_combout\ & \processador|ULA|Add2~105_sumout\)) # (\processador|ULA|saida[25]~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA|ALT_INV_saida[1]~3_combout\,
	datab => \processador|ULA|ALT_INV_saida[2]~10_combout\,
	datac => \processador|ULA|ALT_INV_saida[25]~46_combout\,
	datad => \processador|ULA|ALT_INV_Add2~105_sumout\,
	dataf => \processador|ULA|ALT_INV_Add0~97_sumout\,
	combout => \processador|ULA|saida[25]~47_combout\);

-- Location: LABCELL_X6_Y31_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


