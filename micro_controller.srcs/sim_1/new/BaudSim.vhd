----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2018 04:38:11 PM
-- Design Name: 
-- Module Name: BaudSim - Behavioral
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

entity BaudSim is
--  Port ( );
end BaudSim;

architecture Behavioral of BaudSim is
signal clk,rst,s_tick: std_logic;



begin
e0: entity work.baud_Gen (Behavioral)
      generic map (N=>4, M=>10)
      port map (clk=>clk,reset=>rst,s_tick=>s_tick);
      
process
begin
wait for 10 ns;
rst <= '1';
wait for 10 ns;
rst <= '0';
clk <= '0'; wait for 10 ns; clk <= '1'; wait for 10 ns;

for II in 1 to 128 loop
      clk <= '0'; wait for 10 ns; clk <= '1'; wait for 10 ns;
end loop;
      
end process;
end Behavioral;
