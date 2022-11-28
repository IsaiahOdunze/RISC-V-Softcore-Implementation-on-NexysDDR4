----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2022 03:07:54 PM
-- Design Name: 
-- Module Name: led_fsm - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_fsm is
    Port ( clock : in STD_LOGIC;
           enable : in STD_LOGIC;
           sw_in : in STD_LOGIC_VECTOR (2 downto 0);
           en_led : out STD_LOGIC;
           led_en : out STD_LOGIC);
end led_fsm;

architecture Behavioral of led_fsm is

begin


end Behavioral;
