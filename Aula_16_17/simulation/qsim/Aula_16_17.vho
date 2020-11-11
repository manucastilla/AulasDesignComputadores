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

-- DATE "11/11/2020 15:05:22"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula_16_17 IS
    PORT (
	func : IN std_logic_vector(5 DOWNTO 0);
	signalB : IN std_logic_vector(31 DOWNTO 0);
	signalA : IN std_logic_vector(31 DOWNTO 0);
	ULAopIN : IN std_logic_vector(1 DOWNTO 0);
	overflow : OUT std_logic;
	resultado : OUT std_logic_vector(31 DOWNTO 0)
	);
END Aula_16_17;

ARCHITECTURE structure OF Aula_16_17 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_func : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_signalB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_signalA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULAopIN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL ww_resultado : std_logic_vector(31 DOWNTO 0);
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \resultado[8]~output_o\ : std_logic;
SIGNAL \resultado[9]~output_o\ : std_logic;
SIGNAL \resultado[10]~output_o\ : std_logic;
SIGNAL \resultado[11]~output_o\ : std_logic;
SIGNAL \resultado[12]~output_o\ : std_logic;
SIGNAL \resultado[13]~output_o\ : std_logic;
SIGNAL \resultado[14]~output_o\ : std_logic;
SIGNAL \resultado[15]~output_o\ : std_logic;
SIGNAL \resultado[16]~output_o\ : std_logic;
SIGNAL \resultado[17]~output_o\ : std_logic;
SIGNAL \resultado[18]~output_o\ : std_logic;
SIGNAL \resultado[19]~output_o\ : std_logic;
SIGNAL \resultado[20]~output_o\ : std_logic;
SIGNAL \resultado[21]~output_o\ : std_logic;
SIGNAL \resultado[22]~output_o\ : std_logic;
SIGNAL \resultado[23]~output_o\ : std_logic;
SIGNAL \resultado[24]~output_o\ : std_logic;
SIGNAL \resultado[25]~output_o\ : std_logic;
SIGNAL \resultado[26]~output_o\ : std_logic;
SIGNAL \resultado[27]~output_o\ : std_logic;
SIGNAL \resultado[28]~output_o\ : std_logic;
SIGNAL \resultado[29]~output_o\ : std_logic;
SIGNAL \resultado[30]~output_o\ : std_logic;
SIGNAL \resultado[31]~output_o\ : std_logic;
SIGNAL \signalA[1]~input_o\ : std_logic;
SIGNAL \signalB[1]~input_o\ : std_logic;
SIGNAL \ULAopIN[0]~input_o\ : std_logic;
SIGNAL \ULAopIN[1]~input_o\ : std_logic;
SIGNAL \UC_ULA|Equal5~0_combout\ : std_logic;
SIGNAL \func[0]~input_o\ : std_logic;
SIGNAL \func[2]~input_o\ : std_logic;
SIGNAL \func[1]~input_o\ : std_logic;
SIGNAL \func[4]~input_o\ : std_logic;
SIGNAL \func[5]~input_o\ : std_logic;
SIGNAL \UC_ULA|ULActrl~0_combout\ : std_logic;
SIGNAL \UC_ULA|ULActrl[2]~1_combout\ : std_logic;
SIGNAL \signalB[0]~input_o\ : std_logic;
SIGNAL \signalA[0]~input_o\ : std_logic;
SIGNAL \ULA|ULA1|vaiUM~combout\ : std_logic;
SIGNAL \signalA[2]~input_o\ : std_logic;
SIGNAL \signalB[2]~input_o\ : std_logic;
SIGNAL \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[3]~input_o\ : std_logic;
SIGNAL \signalB[3]~input_o\ : std_logic;
SIGNAL \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[4]~input_o\ : std_logic;
SIGNAL \signalB[4]~input_o\ : std_logic;
SIGNAL \ULA|ULA4|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA4|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[5]~input_o\ : std_logic;
SIGNAL \signalB[5]~input_o\ : std_logic;
SIGNAL \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[6]~input_o\ : std_logic;
SIGNAL \signalB[6]~input_o\ : std_logic;
SIGNAL \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|vaiUM~combout\ : std_logic;
SIGNAL \signalA[7]~input_o\ : std_logic;
SIGNAL \signalB[7]~input_o\ : std_logic;
SIGNAL \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[8]~input_o\ : std_logic;
SIGNAL \signalB[8]~input_o\ : std_logic;
SIGNAL \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[9]~input_o\ : std_logic;
SIGNAL \signalB[9]~input_o\ : std_logic;
SIGNAL \ULA|ULA9|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA9|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[10]~input_o\ : std_logic;
SIGNAL \signalB[10]~input_o\ : std_logic;
SIGNAL \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[11]~input_o\ : std_logic;
SIGNAL \signalB[11]~input_o\ : std_logic;
SIGNAL \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|vaiUM~combout\ : std_logic;
SIGNAL \signalA[12]~input_o\ : std_logic;
SIGNAL \signalB[12]~input_o\ : std_logic;
SIGNAL \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[13]~input_o\ : std_logic;
SIGNAL \signalB[13]~input_o\ : std_logic;
SIGNAL \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[14]~input_o\ : std_logic;
SIGNAL \signalB[14]~input_o\ : std_logic;
SIGNAL \ULA|ULA14|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|signalvaiUM~1_combout\ : std_logic;
SIGNAL \UC_ULA|ULActrl[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA14|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[15]~input_o\ : std_logic;
SIGNAL \signalB[15]~input_o\ : std_logic;
SIGNAL \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[16]~input_o\ : std_logic;
SIGNAL \signalB[16]~input_o\ : std_logic;
SIGNAL \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|vaiUM~combout\ : std_logic;
SIGNAL \signalA[17]~input_o\ : std_logic;
SIGNAL \signalB[17]~input_o\ : std_logic;
SIGNAL \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[18]~input_o\ : std_logic;
SIGNAL \signalB[18]~input_o\ : std_logic;
SIGNAL \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[19]~input_o\ : std_logic;
SIGNAL \signalB[19]~input_o\ : std_logic;
SIGNAL \ULA|ULA19|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA19|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[20]~input_o\ : std_logic;
SIGNAL \signalB[20]~input_o\ : std_logic;
SIGNAL \ULA|ULA20|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[21]~input_o\ : std_logic;
SIGNAL \signalB[21]~input_o\ : std_logic;
SIGNAL \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|vaiUM~combout\ : std_logic;
SIGNAL \signalA[22]~input_o\ : std_logic;
SIGNAL \signalB[22]~input_o\ : std_logic;
SIGNAL \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[23]~input_o\ : std_logic;
SIGNAL \signalB[23]~input_o\ : std_logic;
SIGNAL \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[24]~input_o\ : std_logic;
SIGNAL \signalB[24]~input_o\ : std_logic;
SIGNAL \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[25]~input_o\ : std_logic;
SIGNAL \signalB[25]~input_o\ : std_logic;
SIGNAL \ULA|ULA25|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[26]~input_o\ : std_logic;
SIGNAL \signalB[26]~input_o\ : std_logic;
SIGNAL \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|vaiUM~combout\ : std_logic;
SIGNAL \signalA[27]~input_o\ : std_logic;
SIGNAL \signalB[27]~input_o\ : std_logic;
SIGNAL \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[28]~input_o\ : std_logic;
SIGNAL \signalB[28]~input_o\ : std_logic;
SIGNAL \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[29]~input_o\ : std_logic;
SIGNAL \signalB[29]~input_o\ : std_logic;
SIGNAL \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA29|signalvaiUM~2_combout\ : std_logic;
SIGNAL \signalA[30]~input_o\ : std_logic;
SIGNAL \signalB[30]~input_o\ : std_logic;
SIGNAL \ULA|ULA30|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \signalA[31]~input_o\ : std_logic;
SIGNAL \signalB[31]~input_o\ : std_logic;
SIGNAL \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|overflow~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|vaiUM~combout\ : std_logic;
SIGNAL \func[3]~input_o\ : std_logic;
SIGNAL \UC_ULA|ULActrl~3_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \UC_ULA|ULActrl~4_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~3_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|saida_MUX~5_combout\ : std_logic;
SIGNAL \ULA|ULA0|vaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA4|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA9|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA14|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA19|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_ULA|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA23|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_ULA|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA25|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_ULA|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA28|vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_ULA|saida_MUX~0_combout\ : std_logic;
SIGNAL \ALT_INV_signalB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_func[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAopIN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ULAopIN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_signalA[1]~input_o\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_ULA|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_ULA|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_ULA|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA23|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA18|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA17|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA15|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA13|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA12|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA10|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA8|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA7|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA5|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA3|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA2|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|ALT_INV_vaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_ULActrl~4_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_ULActrl~3_combout\ : std_logic;
SIGNAL \ULA|ULA30|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA29|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA24|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA19|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_ULActrl[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA14|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA9|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_signalvaiUM~2_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_signalvaiUM~1_combout\ : std_logic;
SIGNAL \ULA|ULA4|ALT_INV_signalvaiUM~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_invertB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|ALT_INV_vaiUM~combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_ULActrl[2]~1_combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_ULActrl~0_combout\ : std_logic;
SIGNAL \UC_ULA|ALT_INV_Equal5~0_combout\ : std_logic;

BEGIN

ww_func <= func;
ww_signalB <= signalB;
ww_signalA <= signalA;
ww_ULAopIN <= ULAopIN;
overflow <= ww_overflow;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_signalB[31]~input_o\ <= NOT \signalB[31]~input_o\;
\ALT_INV_signalA[31]~input_o\ <= NOT \signalA[31]~input_o\;
\ALT_INV_signalB[30]~input_o\ <= NOT \signalB[30]~input_o\;
\ALT_INV_signalA[30]~input_o\ <= NOT \signalA[30]~input_o\;
\ALT_INV_signalB[29]~input_o\ <= NOT \signalB[29]~input_o\;
\ALT_INV_signalA[29]~input_o\ <= NOT \signalA[29]~input_o\;
\ALT_INV_signalB[28]~input_o\ <= NOT \signalB[28]~input_o\;
\ALT_INV_signalA[28]~input_o\ <= NOT \signalA[28]~input_o\;
\ALT_INV_signalB[27]~input_o\ <= NOT \signalB[27]~input_o\;
\ALT_INV_signalA[27]~input_o\ <= NOT \signalA[27]~input_o\;
\ALT_INV_signalB[26]~input_o\ <= NOT \signalB[26]~input_o\;
\ALT_INV_signalA[26]~input_o\ <= NOT \signalA[26]~input_o\;
\ALT_INV_signalB[25]~input_o\ <= NOT \signalB[25]~input_o\;
\ALT_INV_signalA[25]~input_o\ <= NOT \signalA[25]~input_o\;
\ALT_INV_signalB[24]~input_o\ <= NOT \signalB[24]~input_o\;
\ALT_INV_signalA[24]~input_o\ <= NOT \signalA[24]~input_o\;
\ALT_INV_signalB[23]~input_o\ <= NOT \signalB[23]~input_o\;
\ALT_INV_signalA[23]~input_o\ <= NOT \signalA[23]~input_o\;
\ALT_INV_signalB[22]~input_o\ <= NOT \signalB[22]~input_o\;
\ALT_INV_signalA[22]~input_o\ <= NOT \signalA[22]~input_o\;
\ALT_INV_signalB[21]~input_o\ <= NOT \signalB[21]~input_o\;
\ALT_INV_signalA[21]~input_o\ <= NOT \signalA[21]~input_o\;
\ALT_INV_signalB[20]~input_o\ <= NOT \signalB[20]~input_o\;
\ALT_INV_signalA[20]~input_o\ <= NOT \signalA[20]~input_o\;
\ALT_INV_signalB[19]~input_o\ <= NOT \signalB[19]~input_o\;
\ALT_INV_signalA[19]~input_o\ <= NOT \signalA[19]~input_o\;
\ALT_INV_signalB[18]~input_o\ <= NOT \signalB[18]~input_o\;
\ALT_INV_signalA[18]~input_o\ <= NOT \signalA[18]~input_o\;
\ALT_INV_signalB[17]~input_o\ <= NOT \signalB[17]~input_o\;
\ALT_INV_signalA[17]~input_o\ <= NOT \signalA[17]~input_o\;
\ALT_INV_signalB[16]~input_o\ <= NOT \signalB[16]~input_o\;
\ALT_INV_signalA[16]~input_o\ <= NOT \signalA[16]~input_o\;
\ALT_INV_signalB[15]~input_o\ <= NOT \signalB[15]~input_o\;
\ALT_INV_signalA[15]~input_o\ <= NOT \signalA[15]~input_o\;
\ALT_INV_signalB[14]~input_o\ <= NOT \signalB[14]~input_o\;
\ALT_INV_signalA[14]~input_o\ <= NOT \signalA[14]~input_o\;
\ALT_INV_signalB[13]~input_o\ <= NOT \signalB[13]~input_o\;
\ALT_INV_signalA[13]~input_o\ <= NOT \signalA[13]~input_o\;
\ALT_INV_signalB[12]~input_o\ <= NOT \signalB[12]~input_o\;
\ALT_INV_signalA[12]~input_o\ <= NOT \signalA[12]~input_o\;
\ALT_INV_signalB[11]~input_o\ <= NOT \signalB[11]~input_o\;
\ALT_INV_signalA[11]~input_o\ <= NOT \signalA[11]~input_o\;
\ALT_INV_signalB[10]~input_o\ <= NOT \signalB[10]~input_o\;
\ALT_INV_signalA[10]~input_o\ <= NOT \signalA[10]~input_o\;
\ALT_INV_signalB[9]~input_o\ <= NOT \signalB[9]~input_o\;
\ALT_INV_signalA[9]~input_o\ <= NOT \signalA[9]~input_o\;
\ALT_INV_signalB[8]~input_o\ <= NOT \signalB[8]~input_o\;
\ALT_INV_signalA[8]~input_o\ <= NOT \signalA[8]~input_o\;
\ALT_INV_signalB[7]~input_o\ <= NOT \signalB[7]~input_o\;
\ALT_INV_signalA[7]~input_o\ <= NOT \signalA[7]~input_o\;
\ALT_INV_signalB[6]~input_o\ <= NOT \signalB[6]~input_o\;
\ALT_INV_signalA[6]~input_o\ <= NOT \signalA[6]~input_o\;
\ALT_INV_signalB[5]~input_o\ <= NOT \signalB[5]~input_o\;
\ALT_INV_signalA[5]~input_o\ <= NOT \signalA[5]~input_o\;
\ALT_INV_signalB[4]~input_o\ <= NOT \signalB[4]~input_o\;
\ALT_INV_signalA[4]~input_o\ <= NOT \signalA[4]~input_o\;
\ALT_INV_signalB[3]~input_o\ <= NOT \signalB[3]~input_o\;
\ALT_INV_signalA[3]~input_o\ <= NOT \signalA[3]~input_o\;
\ALT_INV_signalB[2]~input_o\ <= NOT \signalB[2]~input_o\;
\ALT_INV_signalA[2]~input_o\ <= NOT \signalA[2]~input_o\;
\ALT_INV_signalA[0]~input_o\ <= NOT \signalA[0]~input_o\;
\ALT_INV_signalB[0]~input_o\ <= NOT \signalB[0]~input_o\;
\ALT_INV_func[5]~input_o\ <= NOT \func[5]~input_o\;
\ALT_INV_func[4]~input_o\ <= NOT \func[4]~input_o\;
\ALT_INV_func[3]~input_o\ <= NOT \func[3]~input_o\;
\ALT_INV_func[1]~input_o\ <= NOT \func[1]~input_o\;
\ALT_INV_func[2]~input_o\ <= NOT \func[2]~input_o\;
\ALT_INV_func[0]~input_o\ <= NOT \func[0]~input_o\;
\ALT_INV_ULAopIN[1]~input_o\ <= NOT \ULAopIN[1]~input_o\;
\ALT_INV_ULAopIN[0]~input_o\ <= NOT \ULAopIN[0]~input_o\;
\ALT_INV_signalB[1]~input_o\ <= NOT \signalB[1]~input_o\;
\ALT_INV_signalA[1]~input_o\ <= NOT \signalA[1]~input_o\;
\ULA|ULA28|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA28|vaiUM~combout\;
\ULA|ULA28|MUX_ULA|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\;
\ULA|ULA28|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA28|signalvaiUM~0_combout\;
\ULA|ULA25|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA25|vaiUM~combout\;
\ULA|ULA23|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA23|vaiUM~combout\;
\ULA|ULA23|MUX_ULA|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\;
\ULA|ULA1|MUX_ULA|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\;
\ULA|ULA23|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA23|signalvaiUM~0_combout\;
\ULA|ULA20|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA20|vaiUM~combout\;
\ULA|ULA18|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA18|vaiUM~combout\;
\ULA|ULA17|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA17|vaiUM~combout\;
\ULA|ULA15|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA15|vaiUM~combout\;
\ULA|ULA14|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA14|vaiUM~combout\;
\ULA|ULA13|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA13|vaiUM~combout\;
\ULA|ULA12|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA12|vaiUM~combout\;
\ULA|ULA10|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA10|vaiUM~combout\;
\ULA|ULA9|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA9|vaiUM~combout\;
\ULA|ULA8|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA8|vaiUM~combout\;
\ULA|ULA7|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA7|vaiUM~combout\;
\ULA|ULA5|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA5|vaiUM~combout\;
\ULA|ULA4|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA4|vaiUM~combout\;
\ULA|ULA3|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA3|vaiUM~combout\;
\ULA|ULA2|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA2|vaiUM~combout\;
\ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\;
\ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\;
\ULA|ULA0|ALT_INV_vaiUM~0_combout\ <= NOT \ULA|ULA0|vaiUM~0_combout\;
\ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~4_combout\ <= NOT \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\;
\ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~3_combout\ <= NOT \ULA|ULA0|MUX_ULA|saida_MUX~3_combout\;
\ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA|ULA0|MUX_ULA|saida_MUX~2_combout\;
\ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\;
\UC_ULA|ALT_INV_ULActrl~4_combout\ <= NOT \UC_ULA|ULActrl~4_combout\;
\ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA0|MUX_ULA|saida_MUX~0_combout\;
\UC_ULA|ALT_INV_ULActrl~3_combout\ <= NOT \UC_ULA|ULActrl~3_combout\;
\ULA|ULA30|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA30|vaiUM~combout\;
\ULA|ULA31|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA30|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA30|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA29|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA29|signalvaiUM~2_combout\;
\ULA|ULA29|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA29|signalvaiUM~1_combout\;
\ULA|ULA29|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA29|signalvaiUM~0_combout\;
\ULA|ULA29|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA26|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA26|vaiUM~combout\;
\ULA|ULA26|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA25|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA25|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA24|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA24|signalvaiUM~2_combout\;
\ULA|ULA24|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA24|signalvaiUM~1_combout\;
\ULA|ULA24|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA24|signalvaiUM~0_combout\;
\ULA|ULA24|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA21|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA21|vaiUM~combout\;
\ULA|ULA21|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA20|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA20|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA19|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA19|signalvaiUM~2_combout\;
\ULA|ULA19|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA19|signalvaiUM~1_combout\;
\ULA|ULA19|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA19|signalvaiUM~0_combout\;
\ULA|ULA18|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA17|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA16|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA16|vaiUM~combout\;
\ULA|ULA16|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA15|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA14|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA14|signalvaiUM~2_combout\;
\UC_ULA|ALT_INV_ULActrl[2]~2_combout\ <= NOT \UC_ULA|ULActrl[2]~2_combout\;
\ULA|ULA14|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA14|signalvaiUM~1_combout\;
\ULA|ULA14|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA14|signalvaiUM~0_combout\;
\ULA|ULA13|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA12|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA11|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA11|vaiUM~combout\;
\ULA|ULA11|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA10|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA9|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA9|signalvaiUM~2_combout\;
\ULA|ULA9|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA9|signalvaiUM~1_combout\;
\ULA|ULA9|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA9|signalvaiUM~0_combout\;
\ULA|ULA8|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA7|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA6|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA6|vaiUM~combout\;
\ULA|ULA6|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA5|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA4|ALT_INV_signalvaiUM~2_combout\ <= NOT \ULA|ULA4|signalvaiUM~2_combout\;
\ULA|ULA4|ALT_INV_signalvaiUM~1_combout\ <= NOT \ULA|ULA4|signalvaiUM~1_combout\;
\ULA|ULA4|ALT_INV_signalvaiUM~0_combout\ <= NOT \ULA|ULA4|signalvaiUM~0_combout\;
\ULA|ULA3|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA2|MUX_invertB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\;
\ULA|ULA1|ALT_INV_vaiUM~combout\ <= NOT \ULA|ULA1|vaiUM~combout\;
\UC_ULA|ALT_INV_ULActrl[2]~1_combout\ <= NOT \UC_ULA|ULActrl[2]~1_combout\;
\UC_ULA|ALT_INV_ULActrl~0_combout\ <= NOT \UC_ULA|ULActrl~0_combout\;
\UC_ULA|ALT_INV_Equal5~0_combout\ <= NOT \UC_ULA|Equal5~0_combout\;

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA31|overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\resultado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA0|MUX_ULA|saida_MUX~5_combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

\resultado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA1|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

\resultado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA2|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

\resultado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA3|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

\resultado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA4|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

\resultado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA5|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

\resultado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA6|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

\resultado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA7|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

\resultado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA8|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

\resultado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA9|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

\resultado[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA10|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[10]~output_o\);

\resultado[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA11|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[11]~output_o\);

\resultado[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA12|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[12]~output_o\);

\resultado[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA13|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[13]~output_o\);

\resultado[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA14|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[14]~output_o\);

\resultado[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA15|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[15]~output_o\);

\resultado[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA16|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[16]~output_o\);

\resultado[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA17|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[17]~output_o\);

\resultado[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA18|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[18]~output_o\);

\resultado[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA19|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[19]~output_o\);

\resultado[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA20|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[20]~output_o\);

\resultado[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA21|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[21]~output_o\);

\resultado[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA22|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[22]~output_o\);

\resultado[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA23|MUX_ULA|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[23]~output_o\);

\resultado[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA24|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[24]~output_o\);

\resultado[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA25|MUX_ULA|saida_MUX~2_combout\,
	devoe => ww_devoe,
	o => \resultado[25]~output_o\);

\resultado[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA26|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[26]~output_o\);

\resultado[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA27|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[27]~output_o\);

\resultado[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA28|MUX_ULA|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \resultado[28]~output_o\);

\resultado[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA29|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[29]~output_o\);

\resultado[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA30|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[30]~output_o\);

\resultado[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA31|MUX_ULA|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \resultado[31]~output_o\);

\signalA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(1),
	o => \signalA[1]~input_o\);

\signalB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(1),
	o => \signalB[1]~input_o\);

\ULAopIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAopIN(0),
	o => \ULAopIN[0]~input_o\);

\ULAopIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAopIN(1),
	o => \ULAopIN[1]~input_o\);

\UC_ULA|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|Equal5~0_combout\ = (\ULAopIN[0]~input_o\ & !\ULAopIN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[0]~input_o\,
	datab => \ALT_INV_ULAopIN[1]~input_o\,
	combout => \UC_ULA|Equal5~0_combout\);

\func[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(0),
	o => \func[0]~input_o\);

\func[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(2),
	o => \func[2]~input_o\);

\func[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(1),
	o => \func[1]~input_o\);

\func[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(4),
	o => \func[4]~input_o\);

\func[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(5),
	o => \func[5]~input_o\);

\UC_ULA|ULActrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|ULActrl~0_combout\ = (!\ULAopIN[0]~input_o\ & (!\func[4]~input_o\ & \func[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[0]~input_o\,
	datab => \ALT_INV_func[4]~input_o\,
	datac => \ALT_INV_func[5]~input_o\,
	combout => \UC_ULA|ULActrl~0_combout\);

\UC_ULA|ULActrl[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|ULActrl[2]~1_combout\ = ( \UC_ULA|ULActrl~0_combout\ & ( (\ULAopIN[1]~input_o\ & (!\func[0]~input_o\ & (!\func[2]~input_o\ & \func[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[0]~input_o\,
	datac => \ALT_INV_func[2]~input_o\,
	datad => \ALT_INV_func[1]~input_o\,
	dataf => \UC_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \UC_ULA|ULActrl[2]~1_combout\);

\signalB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(0),
	o => \signalB[0]~input_o\);

\signalA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(0),
	o => \signalA[0]~input_o\);

\ULA|ULA1|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|vaiUM~combout\ = ( \signalB[0]~input_o\ & ( \signalA[0]~input_o\ & ( (!\signalA[1]~input_o\ & (!\signalB[1]~input_o\ $ (((\UC_ULA|ULActrl[2]~1_combout\) # (\UC_ULA|Equal5~0_combout\))))) ) ) ) # ( !\signalB[0]~input_o\ & ( \signalA[0]~input_o\ & 
-- ( (!\signalB[1]~input_o\ & (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))) # (\signalB[1]~input_o\ & (!\signalA[1]~input_o\)) ) ) ) # ( \signalB[0]~input_o\ & ( !\signalA[0]~input_o\ & ( (!\signalA[1]~input_o\) # (!\signalB[1]~input_o\ 
-- $ (((\UC_ULA|ULActrl[2]~1_combout\) # (\UC_ULA|Equal5~0_combout\)))) ) ) ) # ( !\signalB[0]~input_o\ & ( !\signalA[0]~input_o\ & ( (!\signalB[1]~input_o\ & (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))) # (\signalB[1]~input_o\ & 
-- (!\signalA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001000100010111010111011101111100010001000101000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[1]~input_o\,
	datab => \ALT_INV_signalB[1]~input_o\,
	datac => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datad => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datae => \ALT_INV_signalB[0]~input_o\,
	dataf => \ALT_INV_signalA[0]~input_o\,
	combout => \ULA|ULA1|vaiUM~combout\);

\signalA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(2),
	o => \signalA[2]~input_o\);

\signalB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(2),
	o => \signalB[2]~input_o\);

\ULA|ULA2|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\ = !\signalB[2]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[2]~input_o\,
	combout => \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\);

\signalA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(3),
	o => \signalA[3]~input_o\);

\signalB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(3),
	o => \signalB[3]~input_o\);

\ULA|ULA3|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\ = !\signalB[3]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[3]~input_o\,
	combout => \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\);

\signalA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(4),
	o => \signalA[4]~input_o\);

\signalB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(4),
	o => \signalB[4]~input_o\);

\ULA|ULA4|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|signalvaiUM~0_combout\ = !\signalA[4]~input_o\ $ (!\signalB[4]~input_o\ $ (((\UC_ULA|ULActrl[2]~1_combout\) # (\UC_ULA|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalA[4]~input_o\,
	datad => \ALT_INV_signalB[4]~input_o\,
	combout => \ULA|ULA4|signalvaiUM~0_combout\);

\ULA|ULA4|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|signalvaiUM~1_combout\ = ( \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA4|signalvaiUM~0_combout\ & ( ((!\ULA|ULA1|vaiUM~combout\ & ((\ULA|ULA2|MUX_invertB|saida_MUX~0_combout\) # (\signalA[2]~input_o\))) # (\ULA|ULA1|vaiUM~combout\ & 
-- (\signalA[2]~input_o\ & \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[3]~input_o\) ) ) ) # ( !\ULA|ULA3|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA4|signalvaiUM~0_combout\ & ( (\signalA[3]~input_o\ & ((!\ULA|ULA1|vaiUM~combout\ & 
-- ((\ULA|ULA2|MUX_invertB|saida_MUX~0_combout\) # (\signalA[2]~input_o\))) # (\ULA|ULA1|vaiUM~combout\ & (\signalA[2]~input_o\ & \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[2]~input_o\,
	datac => \ULA|ULA2|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[3]~input_o\,
	datae => \ULA|ULA3|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA4|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA4|signalvaiUM~1_combout\);

\ULA|ULA4|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|signalvaiUM~2_combout\ = (\signalA[4]~input_o\ & (!\signalB[4]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001000000001110000100000000111000010000000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalA[4]~input_o\,
	datad => \ALT_INV_signalB[4]~input_o\,
	combout => \ULA|ULA4|signalvaiUM~2_combout\);

\signalA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(5),
	o => \signalA[5]~input_o\);

\signalB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(5),
	o => \signalB[5]~input_o\);

\ULA|ULA5|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\ = !\signalB[5]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[5]~input_o\,
	combout => \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\);

\signalA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(6),
	o => \signalA[6]~input_o\);

\signalB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(6),
	o => \signalB[6]~input_o\);

\ULA|ULA6|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\ = !\signalB[6]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[6]~input_o\,
	combout => \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA6|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|vaiUM~combout\ = ( !\signalA[6]~input_o\ & ( \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[5]~input_o\ & ((!\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA4|signalvaiUM~1_combout\ & !\ULA|ULA4|signalvaiUM~2_combout\)))) # 
-- (\signalA[5]~input_o\ & (!\ULA|ULA4|signalvaiUM~1_combout\ & (!\ULA|ULA4|signalvaiUM~2_combout\ & !\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( \signalA[6]~input_o\ & ( !\ULA|ULA6|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[5]~input_o\ & 
-- ((!\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA4|signalvaiUM~1_combout\ & !\ULA|ULA4|signalvaiUM~2_combout\)))) # (\signalA[5]~input_o\ & (!\ULA|ULA4|signalvaiUM~1_combout\ & (!\ULA|ULA4|signalvaiUM~2_combout\ & 
-- !\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[6]~input_o\ & ( !\ULA|ULA6|MUX_invertB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA4|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[5]~input_o\,
	datad => \ULA|ULA5|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[6]~input_o\,
	dataf => \ULA|ULA6|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA6|vaiUM~combout\);

\signalA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(7),
	o => \signalA[7]~input_o\);

\signalB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(7),
	o => \signalB[7]~input_o\);

\ULA|ULA7|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\ = !\signalB[7]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[7]~input_o\,
	combout => \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\);

\signalA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(8),
	o => \signalA[8]~input_o\);

\signalB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(8),
	o => \signalB[8]~input_o\);

\ULA|ULA8|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\ = !\signalB[8]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[8]~input_o\,
	combout => \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\);

\signalA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(9),
	o => \signalA[9]~input_o\);

\signalB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(9),
	o => \signalB[9]~input_o\);

\ULA|ULA9|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|signalvaiUM~0_combout\ = !\signalA[9]~input_o\ $ (!\signalB[9]~input_o\ $ (((\UC_ULA|ULActrl[2]~1_combout\) # (\UC_ULA|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalA[9]~input_o\,
	datad => \ALT_INV_signalB[9]~input_o\,
	combout => \ULA|ULA9|signalvaiUM~0_combout\);

\ULA|ULA9|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|signalvaiUM~1_combout\ = ( \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA9|signalvaiUM~0_combout\ & ( ((!\ULA|ULA6|vaiUM~combout\ & ((\ULA|ULA7|MUX_invertB|saida_MUX~0_combout\) # (\signalA[7]~input_o\))) # (\ULA|ULA6|vaiUM~combout\ & 
-- (\signalA[7]~input_o\ & \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[8]~input_o\) ) ) ) # ( !\ULA|ULA8|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA9|signalvaiUM~0_combout\ & ( (\signalA[8]~input_o\ & ((!\ULA|ULA6|vaiUM~combout\ & 
-- ((\ULA|ULA7|MUX_invertB|saida_MUX~0_combout\) # (\signalA[7]~input_o\))) # (\ULA|ULA6|vaiUM~combout\ & (\signalA[7]~input_o\ & \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA6|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[7]~input_o\,
	datac => \ULA|ULA7|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[8]~input_o\,
	datae => \ULA|ULA8|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA9|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA9|signalvaiUM~1_combout\);

\ULA|ULA9|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|signalvaiUM~2_combout\ = (\signalA[9]~input_o\ & (!\signalB[9]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001000000001110000100000000111000010000000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalA[9]~input_o\,
	datad => \ALT_INV_signalB[9]~input_o\,
	combout => \ULA|ULA9|signalvaiUM~2_combout\);

\signalA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(10),
	o => \signalA[10]~input_o\);

\signalB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(10),
	o => \signalB[10]~input_o\);

\ULA|ULA10|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\ = !\signalB[10]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[10]~input_o\,
	combout => \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\);

\signalA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(11),
	o => \signalA[11]~input_o\);

\signalB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(11),
	o => \signalB[11]~input_o\);

\ULA|ULA11|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\ = !\signalB[11]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[11]~input_o\,
	combout => \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA11|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|vaiUM~combout\ = ( !\signalA[11]~input_o\ & ( \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[10]~input_o\ & ((!\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA9|signalvaiUM~1_combout\ & 
-- !\ULA|ULA9|signalvaiUM~2_combout\)))) # (\signalA[10]~input_o\ & (!\ULA|ULA9|signalvaiUM~1_combout\ & (!\ULA|ULA9|signalvaiUM~2_combout\ & !\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( \signalA[11]~input_o\ & ( 
-- !\ULA|ULA11|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[10]~input_o\ & ((!\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA9|signalvaiUM~1_combout\ & !\ULA|ULA9|signalvaiUM~2_combout\)))) # (\signalA[10]~input_o\ & 
-- (!\ULA|ULA9|signalvaiUM~1_combout\ & (!\ULA|ULA9|signalvaiUM~2_combout\ & !\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[11]~input_o\ & ( !\ULA|ULA11|MUX_invertB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA9|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[10]~input_o\,
	datad => \ULA|ULA10|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[11]~input_o\,
	dataf => \ULA|ULA11|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA11|vaiUM~combout\);

\signalA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(12),
	o => \signalA[12]~input_o\);

\signalB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(12),
	o => \signalB[12]~input_o\);

