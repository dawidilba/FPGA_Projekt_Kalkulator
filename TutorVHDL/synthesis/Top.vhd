-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Thu Jan 23 13:40:21 2020
-- Host        : lab309-08 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force Top.vhd
-- Design      : Top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    NET651231 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    \eqOp__26\ : in STD_LOGIC;
    CEI : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\FSM_sequential_States[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(0),
      I1 => DELAY(1),
      I2 => DELAY(2),
      I3 => CE_IBUF,
      I4 => \eqOp__26\,
      O => NET651231
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dataB_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_States_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CEI : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Debouncer_0 : entity is "Debouncer";
end Debouncer_0;

architecture STRUCTURE of Debouncer_0 is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \DELAY[2]_i_1__0_n_0\ : STD_LOGIC;
begin
\DELAY[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => '0',
      I1 => '0',
      I2 => '1',
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => \DELAY[2]_i_1__0_n_0\
    );
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => \DELAY[2]_i_1__0_n_0\,
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => \DELAY[2]_i_1__0_n_0\,
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => \DELAY[2]_i_1__0_n_0\,
      D => DELAY(1),
      Q => DELAY(2)
    );
\FSM_sequential_States[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => DELAY(0),
      I1 => DELAY(1),
      I2 => DELAY(2),
      I3 => CEI,
      O => AR(0)
    );
\dataA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101111111111111"
    )
        port map (
      I0 => \FSM_sequential_States_reg[2]\,
      I1 => \out\(1),
      I2 => CEI,
      I3 => DELAY(2),
      I4 => DELAY(1),
      I5 => DELAY(0),
      O => E(0)
    );
\dataB[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404444444444444"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(0),
      I2 => CEI,
      I3 => DELAY(2),
      I4 => DELAY(1),
      I5 => DELAY(0),
      O => \dataB_reg[7]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer_1 is
  port (
    \FSM_sequential_States_reg[2]\ : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    \eqOp__26\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Debouncer_1 : entity is "Debouncer";
end Debouncer_1;

architecture STRUCTURE of Debouncer_1 is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\FSM_sequential_States[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(0),
      I1 => DELAY(1),
      I2 => DELAY(2),
      I3 => CE_IBUF,
      I4 => \eqOp__26\,
      O => \FSM_sequential_States_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer_2 is
  port (
    NET651103 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    \eqOp__26\ : in STD_LOGIC;
    CEI : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Debouncer_2 : entity is "Debouncer";
end Debouncer_2;

architecture STRUCTURE of Debouncer_2 is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CEI,
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\i__i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(0),
      I1 => DELAY(1),
      I2 => DELAY(2),
      I3 => CE_IBUF,
      I4 => \eqOp__26\,
      O => NET651103
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    \eqOp__26\ : out STD_LOGIC;
    CEI : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^eqop__26\ : STD_LOGIC;
  signal \i__i_3_n_0\ : STD_LOGIC;
  signal \i__i_4_n_0\ : STD_LOGIC;
  signal \i__i_5_n_0\ : STD_LOGIC;
  signal \i__i_6_n_0\ : STD_LOGIC;
  signal \i__i_7_n_0\ : STD_LOGIC;
  signal \i__i_8_n_0\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \eqOp__26\ <= \^eqop__26\;
\DELAY[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^eqop__26\,
      I1 => CE_IBUF,
      O => CEI
    );
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__26\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \^eqop__26\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \^eqop__26\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \^eqop__26\,
      O => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(27),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(26),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_3_n_0\
    );
\DIVIDER[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(25),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_4_n_0\
    );
\DIVIDER[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(24),
      I1 => \^eqop__26\,
      O => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \^eqop__26\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \^eqop__26\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[20]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[20]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[20]_i_1_n_4\,
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => \DIVIDER[20]_i_2_n_0\,
      S(2) => \DIVIDER[20]_i_3_n_0\,
      S(1) => \DIVIDER[20]_i_4_n_0\,
      S(0) => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_4\,
      Q => DIVIDER_reg(23)
    );
\DIVIDER_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_7\,
      Q => DIVIDER_reg(24)
    );
\DIVIDER_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[20]_i_1_n_0\,
      CO(3) => \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \DIVIDER_reg[24]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[24]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[24]_i_1_n_4\,
      O(2) => \DIVIDER_reg[24]_i_1_n_5\,
      O(1) => \DIVIDER_reg[24]_i_1_n_6\,
      O(0) => \DIVIDER_reg[24]_i_1_n_7\,
      S(3) => \DIVIDER[24]_i_2_n_0\,
      S(2) => \DIVIDER[24]_i_3_n_0\,
      S(1) => \DIVIDER[24]_i_4_n_0\,
      S(0) => \DIVIDER[24]_i_5_n_0\
    );
\DIVIDER_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_6\,
      Q => DIVIDER_reg(25)
    );
