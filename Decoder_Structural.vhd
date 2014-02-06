----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:35 02/06/2014 
-- Design Name: 
-- Module Name:    Decoder_Structural - Structural 
-- Project Name: 
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

entity Decoder_Structural is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decoder_Structural;

architecture Structural of Decoder_Structural is

	Component and3
	Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
	End Component;
	
	Component inverter
	Port ( I : in  STD_LOGIC;
           O : out  STD_LOGIC);
	End Component;

	signal I0_NOT, I1_NOT : STD_LOGIC;

begin

	I0_inverter: inverter Port Map(
		I => I0,
		O => I0_NOT
	);
	
	I1_inverter: inverter Port Map(
		I => I1,
		O => I1_NOT
	);
		
	Y0_and3: and3 Port Map(
		I0 => I0_NOT,
		I1 => I1_Not,
		I2 => EN,
		O => Y0
	);
	
	Y1_and3: and3 Port Map(
		I0 => I0,
		I1 => I1_Not,
		I2 => EN,
		O => Y1
	);
	
	Y2_and3: and3 Port Map(
		I0 => I0_NOT,
		I1 => I1,
		I2 => EN,
		O => Y2
	);
	
	Y3_and3: and3 Port Map(
		I0 => I0,
		I1 => I1,
		I2 => EN,
		O => Y3
	);

end Structural;

