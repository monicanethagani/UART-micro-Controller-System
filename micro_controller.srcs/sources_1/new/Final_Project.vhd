----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2018 07:58:47 PM
-- Design Name: 
-- Module Name: Final_Project - Behavioral
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

entity Final_Project is
  Port (
        clk             : in std_logic;
        rst             : in std_logic;
        mode_OP         : in std_logic_vector (1 downto 0);
        --mode_secure     : in std_logic;
        rx              : in std_logic;
        tx              : out std_logic;
        test            : out std_logic_vector(3 downto 0)
   );
end Final_Project;

architecture Behavioral of Final_Project is
signal clk0         : std_logic;
signal reset        : std_logic;
signal wr_req_f0    : std_logic;       
signal rd_req_f0    : std_logic;       
signal d_in_f0      : std_logic_vector (7 downto 0);
signal d_out_f0     : std_logic_vector (7 downto 0);
signal empty_f0     : std_logic;
signal full_f0      : std_logic;

signal wr_req_f1    : std_logic;       
signal rd_req_f1    : std_logic;       
signal d_in_f1      : std_logic_vector (7 downto 0);
signal d_out_f1     : std_logic_vector (7 downto 0);
signal empty_f1     : std_logic;
signal full_f1      : std_logic;

signal stick       : std_logic;

signal rx0          : std_logic;--_vector (7 downto 0);
signal tx0          : std_logic;--s_vector (7 downto 0);

signal tx_done      : std_logic;
signal rx_done      : std_logic;
signal rx_data      : std_logic_vector (7 downto 0);
signal data_to_tx   : std_logic_vector (7 downto 0);
signal is_it_empty  : std_logic;
signal wr_req_f0_nxt: std_logic;

signal ram_data     : std_logic_vector (7 downto 0);
signal regfile_data : std_logic_vector (7 downto 0);
signal ram_counter  : std_logic_vector (7 downto 0);
signal reg_counter  : std_logic_vector (1 downto 0);

signal mode_of_op   : std_logic_vector (1 downto 0);

signal addr_in0     : std_logic_vector(7 downto 0); 
signal data_in0     : std_logic_vector(7 downto 0); 
signal res007       : std_logic_vector(7 downto 0); -- temp may be used for debugging
signal stg,phs      : std_logic_vector(1 downto 0); -- phase and stage shall be wired to output for debugging only

signal ir           : std_logic_vector(7 downto 0);  --db
signal prog_counter : std_logic_vector(7 downto 0);  --db 
signal im_data      : std_logic_vector(7 downto 0);  --db  last 3 are out std_logic_vector(7 downto 0);
signal r0           : std_logic_vector(7 downto 0);  --needed to find a way to output at mode 3
signal r1           : std_logic_vector(7 downto 0);  
signal r2           : std_logic_vector(7 downto 0);  
signal r3           : std_logic_vector(7 downto 0);  
signal ALU_out      : std_logic_vector(7 downto 0);  --db
--signal Memory_out   : std_logic_vector(7 downto 0);  
signal addr_bus     : std_logic_vector(7 downto 0);  --output of the mux that specifies Addr entering the RAM
signal addressout   : std_logic_vector(7 downto 0);  -- db this is the value of address used now inside the RAM: out std_logic_vector(7 downto 0) 
signal pc           : std_logic_vector(7 downto 0);
signal mem_out      : std_logic_vector(7 downto 0);  --needed as output for mode 2
signal addrout      : std_logic_vector(7 downto 0);


signal ram_alter    : std_logic;
--signal reg_data     : std_logic_vector(7 downto 0);
component fifo_controller is
   Port ( 
       clk        : in  std_logic;
       reset    : in  std_logic;
       wr_req  : in  std_logic;       
       rd_req  : in  std_logic;       
       d_in    : in  std_logic_vector (7 downto 0);
       d_out    : out std_logic_vector (7 downto 0);
       empty    : out std_logic;
       full    : out std_logic);

