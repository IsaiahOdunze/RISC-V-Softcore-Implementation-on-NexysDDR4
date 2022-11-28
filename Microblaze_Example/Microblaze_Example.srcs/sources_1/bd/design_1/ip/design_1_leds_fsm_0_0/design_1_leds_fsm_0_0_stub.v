// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Oct 16 18:06:25 2022
// Host        : DESKTOP-MMA4JA0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/IsaiahOdunze/Microblaze_Example/Microblaze_Example.srcs/sources_1/bd/design_1/ip/design_1_leds_fsm_0_0/design_1_leds_fsm_0_0_stub.v
// Design      : design_1_leds_fsm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "leds_fsm,Vivado 2020.1" *)
module design_1_leds_fsm_0_0(clock, enable, sw_in, en_led, led_en)
/* synthesis syn_black_box black_box_pad_pin="clock,enable,sw_in[2:0],en_led,led_en[2:0]" */;
  input clock;
  input enable;
  input [2:0]sw_in;
  output en_led;
  output [2:0]led_en;
endmodule
