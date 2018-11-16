library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
entity TX_Sub is             
 port(
      clk: in std_logic;--this is the master clock signal
      reset: in std_logic;--this is the reset logic
      empty: in std_logic;--this bit indicates that the data is available on the bus,--use empty flag
      input_data: in std_logic_vector(7 downto 0);--this is the data that should be transmitted
      s_tick: in std_logic;--this is the input from the baud rate generator
      tx_serial_line: out std_logic;--this line will be set from high to low for the start bit and will be changing for each bit transmitted
      tx_done: out std_logic--this bit indicates that the transmission is done
      );      
end TX_Sub;

architecture Behavioral of TX_Sub is

type state is (idle_state, send_start_bit, send_bits, send_stop_bit);
signal state_reg,next_state : state;
signal reg_bit_index: integer range 7 downto 0 := 7;
signal reg_tx_done: std_logic := '0';
signal reg_tx_data: std_logic_vector(7 downto 0):= (others=>'0');
signal counter: integer range 0 to 30 := 0;
signal tx_reg: std_logic;

begin

process(clk,reset)
begin

    if(reset = '1') then
      state_reg <= idle_state;
    elsif(rising_edge(clk)) then
      state_reg <= next_state;
    end if;
 end process;
   
process(s_tick,empty,input_data,tx_reg)
begin
              
       case state_reg is 
       
       when idle_state =>
            tx_reg <='1';
            reg_tx_done <= '1';
            counter <= 0;
            reg_bit_index <= 7;
            
            if(empty = '0') then
               reg_tx_data <= input_data;
               next_state <= send_start_bit; 
            end if;
           
        when send_start_bit =>
            tx_reg <='0';
            reg_tx_done <= '0';
            if(s_tick'event and s_tick = '1')then
                    if(counter < 30) then
                       counter <= counter + 1;
                    else 
                       counter <= 0;
                       next_state <= send_bits;
                    end if;
            end if;
            
        when send_bits =>
             tx_reg <= reg_tx_data(reg_bit_index);             
            if(s_tick'event and s_tick = '1') then
                    if (counter < 30) then
                         counter <= counter + 1;
                    else 
                        counter <= 0;            
                        if(reg_bit_index > 0) then
                             reg_bit_index <= reg_bit_index - 1;
                        else
                             reg_bit_index <=7;
                             next_state <= send_stop_bit;
                        end if;
                    end if;
            end if;
             
        when send_stop_bit =>
              tx_reg <= '1';
              
            if(s_tick'event and s_tick = '1') then 
                     if(counter <30) then
                          counter <= counter + 1;
                     else
                          reg_tx_done <= '1';
                          counter <= 0;
                          next_state <= idle_state;
                     end if;
            end if;
            
        when others =>
              next_state <= idle_state;
              
         end case;             
end process;
tx_serial_line<=tx_reg;
tx_done <= reg_tx_done; 
end Behavioral;