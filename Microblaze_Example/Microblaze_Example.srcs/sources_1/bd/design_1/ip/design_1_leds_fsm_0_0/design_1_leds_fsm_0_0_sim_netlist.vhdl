-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Oct 16 18:06:25 2022
-- Host        : DESKTOP-MMA4JA0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/IsaiahOdunze/Microblaze_Example/Microblaze_Example.srcs/sources_1/bd/design_1/ip/design_1_leds_fsm_0_0/design_1_leds_fsm_0_0_sim_netlist.vhdl
-- Design      : design_1_leds_fsm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_leds_fsm_0_0_leds_fsm is
  port (
    en_led : out STD_LOGIC;
    led_en : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clock : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_leds_fsm_0_0_leds_fsm : entity is "leds_fsm";
end design_1_leds_fsm_0_0_leds_fsm;

architecture STRUCTURE of design_1_leds_fsm_0_0_leds_fsm is
  signal current_state : STD_LOGIC;
  signal \led_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_en[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_en[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_en[2]_i_1\ : label is "soft_lutpair0";
begin
current_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => enable,
      Q => current_state,
      R => '0'
    );
en_led_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => current_state,
      Q => en_led,
      R => '0'
    );
\led_en[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(0),
      I1 => current_state,
      O => \led_en[0]_i_1_n_0\
    );
\led_en[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(1),
      I1 => current_state,
      O => \led_en[1]_i_1_n_0\
    );
\led_en[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sw_in(2),
      I1 => current_state,
      O => \led_en[2]_i_1_n_0\
    );
\led_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \led_en[0]_i_1_n_0\,
      Q => led_en(0),
      R => '0'
    );
\led_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \led_en[1]_i_1_n_0\,
      Q => led_en(1),
      R => '0'
    );
\led_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \led_en[2]_i_1_n_0\,
      Q => led_en(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_leds_fsm_0_0 is
  port (
    clock : in STD_LOGIC;
    enable : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en_led : out STD_LOGIC;
    led_en : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_leds_fsm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_leds_fsm_0_0 : entity is "design_1_leds_fsm_0_0,leds_fsm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_leds_fsm_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_leds_fsm_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_leds_fsm_0_0 : entity is "leds_fsm,Vivado 2020.1";
end design_1_leds_fsm_0_0;

architecture STRUCTURE of design_1_leds_fsm_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_sys_clock, INSERT_VIP 0";
begin
U0: entity work.design_1_leds_fsm_0_0_leds_fsm
     port map (
      clock => clock,
      en_led => en_led,
      enable => enable,
      led_en(2 downto 0) => led_en(2 downto 0),
      sw_in(2 downto 0) => sw_in(2 downto 0)
    );
end STRUCTURE;
