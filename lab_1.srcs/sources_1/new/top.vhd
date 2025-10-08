library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity top is
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
end top; 

architecture Behavioral of top is

signal counter_reg : std_logic_vector (11 downto 0) := (others => '0');

begin

    bin_counter : process(clk100mhz)
    begin
        counter_reg <= std_logic_vector(unsigned(counter_reg) + 1);
    end process;

ad_mclk <= counter_reg(3);
da_mclk <= counter_reg(3);
ad_sclk <= counter_reg(5);
da_sclk <= counter_reg(5);
ad_lrck <= counter_reg(11);
da_lrck <= counter_reg(11);

end Behavioral;
