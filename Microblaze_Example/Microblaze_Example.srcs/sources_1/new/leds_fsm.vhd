----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2022 03:20:18 PM
-- Design Name: 
-- Module Name: leds_fsm - Behavioral
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

entity leds_fsm is
    Port ( clock : in STD_LOGIC;
           enable : in STD_LOGIC;
           sw_in : in STD_LOGIC_VECTOR (2 downto 0);
           en_led : out STD_LOGIC;
           led_en : out STD_LOGIC_VECTOR (2 downto 0));
end leds_fsm;

architecture Behavioral of leds_fsm is
    type fsm is (idle, en);
    signal current_state : fsm := idle;    
begin
    fsm_proc : process(clock)
    begin
        if rising_edge(clock) then
            case current_state is
                when idle =>
                    en_led <= '0';
                    led_en <= (others=>'0');
                    if enable = '1' then
                        current_state <= en;
                    end if;
                when en =>
                    en_led <= '1';
                    led_en <= sw_in;
                    if enable = '0' then
                        current_state <= idle;
                    end if;
            end case;
        end if;
    end process;

end Behavioral;
