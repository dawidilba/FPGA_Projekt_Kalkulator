library ieee;
use ieee.STD_LOGIC_UNSIGNED.all;
use ieee.std_logic_1164.all;

entity tutorvhdl_tb is
end tutorvhdl_tb;

architecture TB_ARCHITECTURE of tutorvhdl_tb is
	component tutorvhdl
	port(
		CLK : in STD_LOGIC;
		CHECK : in STD_LOGIC;
		CLR : in STD_LOGIC;
		PLUS : in STD_LOGIC;
		MINUS : in STD_LOGIC;
		SW : in STD_LOGIC_VECTOR(7 downto 0);
		LED : out STD_LOGIC_VECTOR(7 downto 0) 
		);
	end component;

signal CLK : STD_LOGIC;
signal CHECK : STD_LOGIC;
signal CLR : STD_LOGIC;	
signal PLUS : STD_LOGIC;
signal MINUS : STD_LOGIC;
signal SW : STD_LOGIC_VECTOR(7 downto 0);
signal LED : STD_LOGIC_VECTOR(7 downto 0);	 
constant clock_peroid : time := 50 ns;

begin
	-- Unit Under Test
	UUT : tutorvhdl
		port map (
			CLK => CLK,
			CHECK => CHECK,
			CLR => CLR,
			PLUS => PLUS,
			MINUS => MINUS,
			SW => SW,
			LED => LED
		);

STIMULUS: process
begin
	CLR <= '1';	
	CHECK <= '0';
	PLUS <= '0';
	MINUS <= '0';
	wait for 2*clock_peroid;
	CLR <= '0';	
	wait for 2*clock_peroid;
	SW <= "11110011"; 
	wait for 2*clock_peroid;
	PLUS <= '1';
	wait for 2*clock_peroid;
	PLUS <= '0'; 
	wait for 2*clock_peroid;
	SW <= "00000101" ;
	wait for 2*clock_peroid;
	CHECK <= '1';
	wait for 2*clock_peroid;
	CHECK <= '0'; 
	wait for 6*clock_peroid;
	CLR <= '1';	
	wait for 2*clock_peroid;
	CLR <= '0';
	wait for 2*clock_peroid;
	SW <= "11110011";
	wait for 2*clock_peroid;
	MINUS <= '1';
	wait for 2*clock_peroid;
	MINUS <= '0';
	SW <= "00000101" ;
	wait for 2*clock_peroid;
	CHECK <= '1';
	wait for 2*clock_peroid;
	CHECK <= '0'; 
	wait for 6*clock_peroid;
	CLR <= '1';	
	wait;
end process;

CLK_STIMULUS: process
begin
	CLK <= '0';
	wait for clock_peroid;
	CLK <= '1';
	wait for clock_peroid;
end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tutorvhdl of tutorvhdl_tb is
	for TB_ARCHITECTURE
		for UUT : tutorvhdl
			use entity work.tutorvhdl(tutorvhdl);
		end for;
	end for;
end TESTBENCH_FOR_tutorvhdl;