\DIVIDER_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_5\,
      Q => DIVIDER_reg(26)
    );
\DIVIDER_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_4\,
      Q => DIVIDER_reg(27)
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\i__i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \i__i_3_n_0\,
      I1 => \i__i_4_n_0\,
      I2 => \i__i_5_n_0\,
      I3 => \i__i_6_n_0\,
      I4 => \i__i_7_n_0\,
      I5 => \i__i_8_n_0\,
      O => \^eqop__26\
    );
\i__i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => DIVIDER_reg(12),
      I2 => DIVIDER_reg(15),
      I3 => DIVIDER_reg(19),
      I4 => DIVIDER_reg(23),
      I5 => DIVIDER_reg(20),
      O => \i__i_3_n_0\
    );
\i__i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => DIVIDER_reg(0),
      I2 => DIVIDER_reg(3),
      I3 => DIVIDER_reg(2),
      O => \i__i_4_n_0\
    );
\i__i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => DIVIDER_reg(6),
      I2 => DIVIDER_reg(5),
      I3 => DIVIDER_reg(4),
      O => \i__i_5_n_0\
    );
\i__i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(24),
      I3 => DIVIDER_reg(25),
      I4 => DIVIDER_reg(27),
      I5 => DIVIDER_reg(26),
      O => \i__i_6_n_0\
    );
\i__i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => DIVIDER_reg(7),
      I2 => DIVIDER_reg(13),
      I3 => DIVIDER_reg(11),
      O => \i__i_7_n_0\
    );
\i__i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => DIVIDER_reg(17),
      I2 => DIVIDER_reg(16),
      I3 => DIVIDER_reg(14),
      O => \i__i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TutorVHDL is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \dataA_reg[7]_0\ : out STD_LOGIC;
    \DELAY_reg[0]\ : in STD_LOGIC;
    NET651103 : in STD_LOGIC;
    NET651231 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \FSM_sequential_States_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end TutorVHDL;

