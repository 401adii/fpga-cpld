library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is

component top is
    Port ( CLK100MHZ : in STD_LOGIC;
           LED : out STD_LOGIC_VECTOR (15 downto 0);
           AD_MCLK : out STD_LOGIC;
           AD_LRCK : out STD_LOGIC;
           AD_SCLK : out STD_LOGIC;
           AD_SDOUT : in STD_LOGIC;
           DA_MCLK : out STD_LOGIC;
           DA_LRCK : out STD_LOGIC;
           DA_SCLK : out STD_LOGIC;
           DA_SDIN : out STD_LOGIC);
end component top; 

signal clk100mhz : std_logic := '0';
signal led : std_logic_vector (15 downto 0) := (others => '0');
signal ad_mclk : std_logic := '0';
signal ad_lrck : std_logic := '0';
signal ad_sclk : std_logic := '0';
signal ad_sdout : std_logic := '0';
signal da_mclk : std_logic := '0';
signal da_lrck : std_logic := '0';
signal da_sdin : std_logic := '0';

begin

dut : top port map(clk100mhz => clk100mhz, 
                    led => led, 
                    ad_mclk => ad_mclk, 
                    ad_lrck => ad_lrck, 
                    ad_sclk => ad_sclk, 
                    ad_sdout => ad_sdout, 
                    da_mclk => da_mclk, 
                    da_lrck => da_lrck,
                    da_sdin => da_sdin);

stim : process
begin
    clk100mhz <= '1';
    wait for 5ns;
    clk100mhz <= '0';
    wait for 5ns;
end process;


end Behavioral;
