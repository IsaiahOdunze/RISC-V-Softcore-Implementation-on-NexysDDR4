-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Oct 16 18:06:25 2022
-- Host        : DESKTOP-MMA4JA0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/IsaiahOdunze/Microblaze_Example/Microblaze_Example.srcs/sources_1/bd/design_1/ip/design_1_leds_fsm_0_0/design_1_leds_fsm_0_0_stub.vhdl
-- Design      : design_1_leds_fsm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_leds_fsm_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    enable : in STD_LOGIC;
    sw_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en_led : out STD_LOGIC;
    led_en : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end design_1_leds_fsm_0_0;

architecture stub of design_1_leds_fsm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,enable,sw_in[2:0],en_led,led_en[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "leds_fsm,Vivado 2020.1";
begin
end;
