----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2018 16:51:56
-- Design Name: 
-- Module Name: baudgen - Behavioral
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


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity baudgen is
----  Port ( );
--end baudgen;

--architecture Behavioral of baudgen is

--begin


--end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity baud_Gen is
generic(
N: integer := 4;
M: integer := 14
);
port(
clk , reset: in std_logic;
s_tick : out std_logic;
q: out std_logic_vector(N-1 downto 0));
end baud_Gen;
architecture Behavioral of baud_Gen is
signal r_reg : unsigned(N-1 downto 0);
signal r_next: unsigned(N-1 downto 0);
begin
    process(clk,reset)
    begin
        if(reset='1') then
            r_reg<=(others=>'0');
        elsif(clk'event and clk='1') then
            r_reg <= r_next;
        end if;
    end process;

    r_next <= (others => '0') when r_reg=M else
              r_reg +1;
              
    q<=std_logic_vector(r_reg);
    s_tick <='1' when (reset/='1' and r_reg=0) else '0';
end Behavioral;

