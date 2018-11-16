----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2018 08:11:40 PM
-- Design Name: 
-- Module Name: fifo_controller - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
 
entity fifo_controller is
	Port ( 
		clk		: in  std_logic;
		reset	: in  std_logic;
		wr_req  : in  std_logic;       
		rd_req  : in  std_logic;       
		d_in	: in  std_logic_vector (7 downto 0);
		d_out	: out std_logic_vector (7 downto 0);
		empty	: out std_logic;
		full	: out std_logic
	);
end fifo_controller;
 
architecture Behavioral of fifo_controller is
begin
 
-- Memory Pointer Process
	fifo_proc : process (clk)
		type fifo_buffer is array (31 downto 0) of std_logic_vector (7 downto 0);
		variable fifo : fifo_buffer;
		
		variable head : integer;
		variable tail : integer;
		variable looped : boolean;
		
	begin
		if (rising_edge(clk)) then
			if reset = '1' then                  -- RESET
				head := 0;
				tail := 0;
				looped := false;
				full  <= '0';
				empty <= '1';
			else
				if (rd_req = '1') then              -- Reading from FIFO
					if ((looped = true) or (head /= tail)) then
-- Update data output
						d_out <= fifo(tail);		
-- Update tail pointer as needed
						if (tail = 31) then
							tail := 0;
        					looped := false;
						else
							tail := tail + 1;
						end if;
    				end if;
				end if;
				
				if (wr_req = '1') then              -- Writing into FIFO
					if ((looped = false) or (head /= tail)) then
-- wr_reqite Data to Memory
						fifo(head) := d_in;
-- Increment head pointer as needed
						if (head = 31) then
							head := 0;					
							looped := true;
						else
							head := head + 1;
						end if;
					end if;
				end if;
				
-- Update empty and full flags
				if (head = tail) then
					if looped then
						full <= '1';
					else
						empty <= '1';
					end if;
				else
					empty	<= '0';
					full	<= '0';
				end if;
			end if;
		end if;
	end process;		
end Behavioral;