architecture STRUCTURE of TutorVHDL is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_sequential_States[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_States[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_States[2]_i_2_n_0\ : STD_LOGIC;
  signal \LED[0]_i_1_n_0\ : STD_LOGIC;
  signal \LED[1]_i_1_n_0\ : STD_LOGIC;
  signal \LED[2]_i_1_n_0\ : STD_LOGIC;
  signal \LED[3]_i_10_n_0\ : STD_LOGIC;
  signal \LED[3]_i_11_n_0\ : STD_LOGIC;
  signal \LED[3]_i_1_n_0\ : STD_LOGIC;
  signal \LED[3]_i_3_n_0\ : STD_LOGIC;
  signal \LED[3]_i_4_n_0\ : STD_LOGIC;
  signal \LED[3]_i_5_n_0\ : STD_LOGIC;
  signal \LED[3]_i_6_n_0\ : STD_LOGIC;
  signal \LED[3]_i_7_n_0\ : STD_LOGIC;
  signal \LED[3]_i_8_n_0\ : STD_LOGIC;
  signal \LED[3]_i_9_n_0\ : STD_LOGIC;
  signal \LED[4]_i_1_n_0\ : STD_LOGIC;
  signal \LED[5]_i_1_n_0\ : STD_LOGIC;
  signal \LED[6]_i_1_n_0\ : STD_LOGIC;
  signal \LED[7]_i_10_n_0\ : STD_LOGIC;
  signal \LED[7]_i_11_n_0\ : STD_LOGIC;
  signal \LED[7]_i_12_n_0\ : STD_LOGIC;
  signal \LED[7]_i_13_n_0\ : STD_LOGIC;
  signal \LED[7]_i_1_n_0\ : STD_LOGIC;
  signal \LED[7]_i_3_n_0\ : STD_LOGIC;
  signal \LED[7]_i_4_n_0\ : STD_LOGIC;
  signal \LED[7]_i_5_n_0\ : STD_LOGIC;
  signal \LED[7]_i_6_n_0\ : STD_LOGIC;
  signal \LED[7]_i_7_n_0\ : STD_LOGIC;
  signal \LED[7]_i_8_n_0\ : STD_LOGIC;
  signal \LED[7]_i_9_n_0\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \LED_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \LED_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \__3/i__n_0\ : STD_LOGIC;
  signal dataA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dataB_reg_n_0_[0]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[1]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[2]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[3]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[4]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[5]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[6]\ : STD_LOGIC;
  signal \dataB_reg_n_0_[7]\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal \NLW_LED_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_States_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_States_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_States_reg[2]\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \LED_reg[3]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \LED_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \out\(2 downto 0) <= \^out\(2 downto 0);
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      I2 => \^out\(1),
      O => \/i__n_0\
    );
\FSM_sequential_States[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      O => \FSM_sequential_States[0]_i_1_n_0\
    );
\FSM_sequential_States[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF540054"
    )
        port map (
      I0 => \^out\(1),
      I1 => \DELAY_reg[0]\,
      I2 => NET651103,
      I3 => \^out\(0),
      I4 => NET651231,
      I5 => \^out\(2),
      O => \FSM_sequential_States[2]_i_1_n_0\
    );
\FSM_sequential_States[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(2),
      O => \FSM_sequential_States[2]_i_2_n_0\
    );
\FSM_sequential_States_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \FSM_sequential_States[2]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_States[0]_i_1_n_0\,
      Q => \^out\(0)
    );
\FSM_sequential_States_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \FSM_sequential_States[2]_i_1_n_0\,
      CLR => AR(0),
      D => \__3/i__n_0\,
      Q => \^out\(1)
    );
\FSM_sequential_States_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \FSM_sequential_States[2]_i_1_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_States[2]_i_2_n_0\,
      Q => \^out\(2)
    );
\LED[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[3]_i_2_n_7\,
      I3 => \^out\(0),
      O => \LED[0]_i_1_n_0\
    );
\LED[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[3]_i_2_n_6\,
      I3 => \^out\(0),
      O => \LED[1]_i_1_n_0\
    );
\LED[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[3]_i_2_n_5\,
      I3 => \^out\(0),
      O => \LED[2]_i_1_n_0\
    );
\LED[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[3]_i_2_n_4\,
      I3 => \^out\(0),
      O => \LED[3]_i_1_n_0\
    );
\LED[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDDD"
    )
        port map (
      I0 => dataA(2),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[2]\,
      I4 => \^out\(1),
      O => \LED[3]_i_10_n_0\
    );
\LED[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDDD"
    )
        port map (
      I0 => dataA(1),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[1]\,
      I4 => \^out\(1),
      O => \LED[3]_i_11_n_0\
    );
\LED[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[2]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(2),
      O => \LED[3]_i_3_n_0\
    );
\LED[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[1]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(1),
      O => \LED[3]_i_4_n_0\
    );
\LED[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02002333"
    )
        port map (
      I0 => dataA(0),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[0]\,
      I4 => \^out\(1),
      O => \LED[3]_i_5_n_0\
    );
\LED[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999966696"
    )
        port map (
      I0 => \LED[3]_i_10_n_0\,
      I1 => dataA(3),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[3]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[3]_i_6_n_0\
    );
