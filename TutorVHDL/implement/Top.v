// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Jan 23 13:49:15 2020
// Host        : lab309-08 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CEI,
    CE_IBUF,
    CLK,
    NET651231,
    eqOp__26,
    AR,
    D);
  input CEI;
  input CE_IBUF;
  input CLK;
  output NET651231;
  input eqOp__26;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CEI;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire NET651231;
  wire eqOp__26;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_sequential_States[2]_i_5 
       (.I0(DELAY[0]),
        .I1(DELAY[1]),
        .I2(DELAY[2]),
        .I3(CE_IBUF),
        .I4(eqOp__26),
        .O(NET651231));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (CEI,
    CLK,
    FSM_sequential_States_reg,
    AR,
    D,
    E,
    \dataB_reg[7] ,
    out);
  input CEI;
  input CLK;
  input [2:2]FSM_sequential_States_reg;
  output [0:0]AR;
  input [0:0]D;
  output [0:0]E;
  output [0:0]\dataB_reg[7] ;
  input [2:0]out;

  wire [0:0]AR;
  wire CEI;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire [0:0]E;
  wire [2:2]FSM_sequential_States_reg;
  wire [0:0]\dataB_reg[7] ;
  wire [2:0]out;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(CEI),
        .CLR(1'b0),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(CEI),
        .CLR(1'b0),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(CEI),
        .CLR(1'b0),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_States[2]_i_3 
       (.I0(DELAY[0]),
        .I1(DELAY[1]),
        .I2(DELAY[2]),
        .I3(CEI),
        .O(AR));
  LUT6 #(
    .INIT(64'h1101111111111111)) 
    \dataA[7]_i_1 
       (.I0(FSM_sequential_States_reg),
        .I1(out[1]),
        .I2(CEI),
        .I3(DELAY[2]),
        .I4(DELAY[1]),
        .I5(DELAY[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h4404444444444444)) 
    \dataB[7]_i_1 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(CEI),
        .I3(DELAY[2]),
        .I4(DELAY[1]),
        .I5(DELAY[0]),
        .O(\dataB_reg[7] ));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_1
   (CE_IBUF,
    CLK,
    FSM_sequential_States_reg,
    eqOp__26,
    AR,
    D,
    E);
  input CE_IBUF;
  input CLK;
  output [2:2]FSM_sequential_States_reg;
  input eqOp__26;
  input [0:0]AR;
  input [0:0]D;
  input [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire [0:0]E;
  wire [2:2]FSM_sequential_States_reg;
  wire eqOp__26;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_sequential_States[2]_i_4 
       (.I0(DELAY[0]),
        .I1(DELAY[1]),
        .I2(DELAY[2]),
        .I3(CE_IBUF),
        .I4(eqOp__26),
        .O(FSM_sequential_States_reg));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_2
   (CEI,
    CE_IBUF,
    CLK,
    NET651103,
    eqOp__26,
    AR,
    D);
  input CEI;
  input CE_IBUF;
  input CLK;
  output NET651103;
  input eqOp__26;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CEI;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire NET651103;
  wire eqOp__26;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(CEI),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    i__i_1
       (.I0(DELAY[0]),
        .I1(DELAY[1]),
        .I2(DELAY[2]),
        .I3(CE_IBUF),
        .I4(eqOp__26),
        .O(NET651103));
endmodule

module Prescaler
   (CEI,
    CE_IBUF,
    CLK,
    eqOp__26,
    AR);
  output CEI;
  input CE_IBUF;
  input CLK;
  output eqOp__26;
  input [0:0]AR;

  wire [0:0]AR;
  wire CEI;
  wire CE_IBUF;
  wire CLK;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[20]_i_5_n_0 ;
  wire \DIVIDER[24]_i_2_n_0 ;
  wire \DIVIDER[24]_i_3_n_0 ;
  wire \DIVIDER[24]_i_4_n_0 ;
  wire \DIVIDER[24]_i_5_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [27:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_0 ;
  wire \DIVIDER_reg[20]_i_1_n_4 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[24]_i_1_n_4 ;
  wire \DIVIDER_reg[24]_i_1_n_5 ;
  wire \DIVIDER_reg[24]_i_1_n_6 ;
  wire \DIVIDER_reg[24]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire eqOp__26;
  wire i__i_3_n_0;
  wire i__i_4_n_0;
  wire i__i_5_n_0;
  wire i__i_6_n_0;
  wire i__i_7_n_0;
  wire i__i_8_n_0;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \DELAY[2]_i_1 
       (.I0(eqOp__26),
        .I1(CE_IBUF),
        .O(CEI));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[27]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_3 
       (.I0(DIVIDER_reg[26]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_4 
       (.I0(DIVIDER_reg[25]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_5 
       (.I0(DIVIDER_reg[24]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO({\DIVIDER_reg[20]_i_1_n_0 ,\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[20]_i_1_n_4 ,\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 ,\DIVIDER[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[24]_i_1_n_4 ,\DIVIDER_reg[24]_i_1_n_5 ,\DIVIDER_reg[24]_i_1_n_6 ,\DIVIDER_reg[24]_i_1_n_7 }),
        .S({\DIVIDER[24]_i_2_n_0 ,\DIVIDER[24]_i_3_n_0 ,\DIVIDER[24]_i_4_n_0 ,\DIVIDER[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[25] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_6 ),
        .Q(DIVIDER_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[26] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_5 ),
        .Q(DIVIDER_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[27] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_4 ),
        .Q(DIVIDER_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__i_2
       (.I0(i__i_3_n_0),
        .I1(i__i_4_n_0),
        .I2(i__i_5_n_0),
        .I3(i__i_6_n_0),
        .I4(i__i_7_n_0),
        .I5(i__i_8_n_0),
        .O(eqOp__26));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    i__i_3
       (.I0(DIVIDER_reg[10]),
        .I1(DIVIDER_reg[12]),
        .I2(DIVIDER_reg[15]),
        .I3(DIVIDER_reg[19]),
        .I4(DIVIDER_reg[23]),
        .I5(DIVIDER_reg[20]),
        .O(i__i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i__i_4
       (.I0(DIVIDER_reg[1]),
        .I1(DIVIDER_reg[0]),
        .I2(DIVIDER_reg[3]),
        .I3(DIVIDER_reg[2]),
        .O(i__i_4_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i__i_5
       (.I0(DIVIDER_reg[9]),
        .I1(DIVIDER_reg[6]),
        .I2(DIVIDER_reg[5]),
        .I3(DIVIDER_reg[4]),
        .O(i__i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__i_6
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[24]),
        .I3(DIVIDER_reg[25]),
        .I4(DIVIDER_reg[27]),
        .I5(DIVIDER_reg[26]),
        .O(i__i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i__i_7
       (.I0(DIVIDER_reg[8]),
        .I1(DIVIDER_reg[7]),
        .I2(DIVIDER_reg[13]),
        .I3(DIVIDER_reg[11]),
        .O(i__i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    i__i_8
       (.I0(DIVIDER_reg[18]),
        .I1(DIVIDER_reg[17]),
        .I2(DIVIDER_reg[16]),
        .I3(DIVIDER_reg[14]),
        .O(i__i_8_n_0));
endmodule

(* ECO_CHECKSUM = "50c07f04" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (CE,
    CHECK,
    CLK,
    CLR,
    MINUS,
    PLUS,
    Reset,
    LED,
    SW);
  input CE;
  input CHECK;
  input CLK;
  input CLR;
  input MINUS;
  input PLUS;
  input Reset;
  output [7:0]LED;
  input [7:0]SW;

  wire CE;
  wire CEI;
  wire CE_IBUF;
  wire CHECK;
  wire CHECK_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [7:0]LED;
  wire [7:0]LED_OBUF;
  wire MINUS;
  wire MINUS_IBUF;
  wire NET458;
  wire NET651103;
  wire NET651231;
  wire PLUS;
  wire PLUS_IBUF;
  wire Reset;
  wire Reset_IBUF;
  wire [7:0]SW;
  wire [7:0]SW_IBUF;
  wire U1_n_0;
  wire U1_n_1;
  wire U1_n_11;
  wire U1_n_2;
  wire U5_n_0;
  wire dataA0;
  wire dataB0;
  wire eqOp__26;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  IBUF CHECK_IBUF_inst
       (.I(CHECK),
        .O(CHECK_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  IBUF MINUS_IBUF_inst
       (.I(MINUS),
        .O(MINUS_IBUF));
  IBUF PLUS_IBUF_inst
       (.I(PLUS),
        .O(PLUS_IBUF));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  TutorVHDL U1
       (.AR(NET458),
        .CLK(CLK_IBUF_BUFG),
        .D(SW_IBUF),
        .DELAY_reg(U5_n_0),
        .E(dataA0),
        .\FSM_sequential_States_reg[2]_0 (dataB0),
        .NET651103(NET651103),
        .NET651231(NET651231),
        .Q(LED_OBUF),
        .\dataA_reg[7]_0 (U1_n_11),
        .out({U1_n_0,U1_n_1,U1_n_2}));
  Debouncer U2
       (.AR(Reset_IBUF),
        .CEI(CEI),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(CHECK_IBUF),
        .NET651231(NET651231),
        .eqOp__26(eqOp__26));
  Prescaler U3
       (.AR(Reset_IBUF),
        .CEI(CEI),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .eqOp__26(eqOp__26));
  Debouncer_0 U4
       (.AR(NET458),
        .CEI(CEI),
        .CLK(CLK_IBUF_BUFG),
        .D(CLR_IBUF),
        .E(dataA0),
        .FSM_sequential_States_reg(U1_n_11),
        .\dataB_reg[7] (dataB0),
        .out({U1_n_0,U1_n_1,U1_n_2}));
  Debouncer_1 U5
       (.AR(Reset_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(MINUS_IBUF),
        .E(CEI),
        .FSM_sequential_States_reg(U5_n_0),
        .eqOp__26(eqOp__26));
  Debouncer_2 U6
       (.AR(Reset_IBUF),
        .CEI(CEI),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(PLUS_IBUF),
        .NET651103(NET651103),
        .eqOp__26(eqOp__26));
endmodule

module TutorVHDL
   (CLK,
    DELAY_reg,
    NET651103,
    NET651231,
    \dataA_reg[7]_0 ,
    AR,
    D,
    E,
    \FSM_sequential_States_reg[2]_0 ,
    Q,
    out);
  input CLK;
  input [0:0]DELAY_reg;
  input NET651103;
  input NET651231;
  output \dataA_reg[7]_0 ;
  input [0:0]AR;
  input [7:0]D;
  input [0:0]E;
  input [0:0]\FSM_sequential_States_reg[2]_0 ;
  output [7:0]Q;
  output [2:0]out;

  wire \/i__n_0 ;
  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]DELAY_reg;
  wire [0:0]E;
  wire \FSM_sequential_States[0]_i_1_n_0 ;
  wire \FSM_sequential_States[2]_i_1_n_0 ;
  wire \FSM_sequential_States[2]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_States_reg[2]_0 ;
  wire \LED[0]_i_1_n_0 ;
  wire \LED[1]_i_1_n_0 ;
  wire \LED[2]_i_1_n_0 ;
  wire \LED[3]_i_10_n_0 ;
  wire \LED[3]_i_11_n_0 ;
  wire \LED[3]_i_1_n_0 ;
  wire \LED[3]_i_3_n_0 ;
  wire \LED[3]_i_4_n_0 ;
  wire \LED[3]_i_5_n_0 ;
  wire \LED[3]_i_6_n_0 ;
  wire \LED[3]_i_7_n_0 ;
  wire \LED[3]_i_8_n_0 ;
  wire \LED[3]_i_9_n_0 ;
  wire \LED[4]_i_1_n_0 ;
  wire \LED[5]_i_1_n_0 ;
  wire \LED[6]_i_1_n_0 ;
  wire \LED[7]_i_10_n_0 ;
  wire \LED[7]_i_11_n_0 ;
  wire \LED[7]_i_12_n_0 ;
  wire \LED[7]_i_13_n_0 ;
  wire \LED[7]_i_1_n_0 ;
  wire \LED[7]_i_3_n_0 ;
  wire \LED[7]_i_4_n_0 ;
  wire \LED[7]_i_5_n_0 ;
  wire \LED[7]_i_6_n_0 ;
  wire \LED[7]_i_7_n_0 ;
  wire \LED[7]_i_8_n_0 ;
  wire \LED[7]_i_9_n_0 ;
  wire \LED_reg[3]_i_2_n_0 ;
  wire \LED_reg[3]_i_2_n_4 ;
  wire \LED_reg[3]_i_2_n_5 ;
  wire \LED_reg[3]_i_2_n_6 ;
  wire \LED_reg[3]_i_2_n_7 ;
  wire \LED_reg[7]_i_2_n_4 ;
  wire \LED_reg[7]_i_2_n_5 ;
  wire \LED_reg[7]_i_2_n_6 ;
  wire \LED_reg[7]_i_2_n_7 ;
  wire NET651103;
  wire NET651231;
  wire [7:0]Q;
  wire \__3/i__n_0 ;
  wire [7:0]dataA;
  wire \dataA_reg[3]_CE_cooolgate_en_sig_1 ;
  wire \dataA_reg[7]_0 ;
  wire \dataB_reg[3]_CE_cooolgate_en_sig_2 ;
  wire [7:0]dataB_reg_n_0_;
  (* RTL_KEEP = "yes" *) wire [2:0]out;
  wire [2:0]\NLW_LED_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_LED_reg[7]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h15)) 
    \/i_ 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\/i__n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_States[0]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .O(\FSM_sequential_States[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF540054)) 
    \FSM_sequential_States[2]_i_1 
       (.I0(out[1]),
        .I1(DELAY_reg),
        .I2(NET651103),
        .I3(out[0]),
        .I4(NET651231),
        .I5(out[2]),
        .O(\FSM_sequential_States[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_States[2]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\FSM_sequential_States[2]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_States[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_States[0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_States[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\__3/i__n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_States_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_States[2]_i_1_n_0 ),
        .CLR(AR),
        .D(\FSM_sequential_States[2]_i_2_n_0 ),
        .Q(out[2]));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[0]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[3]_i_2_n_7 ),
        .I3(out[0]),
        .O(\LED[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[1]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[3]_i_2_n_6 ),
        .I3(out[0]),
        .O(\LED[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[2]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[3]_i_2_n_5 ),
        .I3(out[0]),
        .O(\LED[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[3]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[3]_i_2_n_4 ),
        .I3(out[0]),
        .O(\LED[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDDD)) 
    \LED[3]_i_10 
       (.I0(dataA[2]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[2]),
        .I4(out[1]),
        .O(\LED[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDDD)) 
    \LED[3]_i_11 
       (.I0(dataA[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[1]),
        .I4(out[1]),
        .O(\LED[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h001D0000)) 
    \LED[3]_i_3 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[2]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[2]),
        .O(\LED[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h001D0000)) 
    \LED[3]_i_4 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[1]),
        .O(\LED[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h02002333)) 
    \LED[3]_i_5 
       (.I0(dataA[0]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[0]),
        .I4(out[1]),
        .O(\LED[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999966696)) 
    \LED[3]_i_6 
       (.I0(\LED[3]_i_10_n_0 ),
        .I1(dataA[3]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[3]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999966696)) 
    \LED[3]_i_7 
       (.I0(\LED[3]_i_11_n_0 ),
        .I1(dataA[2]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[2]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666699969)) 
    \LED[3]_i_8 
       (.I0(\LED[3]_i_5_n_0 ),
        .I1(dataA[1]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[1]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA9A6A)) 
    \LED[3]_i_9 
       (.I0(dataA[0]),
        .I1(out[1]),
        .I2(dataB_reg_n_0_[0]),
        .I3(out[2]),
        .I4(out[0]),
        .O(\LED[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[4]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[7]_i_2_n_7 ),
        .I3(out[0]),
        .O(\LED[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[5]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[7]_i_2_n_6 ),
        .I3(out[0]),
        .O(\LED[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[6]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[7]_i_2_n_5 ),
        .I3(out[0]),
        .O(\LED[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \LED[7]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\LED_reg[7]_i_2_n_4 ),
        .I3(out[0]),
        .O(\LED[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFEA1015)) 
    \LED[7]_i_10 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(dataB_reg_n_0_[7]),
        .I3(out[1]),
        .I4(dataA[7]),
        .O(\LED[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDDD)) 
    \LED[7]_i_11 
       (.I0(dataA[5]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[5]),
        .I4(out[1]),
        .O(\LED[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDDD)) 
    \LED[7]_i_12 
       (.I0(dataA[4]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[4]),
        .I4(out[1]),
        .O(\LED[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFDFFFDDD)) 
    \LED[7]_i_13 
       (.I0(dataA[3]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(dataB_reg_n_0_[3]),
        .I4(out[1]),
        .O(\LED[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h001D0000)) 
    \LED[7]_i_3 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[5]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[5]),
        .O(\LED[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h001D0000)) 
    \LED[7]_i_4 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[4]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[4]),
        .O(\LED[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h001D0000)) 
    \LED[7]_i_5 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[3]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[3]),
        .O(\LED[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFE2FFFF001D0000)) 
    \LED[7]_i_6 
       (.I0(out[1]),
        .I1(dataB_reg_n_0_[6]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(dataA[6]),
        .I5(\LED[7]_i_10_n_0 ),
        .O(\LED[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999966696)) 
    \LED[7]_i_7 
       (.I0(\LED[7]_i_11_n_0 ),
        .I1(dataA[6]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[6]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999966696)) 
    \LED[7]_i_8 
       (.I0(\LED[7]_i_12_n_0 ),
        .I1(dataA[5]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[5]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999966696)) 
    \LED[7]_i_9 
       (.I0(\LED[7]_i_13_n_0 ),
        .I1(dataA[4]),
        .I2(out[1]),
        .I3(dataB_reg_n_0_[4]),
        .I4(out[2]),
        .I5(out[0]),
        .O(\LED[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[0] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \LED_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\LED_reg[3]_i_2_n_0 ,\NLW_LED_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\LED[3]_i_3_n_0 ,\LED[3]_i_4_n_0 ,\LED[3]_i_5_n_0 ,1'b0}),
        .O({\LED_reg[3]_i_2_n_4 ,\LED_reg[3]_i_2_n_5 ,\LED_reg[3]_i_2_n_6 ,\LED_reg[3]_i_2_n_7 }),
        .S({\LED[3]_i_6_n_0 ,\LED[3]_i_7_n_0 ,\LED[3]_i_8_n_0 ,\LED[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \LED_reg[7] 
       (.C(CLK),
        .CE(\/i__n_0 ),
        .CLR(AR),
        .D(\LED[7]_i_1_n_0 ),
        .Q(Q[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \LED_reg[7]_i_2 
       (.CI(\LED_reg[3]_i_2_n_0 ),
        .CO(\NLW_LED_reg[7]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\LED[7]_i_3_n_0 ,\LED[7]_i_4_n_0 ,\LED[7]_i_5_n_0 }),
        .O({\LED_reg[7]_i_2_n_4 ,\LED_reg[7]_i_2_n_5 ,\LED_reg[7]_i_2_n_6 ,\LED_reg[7]_i_2_n_7 }),
        .S({\LED[7]_i_6_n_0 ,\LED[7]_i_7_n_0 ,\LED[7]_i_8_n_0 ,\LED[7]_i_9_n_0 }));
  LUT2 #(
    .INIT(4'hE)) 
    \__0/i_ 
       (.I0(out[2]),
        .I1(out[0]),
        .O(\dataA_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \__3/i_ 
       (.I0(NET651103),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .O(\__3/i__n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[0] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[0]),
        .Q(dataA[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[1] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[1]),
        .Q(dataA[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[2] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[2]),
        .Q(dataA[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[3] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[3]),
        .Q(dataA[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \dataA_reg[3]_CE_cooolgate_en_gate_1 
       (.I0(E),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(E),
        .O(\dataA_reg[3]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[4] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[4]),
        .Q(dataA[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[5] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[5]),
        .Q(dataA[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[6] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[6]),
        .Q(dataA[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataA_reg[7] 
       (.C(CLK),
        .CE(\dataA_reg[3]_CE_cooolgate_en_sig_1 ),
        .D(D[7]),
        .Q(dataA[7]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[0] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[0]),
        .Q(dataB_reg_n_0_[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[1] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[1]),
        .Q(dataB_reg_n_0_[1]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[2] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[2]),
        .Q(dataB_reg_n_0_[2]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[3] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[3]),
        .Q(dataB_reg_n_0_[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \dataB_reg[3]_CE_cooolgate_en_gate_10 
       (.I0(\FSM_sequential_States_reg[2]_0 ),
        .I1(out[2]),
        .I2(out[0]),
        .I3(\FSM_sequential_States_reg[2]_0 ),
        .O(\dataB_reg[3]_CE_cooolgate_en_sig_2 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[4] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[4]),
        .Q(dataB_reg_n_0_[4]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[5] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[5]),
        .Q(dataB_reg_n_0_[5]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[6] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[6]),
        .Q(dataB_reg_n_0_[6]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \dataB_reg[7] 
       (.C(CLK),
        .CE(\dataB_reg[3]_CE_cooolgate_en_sig_2 ),
        .D(D[7]),
        .Q(dataB_reg_n_0_[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
