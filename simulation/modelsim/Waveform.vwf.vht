-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/22/2024 10:15:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ESQUEMATICO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ESQUEMATICO_vhd_vec_tst IS
END ESQUEMATICO_vhd_vec_tst;
ARCHITECTURE ESQUEMATICO_arch OF ESQUEMATICO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL 2FP1 : STD_LOGIC;
SIGNAL 2FP2 : STD_LOGIC;
SIGNAL 2FP3 : STD_LOGIC;
SIGNAL 4FP1 : STD_LOGIC;
SIGNAL 4FP2 : STD_LOGIC;
SIGNAL 4FP3 : STD_LOGIC;
SIGNAL CE1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CE2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CE3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL SL1 : STD_LOGIC;
SIGNAL SL2 : STD_LOGIC;
SIGNAL SP1 : STD_LOGIC;
SIGNAL SP2 : STD_LOGIC;
SIGNAL SP3 : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT ESQUEMATICO
	PORT (
	\2FP1\ : OUT STD_LOGIC;
	\2FP2\ : OUT STD_LOGIC;
	\2FP3\ : OUT STD_LOGIC;
	\4FP1\ : OUT STD_LOGIC;
	\4FP2\ : OUT STD_LOGIC;
	\4FP3\ : OUT STD_LOGIC;
	CE1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CE2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CE3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Clock : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	SL1 : IN STD_LOGIC;
	SL2 : IN STD_LOGIC;
	SP1 : IN STD_LOGIC;
	SP2 : IN STD_LOGIC;
	SP3 : IN STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ESQUEMATICO
	PORT MAP (
-- list connections between master ports and signals
	\2FP1\ => 2FP1,
	\2FP2\ => 2FP2,
	\2FP3\ => 2FP3,
	\4FP1\ => 4FP1,
	\4FP2\ => 4FP2,
	\4FP3\ => 4FP3,
	CE1 => CE1,
	CE2 => CE2,
	CE3 => CE3,
	Clock => Clock,
	Reset => Reset,
	SL1 => SL1,
	SL2 => SL2,
	SP1 => SP1,
	SP2 => SP2,
	SP3 => SP3,
	Start => Start
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
	Clock <= '0';
WAIT;
END PROCESS t_prcs_Clock;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- SL1
t_prcs_SL1: PROCESS
BEGIN
	SL1 <= '0';
WAIT;
END PROCESS t_prcs_SL1;

-- SL2
t_prcs_SL2: PROCESS
BEGIN
	SL2 <= '0';
WAIT;
END PROCESS t_prcs_SL2;

-- SP1
t_prcs_SP1: PROCESS
BEGIN
	SP1 <= '0';
WAIT;
END PROCESS t_prcs_SP1;

-- SP2
t_prcs_SP2: PROCESS
BEGIN
	SP2 <= '0';
WAIT;
END PROCESS t_prcs_SP2;

-- SP3
t_prcs_SP3: PROCESS
BEGIN
	SP3 <= '0';
WAIT;
END PROCESS t_prcs_SP3;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;
END ESQUEMATICO_arch;
