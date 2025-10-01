library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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

begin
    
    main : process(clk100mhz)
    begin
    if rising_edge(clk100mhz) then
        AD_MCLK <= '1';
    else
        AD_MCLK <= '0';
    end if;
    end process;


end Behavioral;
