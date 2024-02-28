----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.02.2024 15:31:56
-- Design Name: 
-- Module Name: SWITCH_LED - Behavioral
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

entity SWITCH_LED is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           S3 : in STD_LOGIC;
           S4 : in STD_LOGIC;
           S5 : in STD_LOGIC;
           S6 : in STD_LOGIC;
           S7 : in STD_LOGIC;
           S8 : in STD_LOGIC;
           S9 : in STD_LOGIC;
           S10 : in STD_LOGIC;
           S11 : in STD_LOGIC;
           S12 : in STD_LOGIC;
           S13 : in STD_LOGIC;
           S14 : in STD_LOGIC;
           S15 : in STD_LOGIC;
           LED0 : out STD_LOGIC;
           LED1 : out STD_LOGIC;
           LED2 : out STD_LOGIC;
           LED3 : out STD_LOGIC;
           LED4 : out STD_LOGIC;
           LED5 : out STD_LOGIC;
           LED6 : out STD_LOGIC;
           LED7 : out STD_LOGIC;
           LED8 : out STD_LOGIC;
           LED9 : out STD_LOGIC;
           LED10 : out STD_LOGIC;
           LED11 : out STD_LOGIC;
           LED12 : out STD_LOGIC;
           LED13 : out STD_LOGIC;
           LED14 : out STD_LOGIC;
           LED15 : out STD_LOGIC);
end SWITCH_LED;

architecture Behavioral of SWITCH_LED is

begin

LED0<=S0;
LED1<=S1;
LED2<=S2;
LED3<=S3;
LED4<=S4;
LED5<=S5;
LED6<=S6;
LED7<=S7;
LED8<=S8;
LED9<=S9;
LED10<=S10;
LED11<=S11;
LED12<=S12;
LED13<=S13;
LED14<=S14;
LED15<=S15;



end Behavioral;