\LED[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999966696"
    )
        port map (
      I0 => \LED[3]_i_11_n_0\,
      I1 => dataA(2),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[2]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[3]_i_7_n_0\
    );
\LED[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666699969"
    )
        port map (
      I0 => \LED[3]_i_5_n_0\,
      I1 => dataA(1),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[1]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[3]_i_8_n_0\
    );
\LED[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA9A6A"
    )
        port map (
      I0 => dataA(0),
      I1 => \^out\(1),
      I2 => \dataB_reg_n_0_[0]\,
      I3 => \^out\(2),
      I4 => \^out\(0),
      O => \LED[3]_i_9_n_0\
    );
\LED[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[7]_i_2_n_7\,
      I3 => \^out\(0),
      O => \LED[4]_i_1_n_0\
    );
\LED[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[7]_i_2_n_6\,
      I3 => \^out\(0),
      O => \LED[5]_i_1_n_0\
    );
\LED[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[7]_i_2_n_5\,
      I3 => \^out\(0),
      O => \LED[6]_i_1_n_0\
    );
\LED[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(1),
      I2 => \LED_reg[7]_i_2_n_4\,
      I3 => \^out\(0),
      O => \LED[7]_i_1_n_0\
    );
\LED[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEA1015"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(2),
      I2 => \dataB_reg_n_0_[7]\,
      I3 => \^out\(1),
      I4 => dataA(7),
      O => \LED[7]_i_10_n_0\
    );
\LED[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDDD"
    )
        port map (
      I0 => dataA(5),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[5]\,
      I4 => \^out\(1),
      O => \LED[7]_i_11_n_0\
    );
\LED[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDDD"
    )
        port map (
      I0 => dataA(4),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[4]\,
      I4 => \^out\(1),
      O => \LED[7]_i_12_n_0\
    );
\LED[7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFDDD"
    )
        port map (
      I0 => dataA(3),
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \dataB_reg_n_0_[3]\,
      I4 => \^out\(1),
      O => \LED[7]_i_13_n_0\
    );
\LED[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[5]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(5),
      O => \LED[7]_i_3_n_0\
    );
\LED[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[4]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(4),
      O => \LED[7]_i_4_n_0\
    );
\LED[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[3]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(3),
      O => \LED[7]_i_5_n_0\
    );
\LED[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2FFFF001D0000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \dataB_reg_n_0_[6]\,
      I2 => \^out\(2),
      I3 => \^out\(0),
      I4 => dataA(6),
      I5 => \LED[7]_i_10_n_0\,
      O => \LED[7]_i_6_n_0\
    );
\LED[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999966696"
    )
        port map (
      I0 => \LED[7]_i_11_n_0\,
      I1 => dataA(6),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[6]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[7]_i_7_n_0\
    );
\LED[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999966696"
    )
        port map (
      I0 => \LED[7]_i_12_n_0\,
      I1 => dataA(5),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[5]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[7]_i_8_n_0\
    );
\LED[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999966696"
    )
        port map (
      I0 => \LED[7]_i_13_n_0\,
      I1 => dataA(4),
      I2 => \^out\(1),
      I3 => \dataB_reg_n_0_[4]\,
      I4 => \^out\(2),
      I5 => \^out\(0),
      O => \LED[7]_i_9_n_0\
    );
\LED_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[0]_i_1_n_0\,
      Q => Q(0)
    );
\LED_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[1]_i_1_n_0\,
      Q => Q(1)
    );
\LED_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[2]_i_1_n_0\,
      Q => Q(2)
    );
\LED_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[3]_i_1_n_0\,
      Q => Q(3)
    );
