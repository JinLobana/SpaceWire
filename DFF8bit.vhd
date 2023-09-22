library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF8bit is
	Port (
		clk : in STD_LOGIC;
		reset: in STD_LOGIC;
		d : in STD_LOGIC_VECTOR(7 downto 0);
		q : out STD_LOGIC_VECTOR(7 downto 0)
		);
end DFF8bit;

architecture Behavioral of DFF8bit is
	signal flipflop_state : STD_LOGIC_VECTOR(7 downto 0);
begin
	process (clk, reset)
	begin
		if reset = '1' then
			flipflop_state <= (others => '0');
		elsif rising_edge(clk) then
			flipflop_state <= d;
		end if;
	end process;
	
	q <= flipflop_state;
end Behavioral;