end component;	
component UART_Rx
generic(
--N:integer :=8;
--DBIT:integer:=8;
--SB_TICK: integer:=31 
g_CLKS_PER_BIT : integer := 434
);
 Port (
--    clk,reset,rx: in std_logic;
--    s_tick: in std_logic;
--    rx_done_tick:out std_logic;
--    rx_dout: out std_logic_vector(DBIT-1 downto 0)
    i_Clk       : in  std_logic;
i_RX_Serial : in  std_logic;
o_RX_DV     : out std_logic;
o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component;



begin
f0: fifo_controller  Port map ( 
		clk		=> clk0,
		reset	=> reset,
		wr_req  => wr_req_f0,      
		rd_req  => rd_req_f0,       
		d_in	=> d_in_f0,
		d_out	=> d_out_f0,
		empty	=> empty_f0,
		full	=> full_f0
	);

--f1: entity work.fifo_controller (Behavioral) Port map ( 
--		clk		=> clk0,
--		reset	=> reset,
--		wr_req  => wr_req_f1,      
--		rd_req  => rd_req_f1,       
--		d_in	=> d_in_f1,
--		d_out	=> d_out_f1,
--		empty	=> empty_f1,
--		full	=> full_f1
--	);
	
b0: entity work.baud_Gen (Behavioral) 
      generic map (N=>4, M=>14)
      port map (clk=>clk0,reset=>reset,s_tick=>stick);	

reciver: UART_Rx 
        generic map(
--        N           => 8,
--        DBIT        => 8,
--        SB_TICK     =>  31
        g_CLKS_PER_BIT => 434)
        Port map(
--        clk         => clk0,
--        reset       => reset,
--        rx          => rx0,
--        rx_done_tick=> rx_done, -- to be connected to wr_req_f0,
--        rx_dout        => rx_data, -- to be connected to d_in_f0,           --rx_dout or dout
--        s_tick      => stick
          i_Clk       => clk0,
          i_RX_Serial => rx0,
          o_RX_DV     => rx_done,
          o_RX_Byte   => rx_data
        );
        
t0: entity work.TX_Sub (Behavioral) port map (
      clk                   => clk0,
      reset                 => reset,
      input_data            => data_to_tx, -- to be connected to d_out_f1,
      s_tick                => stick,
      tx_serial_line        => tx0,
      tx_done               => tx_done, -- to be connected to rd_req_f1,
      empty                 => is_it_empty -- to be connected to empty_f1
      );  
      
m0: entity work.micro_controller (Behavioral) port map(
    clock                   => clk0,
    reset                   => reset,
    mode                    => mode_of_op,
    addr_in                 => addr_in0, --this is where data is used as external input to uC
    data_in                 => data_in0, --this is where RAM address for data is used as external input to uC
    res007                  => res007,  --db
    stg                     => stg,     --db
    phase0                  => phs,     --db
    ir                      => ir,      --db
    prog_counter            => pc,      --db 
    im_data                 => im_data, --db  last 3 are out std_logic_vector(7 downto 0);
    r0                      => r0,      --needed to find a way to output at mode 3
    r1                      => r1,
    r2                      => r2,
    r3                      => r3,
    ALU_out                 => ALU_out, --db
    Memory_out              => mem_out --needed as output for mode 2
    --addr_bus                => addr_bus, --output of the mux that specifies Addr entering the RAM
    --addressout              => addrout  -- db this is the value of address used now inside the RAM: out std_logic_vector(7 downto 0) 
  );               

    clk0        <= clk;
    reset       <= rst;
    --mode_of_op  <= mode;
    rx0         <= rx;
    tx          <= tx0;
    test        <= full_f0 & empty_f0 & rx_done & tx_done;
    
    --process (mode_secure, mode_OP)
    --begin
    --    if (mode_secure = '1') then
            mode_of_op  <= mode_OP;-- when mode_secure = '1'; 
    --    end if;
    --end process;
    

-- the coming section is controlling data in to FIFO
-- mode 0 is processing
-- mode 1 is Flashing
-- mode 2 is Reading RAM to putty
-- mode 3 is Reading R.F. to putty
    
    d_in_f0     <=  rx_data when mode_of_op = "01" else
                    mem_out when mode_of_op = "10" else -- Reading RAM
                    regfile_data when mode_of_op = "11" else
                    (others=>'1');
    
    -- flashing RAM
    process (clk, full_f0, mode_of_op, rx_done, reset) 
        begin
            if mode_of_op = "01" then
                --if clk'event and clk = '1' then 
                    if rx_done = '1' and full_f0 = '0' then
                        wr_req_f0 <= '1';
                    else
                        wr_req_f0 <= '0';
                    end if;
                --end if;
            -- mode 10 - RAM to FIFO  
            elsif mode_of_op = "10" then
                if (reset = '1') then
                    ram_counter <= (others=>'0');
                    wr_req_f0_nxt <= '1';
                    wr_req_f0 <= '1';
                elsif (clk'event and clk = '1' and full_f0 = '0') then
                    wr_req_f0 <= wr_req_f0_nxt;
                    addr_in0 <= ram_counter;
                    if (ram_counter = "11111111") then
                        wr_req_f0_nxt <= '0';
                    else 
                        ram_counter <= std_logic_vector(unsigned(ram_counter) + 1);
                    end if;
                end if;
            --registers to FIFO        
            elsif  mode_of_op = "11" then
                if (reset = '1') then
                    reg_counter <= (others=>'0');
                    wr_req_f0_nxt <= '1';
                    wr_req_f0 <= '1';
                elsif (clk'event and clk = '1' and full_f0 = '0') then
                    wr_req_f0 <= wr_req_f0_nxt;
                    if reg_counter = "00" then 
                        regfile_data <= r0;
                    elsif reg_counter = "01" then
                        regfile_data <= r1;
                    elsif reg_counter = "10" then
                        regfile_data <= r2;
                    elsif reg_counter = "11" then
                        regfile_data <= r3;
                        wr_req_f0_nxt <= '0'; --- next
                    end if;
                    reg_counter <= std_logic_vector(unsigned(reg_counter) + 1);
                end if;
            end if;
        end process;

-- The section below is controlling the destination of FIFO data out
    ram_data <=  d_out_f0 when mode_of_op = "01"; 
    data_to_tx <= d_out_f0 when mode_of_op = "10" or mode_of_op = "11";

    --controlling value of ram_data, it shall be alternating between data_in and address in
    process (clk, empty_f0, mode_of_op, reset, tx_done, ram_alter)
    begin
        if mode_of_op = "01" then
            if (reset = '1') then
                ram_alter <= '0';
                rd_req_f0 <= '0';
            elsif (empty_f0 = '0') then
                rd_req_f0 <= '1';
                
                if (clk'event and clk = '1') then
                    
                    case ram_alter is
                        when '0' => data_in0 <= ram_data;
                        when others => addr_in0 <= ram_data;
                    end case;
--                    if ram_alter = '1' then
--                        addr_in0 <= ram_data;
--                    elsif ram_alter = '0' then
--                        data_in0 <= ram_data;
--                    end if;
                    ram_alter <= not ram_alter;
                end if;
                
            else 
                rd_req_f0 <= '0';
                
            end if;
        -- in mode 2 and 3, data is passed from FIFO to UART TX
        -- below is the part controlling data control signals
        -- as we shall wait for TX done to start new data read request
        elsif mode_of_op(1) = '1' then
            rd_req_f0 <= tx_done;
            is_it_empty <= empty_f0;
        end if;
    end process;
    
end Behavioral;