\ULA|ULA12|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\ = !\signalB[12]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[12]~input_o\,
	combout => \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\);

\signalA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(13),
	o => \signalA[13]~input_o\);

\signalB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(13),
	o => \signalB[13]~input_o\);

\ULA|ULA13|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\ = !\signalB[13]~input_o\ $ (((!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalB[13]~input_o\,
	combout => \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\);

\signalA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(14),
	o => \signalA[14]~input_o\);

\signalB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(14),
	o => \signalB[14]~input_o\);

\ULA|ULA14|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|signalvaiUM~0_combout\ = !\signalA[14]~input_o\ $ (!\signalB[14]~input_o\ $ (((\UC_ULA|ULActrl[2]~1_combout\) # (\UC_ULA|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100010000111011110001000011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	datac => \ALT_INV_signalA[14]~input_o\,
	datad => \ALT_INV_signalB[14]~input_o\,
	combout => \ULA|ULA14|signalvaiUM~0_combout\);

\ULA|ULA14|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|signalvaiUM~1_combout\ = ( \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA14|signalvaiUM~0_combout\ & ( ((!\ULA|ULA11|vaiUM~combout\ & ((\ULA|ULA12|MUX_invertB|saida_MUX~0_combout\) # (\signalA[12]~input_o\))) # 
-- (\ULA|ULA11|vaiUM~combout\ & (\signalA[12]~input_o\ & \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[13]~input_o\) ) ) ) # ( !\ULA|ULA13|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA14|signalvaiUM~0_combout\ & ( (\signalA[13]~input_o\ & 
-- ((!\ULA|ULA11|vaiUM~combout\ & ((\ULA|ULA12|MUX_invertB|saida_MUX~0_combout\) # (\signalA[12]~input_o\))) # (\ULA|ULA11|vaiUM~combout\ & (\signalA[12]~input_o\ & \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA11|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[12]~input_o\,
	datac => \ULA|ULA12|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[13]~input_o\,
	datae => \ULA|ULA13|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA14|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA14|signalvaiUM~1_combout\);

\UC_ULA|ULActrl[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|ULActrl[2]~2_combout\ = (!\UC_ULA|Equal5~0_combout\ & !\UC_ULA|ULActrl[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_Equal5~0_combout\,
	datab => \UC_ULA|ALT_INV_ULActrl[2]~1_combout\,
	combout => \UC_ULA|ULActrl[2]~2_combout\);

\ULA|ULA14|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|signalvaiUM~2_combout\ = (\signalA[14]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalA[14]~input_o\,
	datac => \ALT_INV_signalB[14]~input_o\,
	combout => \ULA|ULA14|signalvaiUM~2_combout\);

\signalA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(15),
	o => \signalA[15]~input_o\);

\signalB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(15),
	o => \signalB[15]~input_o\);

\ULA|ULA15|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[15]~input_o\,
	combout => \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\);

\signalA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(16),
	o => \signalA[16]~input_o\);

\signalB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(16),
	o => \signalB[16]~input_o\);

\ULA|ULA16|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[16]~input_o\,
	combout => \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA16|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|vaiUM~combout\ = ( !\signalA[16]~input_o\ & ( \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[15]~input_o\ & ((!\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA14|signalvaiUM~1_combout\ & 
-- !\ULA|ULA14|signalvaiUM~2_combout\)))) # (\signalA[15]~input_o\ & (!\ULA|ULA14|signalvaiUM~1_combout\ & (!\ULA|ULA14|signalvaiUM~2_combout\ & !\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( \signalA[16]~input_o\ & ( 
-- !\ULA|ULA16|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[15]~input_o\ & ((!\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA14|signalvaiUM~1_combout\ & !\ULA|ULA14|signalvaiUM~2_combout\)))) # (\signalA[15]~input_o\ & 
-- (!\ULA|ULA14|signalvaiUM~1_combout\ & (!\ULA|ULA14|signalvaiUM~2_combout\ & !\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[16]~input_o\ & ( !\ULA|ULA16|MUX_invertB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA14|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[15]~input_o\,
	datad => \ULA|ULA15|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[16]~input_o\,
	dataf => \ULA|ULA16|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA16|vaiUM~combout\);

\signalA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(17),
	o => \signalA[17]~input_o\);

\signalB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(17),
	o => \signalB[17]~input_o\);

\ULA|ULA17|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[17]~input_o\,
	combout => \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\);

\signalA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(18),
	o => \signalA[18]~input_o\);

