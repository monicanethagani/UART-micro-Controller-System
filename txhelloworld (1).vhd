----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2018 10:11:32 PM
-- Design Name: 
-- Module Name: FinalSim - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FinalSim is
--  Port ( );
end FinalSim;

architecture Behavioral of FinalSim is
signal clk,rst,tx,rx : std_logic;
signal test             : std_logic_vector (3 downto 0);
signal mode             : std_logic_vector (1 downto 0);

signal Shift_Reg        : std_logic_vector (7 downto 0);
               
begin
qwe0: entity work.Final_project(Behavioral) port map (clk=>clk,rst=>rst,test=>test,tx=>tx,rx=>rx,mode_OP=>mode);
process
begin

--Read Hello World From RAM


--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////Reading Hello World////////////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-- 
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    rst <= '1';
    mode <= "10";
    --ms <= '1';
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    rst <= '0';
    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;

    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    for y in 0 to 7 loop
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        Shift_Reg <= tx & Shift_Reg (7 downto 1);
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
-- end of reading 11 Bytes    


--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////End of Reading Hello World/////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-- 


--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////Start Of Flashing//////////////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-- 
    mode <= "01";
------------start of byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 00        
    rx <= '0'; --start bit for 1st address
    for y in 0 to 7 loop -- sending address 0x00
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
------------end of byte
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send e4 = 1110 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 01 = 0000 0001        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte   
------------start of byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 00        
    rx <= '0'; --start bit for 1st address
    for y in 0 to 7 loop -- sending address 0x00
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
    end loop;    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
------------end of byte     
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 02 = 0000 0010        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send e0 = 1110 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 03 = 0000 0011        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 80 = 1000 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 0000 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 48 = 0100 1000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 05 = 0000 0101        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 88 = 1000 1000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 06 = 0000 0110        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0d = 0000 1101        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 07 = 0000 0111        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 26 = 0010 0110        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 0000 1000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 1110 1100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 09 = 0000 1001        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 01 = 0000 0001        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0a = 0000 1010        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 23 = 00010 0011        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0b = 0000 1011        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send ff = 1111 1111        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0c = 0000 110        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 0000 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0d = 0000 1101        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send d4 = 1101 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0e = 0000 1110        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 40 = 0100 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0f = 0000 1111        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send ff = 1111 1111        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 10 = 0001 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 0f = 0000 1111        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        ----End of Software instruction
------------start of Byte    ----Start of data loading at address 0x80
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 1000 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 07 = 0000 1110        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 81 = 1000 0001        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 04 = 1100 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte 
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 82 = 1000 0010        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte               
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 34 = 0011 0100        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 83 = 1000 0011        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 00 = 0000 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 40 = 0100 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '1';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte        
------------start of Byte    
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;
    -- Send 00 = 0000 0000        
    rx <= '0'; --start bit for 1st address
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        for i in 0 to 433 loop
        wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
        end loop;    
        rx <= '0';
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        
    rx <= '1';--stop bit
----------end of Byte    -------End of Flashing     
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////End Of Flashing////////////////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--   

--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////Start Of Processing////////////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--   
        
    for i in 0 to 433 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;  
    rst <= '1'; 
    mode <= "00";      
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    rst <= '0';
    for i in 0 to 220 loop
    wait for 10 ns; clk <= '1'; wait for 10 ns; clk <= '0';
    end loop;        


--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\--
--/////////////////////////////End Of Processing//////////////////////////--
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\-- 

    
end process;

end Behavioral;