\LED_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \LED_reg[3]_i_2_n_0\,
      CO(2) => \LED_reg[3]_i_2_n_1\,
      CO(1) => \LED_reg[3]_i_2_n_2\,
      CO(0) => \LED_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \LED[3]_i_3_n_0\,
      DI(2) => \LED[3]_i_4_n_0\,
      DI(1) => \LED[3]_i_5_n_0\,
      DI(0) => '0',
      O(3) => \LED_reg[3]_i_2_n_4\,
      O(2) => \LED_reg[3]_i_2_n_5\,
      O(1) => \LED_reg[3]_i_2_n_6\,
      O(0) => \LED_reg[3]_i_2_n_7\,
      S(3) => \LED[3]_i_6_n_0\,
      S(2) => \LED[3]_i_7_n_0\,
      S(1) => \LED[3]_i_8_n_0\,
      S(0) => \LED[3]_i_9_n_0\
    );
\LED_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[4]_i_1_n_0\,
      Q => Q(4)
    );
\LED_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[5]_i_1_n_0\,
      Q => Q(5)
    );
\LED_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[6]_i_1_n_0\,
      Q => Q(6)
    );
\LED_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \/i__n_0\,
      CLR => AR(0),
      D => \LED[7]_i_1_n_0\,
      Q => Q(7)
    );
\LED_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \LED_reg[3]_i_2_n_0\,
      CO(3) => \NLW_LED_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \LED_reg[7]_i_2_n_1\,
      CO(1) => \LED_reg[7]_i_2_n_2\,
      CO(0) => \LED_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \LED[7]_i_3_n_0\,
      DI(1) => \LED[7]_i_4_n_0\,
      DI(0) => \LED[7]_i_5_n_0\,
      O(3) => \LED_reg[7]_i_2_n_4\,
      O(2) => \LED_reg[7]_i_2_n_5\,
      O(1) => \LED_reg[7]_i_2_n_6\,
      O(0) => \LED_reg[7]_i_2_n_7\,
      S(3) => \LED[7]_i_6_n_0\,
      S(2) => \LED[7]_i_7_n_0\,
      S(1) => \LED[7]_i_8_n_0\,
      S(0) => \LED[7]_i_9_n_0\
    );
\__0/i_\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(0),
      O => \dataA_reg[7]_0\
    );
\__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => NET651103,
      I1 => \^out\(0),
      I2 => \^out\(2),
      I3 => \^out\(1),
      O => \__3/i__n_0\
    );
\dataA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => dataA(0),
      R => '0'
    );
\dataA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => dataA(1),
      R => '0'
    );
\dataA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => dataA(2),
      R => '0'
    );
\dataA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => dataA(3),
      R => '0'
    );
\dataA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => dataA(4),
      R => '0'
    );
\dataA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => dataA(5),
      R => '0'
    );
\dataA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => dataA(6),
      R => '0'
    );
\dataA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => dataA(7),
      R => '0'
    );
\dataB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(0),
      Q => \dataB_reg_n_0_[0]\,
      R => '0'
    );
\dataB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(1),
      Q => \dataB_reg_n_0_[1]\,
      R => '0'
    );
\dataB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(2),
      Q => \dataB_reg_n_0_[2]\,
      R => '0'
    );
\dataB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(3),
      Q => \dataB_reg_n_0_[3]\,
      R => '0'
    );
\dataB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(4),
      Q => \dataB_reg_n_0_[4]\,
      R => '0'
    );
\dataB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(5),
      Q => \dataB_reg_n_0_[5]\,
      R => '0'
    );
\dataB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(6),
      Q => \dataB_reg_n_0_[6]\,
      R => '0'
    );