\signalB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(18),
	o => \signalB[18]~input_o\);

\ULA|ULA18|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[18]~input_o\,
	combout => \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\);

\signalA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(19),
	o => \signalA[19]~input_o\);

\signalB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(19),
	o => \signalB[19]~input_o\);

\ULA|ULA19|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|signalvaiUM~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (!\signalA[19]~input_o\ $ (!\signalB[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalA[19]~input_o\,
	datac => \ALT_INV_signalB[19]~input_o\,
	combout => \ULA|ULA19|signalvaiUM~0_combout\);

\ULA|ULA19|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|signalvaiUM~1_combout\ = ( \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA19|signalvaiUM~0_combout\ & ( ((!\ULA|ULA16|vaiUM~combout\ & ((\ULA|ULA17|MUX_invertB|saida_MUX~0_combout\) # (\signalA[17]~input_o\))) # 
-- (\ULA|ULA16|vaiUM~combout\ & (\signalA[17]~input_o\ & \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[18]~input_o\) ) ) ) # ( !\ULA|ULA18|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA19|signalvaiUM~0_combout\ & ( (\signalA[18]~input_o\ & 
-- ((!\ULA|ULA16|vaiUM~combout\ & ((\ULA|ULA17|MUX_invertB|saida_MUX~0_combout\) # (\signalA[17]~input_o\))) # (\ULA|ULA16|vaiUM~combout\ & (\signalA[17]~input_o\ & \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[17]~input_o\,
	datac => \ULA|ULA17|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[18]~input_o\,
	datae => \ULA|ULA18|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA19|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA19|signalvaiUM~1_combout\);

\ULA|ULA19|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|signalvaiUM~2_combout\ = (\signalA[19]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000100100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalA[19]~input_o\,
	datac => \ALT_INV_signalB[19]~input_o\,
	combout => \ULA|ULA19|signalvaiUM~2_combout\);

\signalA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(20),
	o => \signalA[20]~input_o\);

\signalB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(20),
	o => \signalB[20]~input_o\);

\ULA|ULA20|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[20]~input_o\,
	combout => \ULA|ULA20|MUX_invertB|saida_MUX~0_combout\);

\signalA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(21),
	o => \signalA[21]~input_o\);

\signalB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(21),
	o => \signalB[21]~input_o\);

\ULA|ULA21|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[21]~input_o\,
	combout => \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA21|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|vaiUM~combout\ = ( !\signalA[21]~input_o\ & ( \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[20]~input_o\ & ((!\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA19|signalvaiUM~1_combout\ & 
-- !\ULA|ULA19|signalvaiUM~2_combout\)))) # (\signalA[20]~input_o\ & (!\ULA|ULA19|signalvaiUM~1_combout\ & (!\ULA|ULA19|signalvaiUM~2_combout\ & !\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( \signalA[21]~input_o\ & ( 
-- !\ULA|ULA21|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[20]~input_o\ & ((!\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA19|signalvaiUM~1_combout\ & !\ULA|ULA19|signalvaiUM~2_combout\)))) # (\signalA[20]~input_o\ & 
-- (!\ULA|ULA19|signalvaiUM~1_combout\ & (!\ULA|ULA19|signalvaiUM~2_combout\ & !\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[21]~input_o\ & ( !\ULA|ULA21|MUX_invertB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA19|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[20]~input_o\,
	datad => \ULA|ULA20|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[21]~input_o\,
	dataf => \ULA|ULA21|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA21|vaiUM~combout\);

\signalA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(22),
	o => \signalA[22]~input_o\);

\signalB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(22),
	o => \signalB[22]~input_o\);

