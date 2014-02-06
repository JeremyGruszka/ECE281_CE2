----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jeremy Gruszka
-- 
-- Create Date:    10:22:16 02/06/2014 
-- Design Name: CE2
-- Module Name:    inverter - Behavioral 
-- Project Name: CE2
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inverter is
    Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC);
end inverter;

architecture Behavioral of inverter is


begin

O <= not I;

end Behavioral;