\dataB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \FSM_sequential_States_reg[2]_0\(0),
      D => D(7),
      Q => \dataB_reg_n_0_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top is
  port (
    CE : in STD_LOGIC;
    CHECK : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CLR : in STD_LOGIC;
    MINUS : in STD_LOGIC;
    PLUS : in STD_LOGIC;
    Reset : in STD_LOGIC;
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top : entity is true;
end Top;

architecture STRUCTURE of Top is
  signal CEI : STD_LOGIC;
  signal CE_IBUF : STD_LOGIC;
  signal CHECK_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal LED_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MINUS_IBUF : STD_LOGIC;
  signal NET458 : STD_LOGIC;
  signal NET651103 : STD_LOGIC;
  signal NET651231 : STD_LOGIC;
  signal PLUS_IBUF : STD_LOGIC;
  signal Reset_IBUF : STD_LOGIC;
  signal SW_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal U1_n_0 : STD_LOGIC;
  signal U1_n_1 : STD_LOGIC;
  signal U1_n_11 : STD_LOGIC;
  signal U1_n_2 : STD_LOGIC;
  signal U5_n_0 : STD_LOGIC;
  signal dataA0 : STD_LOGIC;
  signal dataB0 : STD_LOGIC;
  signal \eqOp__26\ : STD_LOGIC;
begin
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CHECK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CHECK,
      O => CHECK_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
\LED_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(0),
      O => LED(0)
    );
\LED_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(1),
      O => LED(1)
    );
\LED_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(2),
      O => LED(2)
    );
\LED_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(3),
      O => LED(3)
    );
\LED_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(4),
      O => LED(4)
    );
\LED_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(5),
      O => LED(5)
    );
\LED_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(6),
      O => LED(6)
    );
\LED_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_OBUF(7),
      O => LED(7)
    );
MINUS_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => MINUS,
      O => MINUS_IBUF
    );
PLUS_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PLUS,
      O => PLUS_IBUF
    );
Reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Reset,
      O => Reset_IBUF
    );
\SW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(0),
      O => SW_IBUF(0)
    );
\SW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(1),
      O => SW_IBUF(1)
    );
\SW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(2),
      O => SW_IBUF(2)
    );
\SW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(3),
      O => SW_IBUF(3)
    );
\SW_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(4),
      O => SW_IBUF(4)
    );
\SW_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(5),
      O => SW_IBUF(5)
    );
\SW_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(6),
      O => SW_IBUF(6)
    );
\SW_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SW(7),
      O => SW_IBUF(7)
    );
U1: entity work.TutorVHDL
     port map (
      AR(0) => NET458,
      CLK => CLK_IBUF_BUFG,
      D(7 downto 0) => SW_IBUF(7 downto 0),
      \DELAY_reg[0]\ => U5_n_0,
      E(0) => dataA0,
      \FSM_sequential_States_reg[2]_0\(0) => dataB0,
      NET651103 => NET651103,
      NET651231 => NET651231,
      Q(7 downto 0) => LED_OBUF(7 downto 0),
      \dataA_reg[7]_0\ => U1_n_11,
      \out\(2) => U1_n_0,
      \out\(1) => U1_n_1,
      \out\(0) => U1_n_2
    );
U2: entity work.Debouncer
     port map (
      AR(0) => Reset_IBUF,
      CEI => CEI,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => CHECK_IBUF,
      NET651231 => NET651231,
      \eqOp__26\ => \eqOp__26\
    );
U3: entity work.Prescaler
     port map (
      AR(0) => Reset_IBUF,
      CEI => CEI,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      \eqOp__26\ => \eqOp__26\
    );
U4: entity work.Debouncer_0
     port map (
      AR(0) => NET458,
      CEI => CEI,
      CLK => CLK_IBUF_BUFG,
      D(0) => CLR_IBUF,
      E(0) => dataA0,
      \FSM_sequential_States_reg[2]\ => U1_n_11,
      \dataB_reg[7]\(0) => dataB0,
      \out\(2) => U1_n_0,
      \out\(1) => U1_n_1,
      \out\(0) => U1_n_2
    );
U5: entity work.Debouncer_1
     port map (
      AR(0) => Reset_IBUF,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => MINUS_IBUF,
      E(0) => CEI,
      \FSM_sequential_States_reg[2]\ => U5_n_0,
      \eqOp__26\ => \eqOp__26\
    );
U6: entity work.Debouncer_2
     port map (
      AR(0) => Reset_IBUF,
      CEI => CEI,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => PLUS_IBUF,
      NET651103 => NET651103,
      \eqOp__26\ => \eqOp__26\
    );
end STRUCTURE;
