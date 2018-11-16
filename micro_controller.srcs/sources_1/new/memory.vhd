----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2018 09:21:41 PM
-- Design Name: 
-- Module Name: memory - Behavioral
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
library UNISIM;
use UNISIM.VComponents.all;

entity memory is
generic ( RAM_SIZE : integer := 256 );
Port ( 
    address: in std_logic_vector(7 downto 0);
    dataout: in std_logic_vector(7 downto 0);
    datain: out std_logic_vector(7 downto 0);
    readwrite: in std_logic;
 --   mod_op: in std_logic_vector(1 downto 0);
    clk: in std_logic;
    res001: out std_logic_vector(7 downto 0);       addressout: out std_logic_vector(7 downto 0);
    rst: in std_logic
);
end memory;

	
architecture Behavioral of memory is	
signal data_to_deliver, to_store : std_logic_vector(7 downto 0);
type ram_type is array( RAM_SIZE - 1 downto 0 ) of std_logic_vector(7 downto 0);	
signal ram : ram_type;	
-- signal read_addr : std_logic_vector(7 downto 0);	

begin	

-- data_to_deliver <= ram(to_integer(unsigned(address)));
process(clk,rst)
begin	

 if ( rst = '1' ) then
      ram<=(255=> x"48",254 => x"65",253=> x"6C",252=> x"6C",251=> x"6F",
       250=> x"20",249 => x"57",248=> x"6F",247=> x"72",246=> x"6C",
       245=> x"64",244 => x"21",243=> x"20",others=>x"00");
	if rising_edge(clk) then 	
			datain <= ram(0);
	end if;
 else
 
	if rising_edge(clk) then 	
     if ( readwrite = '1' ) then                            -- In this process writing the input data into ram 
         ram(to_integer(unsigned(address))) <= dataout;
     elsif ( readwrite = '0' ) then
--             datain <= ram(to_integer(unsigned(read_addr)));
--        if(mod_op<="10") then
--            for ii in 0 to 12 loop
--               datain <= ram(((ii)));
--            end loop;
--        else
         datain <= ram(to_integer(unsigned(address)));
        end if; 
     end if;    
   end if;

--end if;




end process;	

--datain <= ram(to_integer(unsigned(address))) when readwrite = '0';
--ram(to_integer(unsigned(address))) <= dataout when readwrite = '1';
res001 <= ram(64);
addressout<=address;
end Behavioral;	