\ULA|ULA22|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[22]~input_o\,
	combout => \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\);

\signalA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(23),
	o => \signalA[23]~input_o\);

\signalB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(23),
	o => \signalB[23]~input_o\);

\ULA|ULA23|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[23]~input_o\,
	combout => \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\);

\signalA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(24),
	o => \signalA[24]~input_o\);

\signalB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(24),
	o => \signalB[24]~input_o\);

\ULA|ULA24|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[24]~input_o\,
	combout => \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA24|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|signalvaiUM~0_combout\ = !\signalA[24]~input_o\ $ (!\ULA|ULA24|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[24]~input_o\,
	datab => \ULA|ULA24|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA24|signalvaiUM~0_combout\);

\ULA|ULA24|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|signalvaiUM~1_combout\ = ( \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA24|signalvaiUM~0_combout\ & ( ((!\ULA|ULA21|vaiUM~combout\ & ((\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\) # (\signalA[22]~input_o\))) # 
-- (\ULA|ULA21|vaiUM~combout\ & (\signalA[22]~input_o\ & \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[23]~input_o\) ) ) ) # ( !\ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA24|signalvaiUM~0_combout\ & ( (\signalA[23]~input_o\ & 
-- ((!\ULA|ULA21|vaiUM~combout\ & ((\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\) # (\signalA[22]~input_o\))) # (\ULA|ULA21|vaiUM~combout\ & (\signalA[22]~input_o\ & \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[22]~input_o\,
	datac => \ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[23]~input_o\,
	datae => \ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA24|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA24|signalvaiUM~1_combout\);

\ULA|ULA24|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|signalvaiUM~2_combout\ = (\signalA[24]~input_o\ & \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[24]~input_o\,
	datab => \ULA|ULA24|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA24|signalvaiUM~2_combout\);

\signalA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(25),
	o => \signalA[25]~input_o\);

\signalB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(25),
	o => \signalB[25]~input_o\);

\ULA|ULA25|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[25]~input_o\,
	combout => \ULA|ULA25|MUX_invertB|saida_MUX~0_combout\);

\signalA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(26),
	o => \signalA[26]~input_o\);

\signalB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(26),
	o => \signalB[26]~input_o\);

\ULA|ULA26|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[26]~input_o\,
	combout => \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA26|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|vaiUM~combout\ = ( !\signalA[26]~input_o\ & ( \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[25]~input_o\ & ((!\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA24|signalvaiUM~1_combout\ & 
-- !\ULA|ULA24|signalvaiUM~2_combout\)))) # (\signalA[25]~input_o\ & (!\ULA|ULA24|signalvaiUM~1_combout\ & (!\ULA|ULA24|signalvaiUM~2_combout\ & !\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( \signalA[26]~input_o\ & ( 
-- !\ULA|ULA26|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[25]~input_o\ & ((!\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA24|signalvaiUM~1_combout\ & !\ULA|ULA24|signalvaiUM~2_combout\)))) # (\signalA[25]~input_o\ & 
-- (!\ULA|ULA24|signalvaiUM~1_combout\ & (!\ULA|ULA24|signalvaiUM~2_combout\ & !\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[26]~input_o\ & ( !\ULA|ULA26|MUX_invertB|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA24|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[25]~input_o\,
	datad => \ULA|ULA25|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[26]~input_o\,
	dataf => \ULA|ULA26|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA26|vaiUM~combout\);

\signalA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(27),
	o => \signalA[27]~input_o\);

\signalB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(27),
	o => \signalB[27]~input_o\);

\ULA|ULA27|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[27]~input_o\,
	combout => \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\);

\signalA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(28),
	o => \signalA[28]~input_o\);

\signalB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(28),
	o => \signalB[28]~input_o\);

\ULA|ULA28|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[28]~input_o\,
	combout => \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\);

\signalA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(29),
	o => \signalA[29]~input_o\);

\signalB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(29),
	o => \signalB[29]~input_o\);

\ULA|ULA29|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[29]~input_o\,
	combout => \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA29|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|signalvaiUM~0_combout\ = !\signalA[29]~input_o\ $ (!\ULA|ULA29|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[29]~input_o\,
	datab => \ULA|ULA29|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA29|signalvaiUM~0_combout\);

\ULA|ULA29|signalvaiUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|signalvaiUM~1_combout\ = ( \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA29|signalvaiUM~0_combout\ & ( ((!\ULA|ULA26|vaiUM~combout\ & ((\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\) # (\signalA[27]~input_o\))) # 
-- (\ULA|ULA26|vaiUM~combout\ & (\signalA[27]~input_o\ & \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[28]~input_o\) ) ) ) # ( !\ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ & ( \ULA|ULA29|signalvaiUM~0_combout\ & ( (\signalA[28]~input_o\ & 
-- ((!\ULA|ULA26|vaiUM~combout\ & ((\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\) # (\signalA[27]~input_o\))) # (\ULA|ULA26|vaiUM~combout\ & (\signalA[27]~input_o\ & \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[27]~input_o\,
	datac => \ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[28]~input_o\,
	datae => \ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA29|ALT_INV_signalvaiUM~0_combout\,
	combout => \ULA|ULA29|signalvaiUM~1_combout\);

\ULA|ULA29|signalvaiUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|signalvaiUM~2_combout\ = (\signalA[29]~input_o\ & \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[29]~input_o\,
	datab => \ULA|ULA29|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA29|signalvaiUM~2_combout\);

\signalA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(30),
	o => \signalA[30]~input_o\);

\signalB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(30),
	o => \signalB[30]~input_o\);

\ULA|ULA30|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[30]~input_o\,
	combout => \ULA|ULA30|MUX_invertB|saida_MUX~0_combout\);

\signalA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalA(31),
	o => \signalA[31]~input_o\);

\signalB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signalB(31),
	o => \signalB[31]~input_o\);

\ULA|ULA31|MUX_invertB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\ = !\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[31]~input_o\,
	combout => \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\);

