------------------------------------------
-- Dawid Ilba
-- Projekt PSC
-- Kalkulator 8b dwudzia³aniowy  
------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity TutorVHDL is
	port(
		CLK: in STD_LOGIC;
		CLR: in STD_LOGIC;
		CHECK: in STD_LOGIC;  -- '=' button
		MINUS: in STD_LOGIC;  -- '-' button
		PLUS: in STD_LOGIC;	  -- '+' button
		SW: in STD_LOGIC_VECTOR (7 downto 0);  -- input number
		LED: out STD_LOGIC_VECTOR (7 downto 0)	-- output
		);
end TutorVHDL;

architecture TutorVHDL of TutorVHDL is	 
	type States_type is(Start, PowerOn, Add, Sub, EvalAdd, EvalSub);
	signal States: States_type; 	
begin 
	process (CLK)
		variable dataA: STD_LOGIC_VECTOR (7 downto 0);	
		variable dataB: STD_LOGIC_VECTOR (7 downto 0); 
	begin
		if CLR = '1' then
			States <= Start;
			LED <= (others => '0');
		elsif CLK'event and CLK = '1' then
			case States is
				when Start =>
					LED <= (others => '0');
					dataA := SW;
					if Plus = '1' then
						States <= Add;
					elsif Minus = '1' then
						States <= Sub;
					end if;
				when Add =>
					dataB := SW;
					if Check = '1' then
						States <= EvalAdd;
					end if;
				when Sub =>
					dataB := SW;
					if Check = '1' then
						States <= EvalSub;
					end if;
				when EvalAdd => 
					LED <= dataA + dataB;
				when EvalSub =>
					LED <= dataA - dataB;
				when others =>
				null;
			end case;
		end if;
	end process; 
end TutorVHDL;
