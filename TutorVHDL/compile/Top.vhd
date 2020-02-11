-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : TutorVHDL
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : E:\ProjektKalkulator\TutorVHDL\compile\Top.vhd
-- Generated   : Thu Jan 23 13:38:40 2020
-- From        : E:\ProjektKalkulator\TutorVHDL\src\Top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity Top is
  port(
       CE : in STD_LOGIC;
       CHECK : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       MINUS : in STD_LOGIC;
       PLUS : in STD_LOGIC;
       Reset : in STD_LOGIC;
       SW : in STD_LOGIC_VECTOR(7 downto 0);
       LED : out STD_LOGIC_VECTOR(7 downto 0)
  );
end Top;

architecture Top of Top is

---- Component declarations -----

component Debouncer
  port (
       CEI : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       PE : out STD_LOGIC
  );
end component;
component Prescaler
  port (
       CE : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC
  );
end component;
component TutorVHDL
  port (
       CHECK : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CLR : in STD_LOGIC;
       MINUS : in STD_LOGIC;
       PLUS : in STD_LOGIC;
       SW : in STD_LOGIC_VECTOR(7 downto 0);
       LED : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal CEO : STD_LOGIC;
signal NET458 : STD_LOGIC;
signal NET651022 : STD_LOGIC;
signal NET651103 : STD_LOGIC;
signal NET651231 : STD_LOGIC;

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

U1 : TutorVHDL
  port map(
       CHECK => NET651231,
       CLK => CLK,
       CLR => NET458,
       LED => LED,
       MINUS => NET651022,
       PLUS => NET651103,
       SW => SW
  );

U2 : Debouncer
  port map(
       CEI => CEO,
       CLK => CLK,
       CLR => Reset,
       PE => NET651231,
       PUSH => CHECK
  );

U3 : Prescaler
  port map(
       CE => CE,
       CEO => CEO,
       CLK => CLK,
       CLR => Reset
  );

U4 : Debouncer
  port map(
       CEI => CEO,
       CLK => CLK,
       CLR => Dangling_Input_Signal,
       PE => NET458,
       PUSH => CLR
  );

U5 : Debouncer
  port map(
       CEI => CEO,
       CLK => CLK,
       CLR => Reset,
       PE => NET651022,
       PUSH => MINUS
  );

U6 : Debouncer
  port map(
       CEI => CEO,
       CLK => CLK,
       CLR => Reset,
       PE => NET651103,
       PUSH => PLUS
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end Top;