\ULA|ULA31|overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|overflow~0_combout\ = ( \signalA[31]~input_o\ & ( \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[30]~input_o\ & ((!\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA29|signalvaiUM~1_combout\ & 
-- !\ULA|ULA29|signalvaiUM~2_combout\)))) # (\signalA[30]~input_o\ & (!\ULA|ULA29|signalvaiUM~1_combout\ & (!\ULA|ULA29|signalvaiUM~2_combout\ & !\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\))) ) ) ) # ( !\signalA[31]~input_o\ & ( 
-- !\ULA|ULA31|MUX_invertB|saida_MUX~0_combout\ & ( (!\signalA[30]~input_o\ & (\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\ & ((\ULA|ULA29|signalvaiUM~2_combout\) # (\ULA|ULA29|signalvaiUM~1_combout\)))) # (\signalA[30]~input_o\ & 
-- (((\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\) # (\ULA|ULA29|signalvaiUM~2_combout\)) # (\ULA|ULA29|signalvaiUM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000000000000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA29|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[30]~input_o\,
	datad => \ULA|ULA30|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_signalA[31]~input_o\,
	dataf => \ULA|ULA31|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA31|overflow~0_combout\);

\ULA|ULA30|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|vaiUM~combout\ = (!\signalA[30]~input_o\ & ((!\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA29|signalvaiUM~1_combout\ & !\ULA|ULA29|signalvaiUM~2_combout\)))) # (\signalA[30]~input_o\ & (!\ULA|ULA29|signalvaiUM~1_combout\ & 
-- (!\ULA|ULA29|signalvaiUM~2_combout\ & !\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA29|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[30]~input_o\,
	datad => \ULA|ULA30|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA30|vaiUM~combout\);

\func[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(3),
	o => \func[3]~input_o\);

\UC_ULA|ULActrl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|ULActrl~3_combout\ = (!\func[0]~input_o\ & (!\func[2]~input_o\ & \UC_ULA|ULActrl~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_func[0]~input_o\,
	datab => \ALT_INV_func[2]~input_o\,
	datac => \UC_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \UC_ULA|ULActrl~3_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~0_combout\ = ( \signalA[0]~input_o\ & ( (!\signalB[0]~input_o\ & ((!\ULAopIN[1]~input_o\) # ((!\func[3]~input_o\ & \UC_ULA|ULActrl~3_combout\)))) ) ) # ( !\signalA[0]~input_o\ & ( (\signalB[0]~input_o\ & 
-- ((!\ULAopIN[1]~input_o\) # ((!\func[3]~input_o\ & \UC_ULA|ULActrl~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101110101011100000000000000000101011101010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[3]~input_o\,
	datac => \UC_ULA|ALT_INV_ULActrl~3_combout\,
	datad => \ALT_INV_signalB[0]~input_o\,
	datae => \ALT_INV_signalA[0]~input_o\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~0_combout\);

\UC_ULA|ULActrl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UC_ULA|ULActrl~4_combout\ = ( !\func[3]~input_o\ & ( \UC_ULA|ULActrl~0_combout\ & ( (\ULAopIN[1]~input_o\ & (\func[0]~input_o\ & (\func[2]~input_o\ & !\func[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[0]~input_o\,
	datac => \ALT_INV_func[2]~input_o\,
	datad => \ALT_INV_func[1]~input_o\,
	datae => \ALT_INV_func[3]~input_o\,
	dataf => \UC_ULA|ALT_INV_ULActrl~0_combout\,
	combout => \UC_ULA|ULActrl~4_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ = ( !\UC_ULA|ULActrl~4_combout\ & ( (\ULAopIN[1]~input_o\ & (\func[1]~input_o\ & (\func[3]~input_o\ & \UC_ULA|ULActrl~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \ALT_INV_func[3]~input_o\,
	datad => \UC_ULA|ALT_INV_ULActrl~3_combout\,
	datae => \UC_ULA|ALT_INV_ULActrl~4_combout\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~2_combout\ = ( !\UC_ULA|ULActrl~4_combout\ & ( (!\ULAopIN[1]~input_o\) # ((!\func[1]~input_o\) # ((!\func[3]~input_o\) # (!\UC_ULA|ULActrl~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \ALT_INV_func[3]~input_o\,
	datad => \UC_ULA|ALT_INV_ULActrl~3_combout\,
	datae => \UC_ULA|ALT_INV_ULActrl~4_combout\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~2_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~3_combout\ = ( \UC_ULA|ULActrl~4_combout\ & ( \ULAopIN[1]~input_o\ ) ) # ( !\UC_ULA|ULActrl~4_combout\ & ( (\ULAopIN[1]~input_o\ & ((!\UC_ULA|ULActrl~3_combout\) # ((!\func[1]~input_o\ & \func[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000100010101010101010101010101000001000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[1]~input_o\,
	datab => \ALT_INV_func[1]~input_o\,
	datac => \ALT_INV_func[3]~input_o\,
	datad => \UC_ULA|ALT_INV_ULActrl~3_combout\,
	datae => \UC_ULA|ALT_INV_ULActrl~4_combout\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~3_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ = ( \ULA|ULA0|MUX_ULA|saida_MUX~3_combout\ & ( (!\signalA[0]~input_o\ & (!\ULA|ULA0|MUX_ULA|saida_MUX~2_combout\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[0]~input_o\)))) # (\signalA[0]~input_o\ & 
-- ((!\ULA|ULA0|MUX_ULA|saida_MUX~2_combout\) # (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111110000100100000000000000001001111100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[0]~input_o\,
	datac => \ALT_INV_signalA[0]~input_o\,
	datad => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~2_combout\,
	datae => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~3_combout\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\);

\ULA|ULA0|MUX_ULA|saida_MUX~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_ULA|saida_MUX~5_combout\ = ( \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ ) ) # ( !\ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ ) ) # ( 
-- \ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ & ( !\ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ & ( (!\ULA|ULA30|vaiUM~combout\ $ (!\signalA[31]~input_o\ $ (!\ULA|ULA31|MUX_invertB|saida_MUX~0_combout\))) # (\ULA|ULA0|MUX_ULA|saida_MUX~0_combout\) ) ) ) # ( 
-- !\ULA|ULA0|MUX_ULA|saida_MUX~1_combout\ & ( !\ULA|ULA0|MUX_ULA|saida_MUX~4_combout\ & ( \ULA|ULA0|MUX_ULA|saida_MUX~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111100101101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[31]~input_o\,
	datac => \ULA|ULA31|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~4_combout\,
	combout => \ULA|ULA0|MUX_ULA|saida_MUX~5_combout\);

\ULA|ULA0|vaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|vaiUM~0_combout\ = (!\signalB[0]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\)) # (\signalB[0]~input_o\ & ((\signalA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110001011100010111000101110001011100010111000101110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ALT_INV_signalB[0]~input_o\,
	datac => \ALT_INV_signalA[0]~input_o\,
	combout => \ULA|ULA0|vaiUM~0_combout\);

\ULA|ULA25|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ = ( \UC_ULA|ULActrl~3_combout\ & ( \UC_ULA|ULActrl~4_combout\ & ( (!\ULAopIN[0]~input_o\ & !\ULAopIN[1]~input_o\) ) ) ) # ( !\UC_ULA|ULActrl~3_combout\ & ( \UC_ULA|ULActrl~4_combout\ & ( (!\ULAopIN[0]~input_o\ & 
-- !\ULAopIN[1]~input_o\) ) ) ) # ( \UC_ULA|ULActrl~3_combout\ & ( !\UC_ULA|ULActrl~4_combout\ & ( (!\ULAopIN[1]~input_o\) # ((!\func[3]~input_o\) # (\func[1]~input_o\)) ) ) ) # ( !\UC_ULA|ULActrl~3_combout\ & ( !\UC_ULA|ULActrl~4_combout\ & ( 
-- !\ULAopIN[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111100111110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULAopIN[0]~input_o\,
	datab => \ALT_INV_ULAopIN[1]~input_o\,
	datac => \ALT_INV_func[1]~input_o\,
	datad => \ALT_INV_func[3]~input_o\,
	datae => \UC_ULA|ALT_INV_ULActrl~3_combout\,
	dataf => \UC_ULA|ALT_INV_ULActrl~4_combout\,
	combout => \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA25|MUX_ULA|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ = (\ULAopIN[1]~input_o\ & !\ULA|ULA0|MUX_ULA|saida_MUX~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ULAopIN[1]~input_o\,
	datac => \ULA|ULA0|MUX_ULA|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\);

\ULA|ULA1|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\signalB[1]~input_o\ $ (\UC_ULA|ULActrl[2]~2_combout\)) # (\signalA[1]~input_o\) ) ) ) # ( 
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\signalA[1]~input_o\ $ (!\signalB[1]~input_o\ $ (!\UC_ULA|ULActrl[2]~2_combout\ $ (\ULA|ULA0|vaiUM~0_combout\))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & 
-- ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[1]~input_o\ & (!\signalB[1]~input_o\ $ (\UC_ULA|ULActrl[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001100101100110100111010111110101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[1]~input_o\,
	datab => \ALT_INV_signalB[1]~input_o\,
	datac => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datad => \ULA|ULA0|ALT_INV_vaiUM~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA1|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA2|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA2|MUX_invertB|saida_MUX~0_combout\) # (\signalA[2]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[2]~input_o\ & \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA1|vaiUM~combout\ $ (!\signalA[2]~input_o\ $ 
-- (!\ULA|ULA2|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[2]~input_o\,
	datac => \ULA|ULA2|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA2|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA2|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|vaiUM~combout\ = (!\ULA|ULA1|vaiUM~combout\ & ((\ULA|ULA2|MUX_invertB|saida_MUX~0_combout\) # (\signalA[2]~input_o\))) # (\ULA|ULA1|vaiUM~combout\ & (\signalA[2]~input_o\ & \ULA|ULA2|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[2]~input_o\,
	datac => \ULA|ULA2|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA2|vaiUM~combout\);

\ULA|ULA3|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA3|MUX_invertB|saida_MUX~0_combout\) # (\signalA[3]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[3]~input_o\ & \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA2|vaiUM~combout\ $ (!\signalA[3]~input_o\ $ 
-- (\ULA|ULA3|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[3]~input_o\,
	datac => \ULA|ULA3|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA3|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA3|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|vaiUM~combout\ = (!\ULA|ULA2|vaiUM~combout\ & (\signalA[3]~input_o\ & \ULA|ULA3|MUX_invertB|saida_MUX~0_combout\)) # (\ULA|ULA2|vaiUM~combout\ & ((\ULA|ULA3|MUX_invertB|saida_MUX~0_combout\) # (\signalA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[3]~input_o\,
	datac => \ULA|ULA3|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA3|vaiUM~combout\);

\ULA|ULA4|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[4]~input_o\)) # (\signalA[4]~input_o\) ) ) ) # ( 
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\UC_ULA|ULActrl[2]~2_combout\ $ (!\ULA|ULA3|vaiUM~combout\ $ (!\signalA[4]~input_o\ $ (\signalB[4]~input_o\))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[4]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101100101100110100110101111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ULA|ULA3|ALT_INV_vaiUM~combout\,
	datac => \ALT_INV_signalA[4]~input_o\,
	datad => \ALT_INV_signalB[4]~input_o\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA4|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA4|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|vaiUM~combout\ = (!\ULA|ULA4|signalvaiUM~1_combout\ & !\ULA|ULA4|signalvaiUM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA4|ALT_INV_signalvaiUM~2_combout\,
	combout => \ULA|ULA4|vaiUM~combout\);

\ULA|ULA5|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\) # (\signalA[5]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[5]~input_o\ & \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA4|vaiUM~combout\ $ (!\signalA[5]~input_o\ $ 
-- (!\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[5]~input_o\,
	datac => \ULA|ULA5|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA5|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA5|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|vaiUM~combout\ = (!\ULA|ULA4|vaiUM~combout\ & ((\ULA|ULA5|MUX_invertB|saida_MUX~0_combout\) # (\signalA[5]~input_o\))) # (\ULA|ULA4|vaiUM~combout\ & (\signalA[5]~input_o\ & \ULA|ULA5|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[5]~input_o\,
	datac => \ULA|ULA5|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA5|vaiUM~combout\);

\ULA|ULA6|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA6|MUX_invertB|saida_MUX~0_combout\) # (\signalA[6]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[6]~input_o\ & \ULA|ULA6|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA5|vaiUM~combout\ $ (!\signalA[6]~input_o\ $ 
-- (\ULA|ULA6|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[6]~input_o\,
	datac => \ULA|ULA6|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA6|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA7|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA7|MUX_invertB|saida_MUX~0_combout\) # (\signalA[7]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[7]~input_o\ & \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA6|vaiUM~combout\ $ (!\signalA[7]~input_o\ $ 
-- (!\ULA|ULA7|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA6|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[7]~input_o\,
	datac => \ULA|ULA7|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA7|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA7|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|vaiUM~combout\ = (!\ULA|ULA6|vaiUM~combout\ & ((\ULA|ULA7|MUX_invertB|saida_MUX~0_combout\) # (\signalA[7]~input_o\))) # (\ULA|ULA6|vaiUM~combout\ & (\signalA[7]~input_o\ & \ULA|ULA7|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA6|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[7]~input_o\,
	datac => \ULA|ULA7|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA7|vaiUM~combout\);

\ULA|ULA8|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA8|MUX_invertB|saida_MUX~0_combout\) # (\signalA[8]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & 
-- ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[8]~input_o\ & \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA7|vaiUM~combout\ $ (!\signalA[8]~input_o\ $ 
-- (\ULA|ULA8|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[8]~input_o\,
	datac => \ULA|ULA8|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA8|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA8|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|vaiUM~combout\ = (!\ULA|ULA7|vaiUM~combout\ & (\signalA[8]~input_o\ & \ULA|ULA8|MUX_invertB|saida_MUX~0_combout\)) # (\ULA|ULA7|vaiUM~combout\ & ((\ULA|ULA8|MUX_invertB|saida_MUX~0_combout\) # (\signalA[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[8]~input_o\,
	datac => \ULA|ULA8|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA8|vaiUM~combout\);

\ULA|ULA9|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[9]~input_o\)) # (\signalA[9]~input_o\) ) ) ) # ( 
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\UC_ULA|ULActrl[2]~2_combout\ $ (!\ULA|ULA8|vaiUM~combout\ $ (!\signalA[9]~input_o\ $ (\signalB[9]~input_o\))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[9]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101100101100110100110101111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ULA|ULA8|ALT_INV_vaiUM~combout\,
	datac => \ALT_INV_signalA[9]~input_o\,
	datad => \ALT_INV_signalB[9]~input_o\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA9|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA9|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|vaiUM~combout\ = (!\ULA|ULA9|signalvaiUM~1_combout\ & !\ULA|ULA9|signalvaiUM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA9|ALT_INV_signalvaiUM~2_combout\,
	combout => \ULA|ULA9|vaiUM~combout\);

\ULA|ULA10|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\) # (\signalA[10]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[10]~input_o\ & \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA9|vaiUM~combout\ $ (!\signalA[10]~input_o\ $ 
-- (!\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[10]~input_o\,
	datac => \ULA|ULA10|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA10|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA10|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|vaiUM~combout\ = (!\ULA|ULA9|vaiUM~combout\ & ((\ULA|ULA10|MUX_invertB|saida_MUX~0_combout\) # (\signalA[10]~input_o\))) # (\ULA|ULA9|vaiUM~combout\ & (\signalA[10]~input_o\ & \ULA|ULA10|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[10]~input_o\,
	datac => \ULA|ULA10|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA10|vaiUM~combout\);

\ULA|ULA11|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA11|MUX_invertB|saida_MUX~0_combout\) # (\signalA[11]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[11]~input_o\ & \ULA|ULA11|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA10|vaiUM~combout\ $ (!\signalA[11]~input_o\ $ 
-- (\ULA|ULA11|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[11]~input_o\,
	datac => \ULA|ULA11|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA11|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA12|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA12|MUX_invertB|saida_MUX~0_combout\) # (\signalA[12]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[12]~input_o\ & \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA11|vaiUM~combout\ $ (!\signalA[12]~input_o\ $ 
-- (!\ULA|ULA12|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA11|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[12]~input_o\,
	datac => \ULA|ULA12|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA12|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA12|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|vaiUM~combout\ = (!\ULA|ULA11|vaiUM~combout\ & ((\ULA|ULA12|MUX_invertB|saida_MUX~0_combout\) # (\signalA[12]~input_o\))) # (\ULA|ULA11|vaiUM~combout\ & (\signalA[12]~input_o\ & \ULA|ULA12|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA11|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[12]~input_o\,
	datac => \ULA|ULA12|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA12|vaiUM~combout\);

\ULA|ULA13|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA13|MUX_invertB|saida_MUX~0_combout\) # (\signalA[13]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[13]~input_o\ & \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA12|vaiUM~combout\ $ (!\signalA[13]~input_o\ $ 
-- (\ULA|ULA13|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[13]~input_o\,
	datac => \ULA|ULA13|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA13|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA13|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|vaiUM~combout\ = (!\ULA|ULA12|vaiUM~combout\ & (\signalA[13]~input_o\ & \ULA|ULA13|MUX_invertB|saida_MUX~0_combout\)) # (\ULA|ULA12|vaiUM~combout\ & ((\ULA|ULA13|MUX_invertB|saida_MUX~0_combout\) # (\signalA[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[13]~input_o\,
	datac => \ULA|ULA13|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA13|vaiUM~combout\);

\ULA|ULA14|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[14]~input_o\)) # (\signalA[14]~input_o\) ) ) ) # ( 
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\UC_ULA|ULActrl[2]~2_combout\ $ (!\ULA|ULA13|vaiUM~combout\ $ (!\signalA[14]~input_o\ $ (\signalB[14]~input_o\))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ 
-- & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[14]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101100101100110100110101111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ULA|ULA13|ALT_INV_vaiUM~combout\,
	datac => \ALT_INV_signalA[14]~input_o\,
	datad => \ALT_INV_signalB[14]~input_o\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA14|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA14|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|vaiUM~combout\ = (!\ULA|ULA14|signalvaiUM~1_combout\ & !\ULA|ULA14|signalvaiUM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA14|ALT_INV_signalvaiUM~2_combout\,
	combout => \ULA|ULA14|vaiUM~combout\);

\ULA|ULA15|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\) # (\signalA[15]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[15]~input_o\ & \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA14|vaiUM~combout\ $ (!\signalA[15]~input_o\ $ 
-- (!\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[15]~input_o\,
	datac => \ULA|ULA15|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA15|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA15|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|vaiUM~combout\ = (!\ULA|ULA14|vaiUM~combout\ & ((\ULA|ULA15|MUX_invertB|saida_MUX~0_combout\) # (\signalA[15]~input_o\))) # (\ULA|ULA14|vaiUM~combout\ & (\signalA[15]~input_o\ & \ULA|ULA15|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[15]~input_o\,
	datac => \ULA|ULA15|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA15|vaiUM~combout\);

\ULA|ULA16|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA16|MUX_invertB|saida_MUX~0_combout\) # (\signalA[16]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[16]~input_o\ & \ULA|ULA16|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA15|vaiUM~combout\ $ (!\signalA[16]~input_o\ $ 
-- (\ULA|ULA16|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[16]~input_o\,
	datac => \ULA|ULA16|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA16|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA17|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA17|MUX_invertB|saida_MUX~0_combout\) # (\signalA[17]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[17]~input_o\ & \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA16|vaiUM~combout\ $ (!\signalA[17]~input_o\ $ 
-- (!\ULA|ULA17|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[17]~input_o\,
	datac => \ULA|ULA17|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA17|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA17|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|vaiUM~combout\ = (!\ULA|ULA16|vaiUM~combout\ & ((\ULA|ULA17|MUX_invertB|saida_MUX~0_combout\) # (\signalA[17]~input_o\))) # (\ULA|ULA16|vaiUM~combout\ & (\signalA[17]~input_o\ & \ULA|ULA17|MUX_invertB|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA16|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[17]~input_o\,
	datac => \ULA|ULA17|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA17|vaiUM~combout\);

\ULA|ULA18|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA18|MUX_invertB|saida_MUX~0_combout\) # (\signalA[18]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[18]~input_o\ & \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA17|vaiUM~combout\ $ (!\signalA[18]~input_o\ $ 
-- (\ULA|ULA18|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[18]~input_o\,
	datac => \ULA|ULA18|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA18|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA18|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|vaiUM~combout\ = (!\ULA|ULA17|vaiUM~combout\ & (\signalA[18]~input_o\ & \ULA|ULA18|MUX_invertB|saida_MUX~0_combout\)) # (\ULA|ULA17|vaiUM~combout\ & ((\ULA|ULA18|MUX_invertB|saida_MUX~0_combout\) # (\signalA[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[18]~input_o\,
	datac => \ULA|ULA18|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA18|vaiUM~combout\);

\ULA|ULA19|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[19]~input_o\)) # (\signalA[19]~input_o\) ) ) ) # ( 
-- \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\UC_ULA|ULActrl[2]~2_combout\ $ (!\ULA|ULA18|vaiUM~combout\ $ (!\signalA[19]~input_o\ $ (\signalB[19]~input_o\))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ 
-- & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[19]~input_o\ & (!\UC_ULA|ULActrl[2]~2_combout\ $ (\signalB[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101100101100110100110101111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UC_ULA|ALT_INV_ULActrl[2]~2_combout\,
	datab => \ULA|ULA18|ALT_INV_vaiUM~combout\,
	datac => \ALT_INV_signalA[19]~input_o\,
	datad => \ALT_INV_signalB[19]~input_o\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA19|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA20|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\) # (\signalA[20]~input_o\) ) ) ) # ( \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ 
-- & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\signalA[20]~input_o\ $ (!\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\ $ (((\ULA|ULA19|signalvaiUM~2_combout\) # (\ULA|ULA19|signalvaiUM~1_combout\)))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[20]~input_o\ & \ULA|ULA20|MUX_invertB|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111011110001000011100001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA19|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[20]~input_o\,
	datad => \ULA|ULA20|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA20|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA20|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|vaiUM~combout\ = (!\signalA[20]~input_o\ & ((!\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA19|signalvaiUM~1_combout\ & !\ULA|ULA19|signalvaiUM~2_combout\)))) # (\signalA[20]~input_o\ & (!\ULA|ULA19|signalvaiUM~1_combout\ & 
-- (!\ULA|ULA19|signalvaiUM~2_combout\ & !\ULA|ULA20|MUX_invertB|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA19|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[20]~input_o\,
	datad => \ULA|ULA20|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA20|vaiUM~combout\);

\ULA|ULA21|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA21|MUX_invertB|saida_MUX~0_combout\) # (\signalA[21]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[21]~input_o\ & \ULA|ULA21|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA20|vaiUM~combout\ $ (!\signalA[21]~input_o\ $ 
-- (!\ULA|ULA21|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[21]~input_o\,
	datac => \ULA|ULA21|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA21|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA22|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\) # (\signalA[22]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[22]~input_o\ & \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA21|vaiUM~combout\ $ (!\signalA[22]~input_o\ $ 
-- (!\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[22]~input_o\,
	datac => \ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA22|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA23|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|signalvaiUM~0_combout\ = !\signalA[23]~input_o\ $ (!\ULA|ULA23|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[23]~input_o\,
	datab => \ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|signalvaiUM~0_combout\);

\ULA|ULA1|MUX_ULA|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ = (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\);

\ULA|ULA23|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\ = (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((!\signalA[23]~input_o\ & (\ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ & \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\)) # (\signalA[23]~input_o\ & 
-- ((\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\) # (\ULA|ULA23|MUX_invertB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000100000111000000010000011100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[23]~input_o\,
	datab => \ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA23|MUX_ULA|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_ULA|saida_MUX~1_combout\ = ( \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA23|MUX_ULA|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( !\ULA|ULA23|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA23|signalvaiUM~0_combout\ $ (((!\ULA|ULA21|vaiUM~combout\ & (!\signalA[22]~input_o\ & !\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\)) # 
-- (\ULA|ULA21|vaiUM~combout\ & ((!\signalA[22]~input_o\) # (!\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[22]~input_o\,
	datac => \ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA23|ALT_INV_signalvaiUM~0_combout\,
	datae => \ULA|ULA1|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA23|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|MUX_ULA|saida_MUX~1_combout\);

\ULA|ULA23|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|vaiUM~combout\ = ( \ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ & ( ((!\ULA|ULA21|vaiUM~combout\ & ((\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\) # (\signalA[22]~input_o\))) # (\ULA|ULA21|vaiUM~combout\ & (\signalA[22]~input_o\ & 
-- \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[23]~input_o\) ) ) # ( !\ULA|ULA23|MUX_invertB|saida_MUX~0_combout\ & ( (\signalA[23]~input_o\ & ((!\ULA|ULA21|vaiUM~combout\ & ((\ULA|ULA22|MUX_invertB|saida_MUX~0_combout\) # 
-- (\signalA[22]~input_o\))) # (\ULA|ULA21|vaiUM~combout\ & (\signalA[22]~input_o\ & \ULA|ULA22|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA21|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[22]~input_o\,
	datac => \ULA|ULA22|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[23]~input_o\,
	datae => \ULA|ULA23|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|vaiUM~combout\);

\ULA|ULA24|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA24|MUX_invertB|saida_MUX~0_combout\) # (\signalA[24]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[24]~input_o\ & \ULA|ULA24|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA23|vaiUM~combout\ $ (!\signalA[24]~input_o\ $ 
-- (\ULA|ULA24|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[24]~input_o\,
	datac => \ULA|ULA24|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA24|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA25|MUX_ULA|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_ULA|saida_MUX~2_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\) # (\signalA[25]~input_o\) ) ) ) # ( \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ 
-- & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\signalA[25]~input_o\ $ (!\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\ $ (((\ULA|ULA24|signalvaiUM~2_combout\) # (\ULA|ULA24|signalvaiUM~1_combout\)))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[25]~input_o\ & \ULA|ULA25|MUX_invertB|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111011110001000011100001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA24|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[25]~input_o\,
	datad => \ULA|ULA25|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA25|MUX_ULA|saida_MUX~2_combout\);

\ULA|ULA25|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|vaiUM~combout\ = (!\signalA[25]~input_o\ & ((!\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\) # ((!\ULA|ULA24|signalvaiUM~1_combout\ & !\ULA|ULA24|signalvaiUM~2_combout\)))) # (\signalA[25]~input_o\ & (!\ULA|ULA24|signalvaiUM~1_combout\ & 
-- (!\ULA|ULA24|signalvaiUM~2_combout\ & !\ULA|ULA25|MUX_invertB|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA24|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[25]~input_o\,
	datad => \ULA|ULA25|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA25|vaiUM~combout\);

\ULA|ULA26|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA26|MUX_invertB|saida_MUX~0_combout\) # (\signalA[26]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[26]~input_o\ & \ULA|ULA26|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA25|vaiUM~combout\ $ (!\signalA[26]~input_o\ $ 
-- (!\ULA|ULA26|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[26]~input_o\,
	datac => \ULA|ULA26|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA26|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA27|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\) # (\signalA[27]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[27]~input_o\ & \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA26|vaiUM~combout\ $ (!\signalA[27]~input_o\ $ 
-- (!\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[27]~input_o\,
	datac => \ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA27|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA28|signalvaiUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|signalvaiUM~0_combout\ = !\signalA[28]~input_o\ $ (!\ULA|ULA28|MUX_invertB|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[28]~input_o\,
	datab => \ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|signalvaiUM~0_combout\);

\ULA|ULA28|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\ = (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((!\signalA[28]~input_o\ & (\ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ & \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\)) # (\signalA[28]~input_o\ & 
-- ((\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\) # (\ULA|ULA28|MUX_invertB|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000100000111000000010000011100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_signalA[28]~input_o\,
	datab => \ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA28|MUX_ULA|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_ULA|saida_MUX~1_combout\ = ( \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( \ULA|ULA28|MUX_ULA|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA1|MUX_ULA|saida_MUX~1_combout\ & ( !\ULA|ULA28|MUX_ULA|saida_MUX~0_combout\ & ( !\ULA|ULA28|signalvaiUM~0_combout\ $ (((!\ULA|ULA26|vaiUM~combout\ & (!\signalA[27]~input_o\ & !\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\)) # 
-- (\ULA|ULA26|vaiUM~combout\ & ((!\signalA[27]~input_o\) # (!\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[27]~input_o\,
	datac => \ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA28|ALT_INV_signalvaiUM~0_combout\,
	datae => \ULA|ULA1|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA28|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|MUX_ULA|saida_MUX~1_combout\);

\ULA|ULA28|vaiUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|vaiUM~combout\ = ( \ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ & ( ((!\ULA|ULA26|vaiUM~combout\ & ((\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\) # (\signalA[27]~input_o\))) # (\ULA|ULA26|vaiUM~combout\ & (\signalA[27]~input_o\ & 
-- \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\))) # (\signalA[28]~input_o\) ) ) # ( !\ULA|ULA28|MUX_invertB|saida_MUX~0_combout\ & ( (\signalA[28]~input_o\ & ((!\ULA|ULA26|vaiUM~combout\ & ((\ULA|ULA27|MUX_invertB|saida_MUX~0_combout\) # 
-- (\signalA[27]~input_o\))) # (\ULA|ULA26|vaiUM~combout\ & (\signalA[27]~input_o\ & \ULA|ULA27|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA26|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[27]~input_o\,
	datac => \ULA|ULA27|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_signalA[28]~input_o\,
	datae => \ULA|ULA28|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|vaiUM~combout\);

\ULA|ULA29|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA29|MUX_invertB|saida_MUX~0_combout\) # (\signalA[29]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[29]~input_o\ & \ULA|ULA29|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA28|vaiUM~combout\ $ (!\signalA[29]~input_o\ $ 
-- (\ULA|ULA29|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001111110000000000000011011010010011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[29]~input_o\,
	datac => \ULA|ULA29|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA29|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA30|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_ULA|saida_MUX~0_combout\ = ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\) # (\signalA[30]~input_o\) ) ) ) # ( \ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ 
-- & ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( !\signalA[30]~input_o\ $ (!\ULA|ULA30|MUX_invertB|saida_MUX~0_combout\ $ (((\ULA|ULA29|signalvaiUM~2_combout\) # (\ULA|ULA29|signalvaiUM~1_combout\)))) ) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ( 
-- !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (\signalA[30]~input_o\ & \ULA|ULA30|MUX_invertB|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111011110001000011100001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA29|ALT_INV_signalvaiUM~1_combout\,
	datab => \ULA|ULA29|ALT_INV_signalvaiUM~2_combout\,
	datac => \ALT_INV_signalA[30]~input_o\,
	datad => \ULA|ULA30|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA30|MUX_ULA|saida_MUX~0_combout\);

\ULA|ULA31|MUX_ULA|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|MUX_ULA|saida_MUX~0_combout\ = ( \ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & ((\ULA|ULA31|MUX_invertB|saida_MUX~0_combout\) # (\signalA[31]~input_o\))) ) ) # ( !\ULA|ULA25|MUX_ULA|saida_MUX~1_combout\ 
-- & ( (!\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (((\signalA[31]~input_o\ & \ULA|ULA31|MUX_invertB|saida_MUX~0_combout\)))) # (\ULA|ULA25|MUX_ULA|saida_MUX~0_combout\ & (!\ULA|ULA30|vaiUM~combout\ $ (!\signalA[31]~input_o\ $ 
-- (!\ULA|ULA31|MUX_invertB|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110010110001111110000000000000011100101100011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|ALT_INV_vaiUM~combout\,
	datab => \ALT_INV_signalA[31]~input_o\,
	datac => \ULA|ULA31|MUX_invertB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA25|MUX_ULA|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA31|MUX_ULA|saida_MUX~0_combout\);

ww_overflow <= \overflow~output_o\;

ww_resultado(0) <= \resultado[0]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;

ww_resultado(8) <= \resultado[8]~output_o\;

ww_resultado(9) <= \resultado[9]~output_o\;

ww_resultado(10) <= \resultado[10]~output_o\;

ww_resultado(11) <= \resultado[11]~output_o\;

ww_resultado(12) <= \resultado[12]~output_o\;

ww_resultado(13) <= \resultado[13]~output_o\;

ww_resultado(14) <= \resultado[14]~output_o\;

ww_resultado(15) <= \resultado[15]~output_o\;

ww_resultado(16) <= \resultado[16]~output_o\;

ww_resultado(17) <= \resultado[17]~output_o\;

ww_resultado(18) <= \resultado[18]~output_o\;

ww_resultado(19) <= \resultado[19]~output_o\;

ww_resultado(20) <= \resultado[20]~output_o\;

ww_resultado(21) <= \resultado[21]~output_o\;

ww_resultado(22) <= \resultado[22]~output_o\;

ww_resultado(23) <= \resultado[23]~output_o\;

ww_resultado(24) <= \resultado[24]~output_o\;

ww_resultado(25) <= \resultado[25]~output_o\;

ww_resultado(26) <= \resultado[26]~output_o\;

ww_resultado(27) <= \resultado[27]~output_o\;

ww_resultado(28) <= \resultado[28]~output_o\;

ww_resultado(29) <= \resultado[29]~output_o\;

ww_resultado(30) <= \resultado[30]~output_o\;

ww_resultado(31) <= \resultado[31]~output_o\;
END structure;


