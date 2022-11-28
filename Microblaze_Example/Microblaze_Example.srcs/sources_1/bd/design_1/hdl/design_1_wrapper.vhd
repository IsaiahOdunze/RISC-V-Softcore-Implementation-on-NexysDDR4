--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sun Oct 16 18:05:08 2022
--Host        : DESKTOP-MMA4JA0 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    ddr2_sdram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_sdram_cas_n : out STD_LOGIC;
    ddr2_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ras_n : out STD_LOGIC;
    ddr2_sdram_we_n : out STD_LOGIC;
    en_led_0 : out STD_LOGIC;
    enable_0 : in STD_LOGIC;
    led_en_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    ddr2_sdram_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    ddr2_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    ddr2_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr2_sdram_ras_n : out STD_LOGIC;
    ddr2_sdram_cas_n : out STD_LOGIC;
    ddr2_sdram_we_n : out STD_LOGIC;
    ddr2_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr2_sdram_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ddr2_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    en_led_0 : out STD_LOGIC;
    led_en_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    enable_0 : in STD_LOGIC;
    sw_in_0 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      ddr2_sdram_addr(12 downto 0) => ddr2_sdram_addr(12 downto 0),
      ddr2_sdram_ba(2 downto 0) => ddr2_sdram_ba(2 downto 0),
      ddr2_sdram_cas_n => ddr2_sdram_cas_n,
      ddr2_sdram_ck_n(0) => ddr2_sdram_ck_n(0),
      ddr2_sdram_ck_p(0) => ddr2_sdram_ck_p(0),
      ddr2_sdram_cke(0) => ddr2_sdram_cke(0),
      ddr2_sdram_cs_n(0) => ddr2_sdram_cs_n(0),
      ddr2_sdram_dm(1 downto 0) => ddr2_sdram_dm(1 downto 0),
      ddr2_sdram_dq(15 downto 0) => ddr2_sdram_dq(15 downto 0),
      ddr2_sdram_dqs_n(1 downto 0) => ddr2_sdram_dqs_n(1 downto 0),
      ddr2_sdram_dqs_p(1 downto 0) => ddr2_sdram_dqs_p(1 downto 0),
      ddr2_sdram_odt(0) => ddr2_sdram_odt(0),
      ddr2_sdram_ras_n => ddr2_sdram_ras_n,
      ddr2_sdram_we_n => ddr2_sdram_we_n,
      en_led_0 => en_led_0,
      enable_0 => enable_0,
      led_en_0(2 downto 0) => led_en_0(2 downto 0),
      reset => reset,
      sw_in_0(2 downto 0) => sw_in_0(2 downto 0),
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
