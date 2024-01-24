-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/23/2024 14:59:42"
                                                             
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
SIGNAL CE1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CE2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CE3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL CUATROFP11 : STD_LOGIC;
SIGNAL CUATROFP12 : STD_LOGIC;
SIGNAL CUATROFP21 : STD_LOGIC;
SIGNAL CUATROFP22 : STD_LOGIC;
SIGNAL CUATROFP31 : STD_LOGIC;
SIGNAL CUATROFP32 : STD_LOGIC;
SIGNAL DOSFP1 : STD_LOGIC;
SIGNAL DOSFP2 : STD_LOGIC;
SIGNAL DOSFP3 : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL SL1 : STD_LOGIC;
SIGNAL SL2 : STD_LOGIC;
SIGNAL SP1 : STD_LOGIC;
SIGNAL SP2 : STD_LOGIC;
SIGNAL SP3 : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT ESQUEMATICO
	PORT (
	CE1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CE2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	CE3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Clock : IN STD_LOGIC;
	CUATROFP11 : OUT STD_LOGIC;
	CUATROFP12 : OUT STD_LOGIC;
	CUATROFP21 : OUT STD_LOGIC;
	CUATROFP22 : OUT STD_LOGIC;
	CUATROFP31 : OUT STD_LOGIC;
	CUATROFP32 : OUT STD_LOGIC;
	DOSFP1 : OUT STD_LOGIC;
	DOSFP2 : OUT STD_LOGIC;
	DOSFP3 : OUT STD_LOGIC;
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
	CE1 => CE1,
	CE2 => CE2,
	CE3 => CE3,
	Clock => Clock,
	CUATROFP11 => CUATROFP11,
	CUATROFP12 => CUATROFP12,
	CUATROFP21 => CUATROFP21,
	CUATROFP22 => CUATROFP22,
	CUATROFP31 => CUATROFP31,
	CUATROFP32 => CUATROFP32,
	DOSFP1 => DOSFP1,
	DOSFP2 => DOSFP2,
	DOSFP3 => DOSFP3,
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
LOOP
	Clock <= '0';
	WAIT FOR 5000 ps;
	Clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 20000 ps;
	Reset <= '1';
	WAIT FOR 30000 ps;
	Reset <= '0';
	WAIT FOR 720000 ps;
	Reset <= '1';
	WAIT FOR 30000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- SL1
t_prcs_SL1: PROCESS
BEGIN
	SL1 <= '0';
	WAIT FOR 90000 ps;
	SL1 <= '1';
	WAIT FOR 290000 ps;
	SL1 <= '0';
WAIT;
END PROCESS t_prcs_SL1;

-- SL2
t_prcs_SL2: PROCESS
BEGIN
	SL2 <= '0';
	WAIT FOR 90000 ps;
	SL2 <= '1';
	WAIT FOR 70000 ps;
	SL2 <= '0';
	WAIT FOR 380000 ps;
	SL2 <= '1';
	WAIT FOR 110000 ps;
	SL2 <= '0';
WAIT;
END PROCESS t_prcs_SL2;

-- SP1
t_prcs_SP1: PROCESS
BEGIN
	SP1 <= '0';
	WAIT FOR 90000 ps;
	SP1 <= '1';
	WAIT FOR 60000 ps;
	SP1 <= '0';
WAIT;
END PROCESS t_prcs_SP1;

-- SP2
t_prcs_SP2: PROCESS
BEGIN
	SP2 <= '0';
	WAIT FOR 360000 ps;
	SP2 <= '1';
	WAIT FOR 190000 ps;
	SP2 <= '0';
WAIT;
END PROCESS t_prcs_SP2;

-- SP3
t_prcs_SP3: PROCESS
BEGIN
	SP3 <= '0';
	WAIT FOR 610000 ps;
	SP3 <= '1';
	WAIT FOR 90000 ps;
	SP3 <= '0';
WAIT;
END PROCESS t_prcs_SP3;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 60000 ps;
	Start <= '1';
	WAIT FOR 30000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;
END ESQUEMATICO_arch;
