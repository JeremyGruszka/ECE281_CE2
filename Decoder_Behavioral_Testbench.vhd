--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:08:00 02/06/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Jeremy.Gruszka/Documents/ECE/281/CE2/SelfCheckingTestBench.vhd
-- Project Name:  CE2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_Structural
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Decoder_Behavioral_Testbench IS
END Decoder_Behavioral_Testbench;
 
ARCHITECTURE sim OF Decoder_Behavioral_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_Behavioral
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    signal I0, I1, EN, Y0, Y1, Y2, Y3: STD_LOGIC;
 
BEGIN
 
	--dut: Decoder_Structural port map (I0, I1, EN, Y0, Y1, Y2, Y3);
	-- Instantiate the Unit Under Test (UUT)
   dut: Decoder_Behavioral PORT MAP (
          I0 => I0,
          I1 => I1,
          EN => EN,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );
		  
	process begin
		I0 <= '0'; I1 <= '0'; EN <= '0'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 000 failed.";
		  assert Y1 = '0' report "Y0 000 failed.";
		  assert Y2 = '0' report "Y0 000 failed.";
		  assert Y3 = '0' report "Y0 000 failed.";
		
		I0 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 001 failed.";
		  assert Y1 = '0' report "Y0 001 failed.";
		  assert Y2 = '0' report "Y0 001 failed.";
		  assert Y3 = '0' report "Y0 001 failed.";
		  
		I0 <= '0'; I1 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 010 failed.";
		  assert Y1 = '0' report "Y0 010 failed.";
		  assert Y2 = '0' report "Y0 010 failed.";
		  assert Y3 = '0' report "Y0 010 failed.";
		  
		I0 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 011 failed.";
		  assert Y1 = '0' report "Y0 011 failed.";
		  assert Y2 = '0' report "Y0 011 failed.";
		  assert Y3 = '0' report "Y0 011 failed.";
		  
		I0 <= '0'; I1 <= '0'; EN <= '1'; wait for 100 ns;
		  assert Y0 = '1' report "Y0 100 failed.";
		  assert Y1 = '0' report "Y0 100 failed.";
		  assert Y2 = '0' report "Y0 100 failed.";
		  assert Y3 = '0' report "Y0 100 failed.";
		  
		I0 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 101 failed.";
		  assert Y1 = '1' report "Y0 101 failed.";
		  assert Y2 = '0' report "Y0 101 failed.";
		  assert Y3 = '0' report "Y0 101 failed.";
		  
		I0 <= '0'; I1 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 110 failed.";
		  assert Y1 = '0' report "Y0 110 failed.";
		  assert Y2 = '1' report "Y0 110 failed.";
		  assert Y3 = '0' report "Y0 110 failed.";
		  
		I0 <= '1'; wait for 100 ns;
		  assert Y0 = '0' report "Y0 111 failed.";
		  assert Y1 = '0' report "Y0 111 failed.";
		  assert Y2 = '0' report "Y0 111 failed.";
		  assert Y3 = '1' report "Y0 111 failed.";
		  
	end process;

END;
