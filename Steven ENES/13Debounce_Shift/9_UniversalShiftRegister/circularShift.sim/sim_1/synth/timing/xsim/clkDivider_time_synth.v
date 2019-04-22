// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 12:44:48 2019
// Host        : DESKTOP-IPK4CS4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/Firev/OneDrive/Documents/GitHub/Steven-Jugler-ENES-246-501/Steven
//               ENES/13Debounce_Shift/9_UniversalShiftRegister/circularShift.sim/sim_1/synth/timing/xsim/clkDivider_time_synth.v}
// Design      : clkDivider
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module clkDivider
   (clk,
    rst,
    parallelInSW,
    go,
    ws,
    Load,
    leftRightDirection,
    parallelOut);
  input clk;
  input rst;
  input [7:0]parallelInSW;
  input go;
  input ws;
  input Load;
  input leftRightDirection;
  output [15:0]parallelOut;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_10_n_0 ;
  wire \FSM_onehot_state[3]_i_11_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  wire \FSM_onehot_state[3]_i_7_n_0 ;
  wire \FSM_onehot_state[3]_i_8_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire Green;
  wire Load;
  wire Load_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \count_clk[0]_i_1_n_0 ;
  wire \count_clk[0]_i_3_n_0 ;
  wire [31:0]count_clk_reg;
  wire \count_clk_reg[0]_i_2_n_0 ;
  wire \count_clk_reg[0]_i_2_n_1 ;
  wire \count_clk_reg[0]_i_2_n_2 ;
  wire \count_clk_reg[0]_i_2_n_3 ;
  wire \count_clk_reg[0]_i_2_n_4 ;
  wire \count_clk_reg[0]_i_2_n_5 ;
  wire \count_clk_reg[0]_i_2_n_6 ;
  wire \count_clk_reg[0]_i_2_n_7 ;
  wire \count_clk_reg[12]_i_1_n_0 ;
  wire \count_clk_reg[12]_i_1_n_1 ;
  wire \count_clk_reg[12]_i_1_n_2 ;
  wire \count_clk_reg[12]_i_1_n_3 ;
  wire \count_clk_reg[12]_i_1_n_4 ;
  wire \count_clk_reg[12]_i_1_n_5 ;
  wire \count_clk_reg[12]_i_1_n_6 ;
  wire \count_clk_reg[12]_i_1_n_7 ;
  wire \count_clk_reg[16]_i_1_n_0 ;
  wire \count_clk_reg[16]_i_1_n_1 ;
  wire \count_clk_reg[16]_i_1_n_2 ;
  wire \count_clk_reg[16]_i_1_n_3 ;
  wire \count_clk_reg[16]_i_1_n_4 ;
  wire \count_clk_reg[16]_i_1_n_5 ;
  wire \count_clk_reg[16]_i_1_n_6 ;
  wire \count_clk_reg[16]_i_1_n_7 ;
  wire \count_clk_reg[20]_i_1_n_0 ;
  wire \count_clk_reg[20]_i_1_n_1 ;
  wire \count_clk_reg[20]_i_1_n_2 ;
  wire \count_clk_reg[20]_i_1_n_3 ;
  wire \count_clk_reg[20]_i_1_n_4 ;
  wire \count_clk_reg[20]_i_1_n_5 ;
  wire \count_clk_reg[20]_i_1_n_6 ;
  wire \count_clk_reg[20]_i_1_n_7 ;
  wire \count_clk_reg[24]_i_1_n_0 ;
  wire \count_clk_reg[24]_i_1_n_1 ;
  wire \count_clk_reg[24]_i_1_n_2 ;
  wire \count_clk_reg[24]_i_1_n_3 ;
  wire \count_clk_reg[24]_i_1_n_4 ;
  wire \count_clk_reg[24]_i_1_n_5 ;
  wire \count_clk_reg[24]_i_1_n_6 ;
  wire \count_clk_reg[24]_i_1_n_7 ;
  wire \count_clk_reg[28]_i_1_n_1 ;
  wire \count_clk_reg[28]_i_1_n_2 ;
  wire \count_clk_reg[28]_i_1_n_3 ;
  wire \count_clk_reg[28]_i_1_n_4 ;
  wire \count_clk_reg[28]_i_1_n_5 ;
  wire \count_clk_reg[28]_i_1_n_6 ;
  wire \count_clk_reg[28]_i_1_n_7 ;
  wire \count_clk_reg[4]_i_1_n_0 ;
  wire \count_clk_reg[4]_i_1_n_1 ;
  wire \count_clk_reg[4]_i_1_n_2 ;
  wire \count_clk_reg[4]_i_1_n_3 ;
  wire \count_clk_reg[4]_i_1_n_4 ;
  wire \count_clk_reg[4]_i_1_n_5 ;
  wire \count_clk_reg[4]_i_1_n_6 ;
  wire \count_clk_reg[4]_i_1_n_7 ;
  wire \count_clk_reg[8]_i_1_n_0 ;
  wire \count_clk_reg[8]_i_1_n_1 ;
  wire \count_clk_reg[8]_i_1_n_2 ;
  wire \count_clk_reg[8]_i_1_n_3 ;
  wire \count_clk_reg[8]_i_1_n_4 ;
  wire \count_clk_reg[8]_i_1_n_5 ;
  wire \count_clk_reg[8]_i_1_n_6 ;
  wire \count_clk_reg[8]_i_1_n_7 ;
  wire go;
  wire go_IBUF;
  wire leftRightDirection;
  wire leftRightDirection_IBUF;
  wire [15:8]p_0_in;
  wire [7:0]parallelInSW;
  wire [7:0]parallelInSW_IBUF;
  wire [15:0]parallelOut;
  wire [15:0]parallelOut_OBUF;
  wire rst;
  wire rst_IBUF;
  wire \shiftRegister[15]_i_1_n_0 ;
  wire \shiftRegister[7]_i_1_n_0 ;
  wire \shiftRegister[7]_i_2_n_0 ;
  wire \shiftRegister_reg_n_0_[0] ;
  wire \shiftRegister_reg_n_0_[10] ;
  wire \shiftRegister_reg_n_0_[11] ;
  wire \shiftRegister_reg_n_0_[12] ;
  wire \shiftRegister_reg_n_0_[13] ;
  wire \shiftRegister_reg_n_0_[14] ;
  wire \shiftRegister_reg_n_0_[15] ;
  wire \shiftRegister_reg_n_0_[1] ;
  wire \shiftRegister_reg_n_0_[2] ;
  wire \shiftRegister_reg_n_0_[3] ;
  wire \shiftRegister_reg_n_0_[4] ;
  wire \shiftRegister_reg_n_0_[5] ;
  wire \shiftRegister_reg_n_0_[6] ;
  wire \shiftRegister_reg_n_0_[7] ;
  wire \shiftRegister_reg_n_0_[8] ;
  wire \shiftRegister_reg_n_0_[9] ;
  wire state;
  wire ws;
  wire ws_IBUF;
  wire [3:3]\NLW_count_clk_reg[28]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("clkDivider_time_synth.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(go_IBUF),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(go_IBUF),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ws_IBUF),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rst_IBUF),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[3]_i_10 
       (.I0(count_clk_reg[29]),
        .I1(count_clk_reg[27]),
        .I2(count_clk_reg[9]),
        .I3(count_clk_reg[19]),
        .O(\FSM_onehot_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_11 
       (.I0(count_clk_reg[28]),
        .I1(count_clk_reg[24]),
        .I2(count_clk_reg[7]),
        .I3(count_clk_reg[18]),
        .O(\FSM_onehot_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state[3]_i_4_n_0 ),
        .I1(\FSM_onehot_state[3]_i_5_n_0 ),
        .I2(\FSM_onehot_state[3]_i_6_n_0 ),
        .I3(\FSM_onehot_state[3]_i_7_n_0 ),
        .O(state));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(ws_IBUF),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(count_clk_reg[22]),
        .I1(count_clk_reg[0]),
        .I2(count_clk_reg[13]),
        .I3(count_clk_reg[12]),
        .I4(\FSM_onehot_state[3]_i_8_n_0 ),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(count_clk_reg[16]),
        .I1(count_clk_reg[1]),
        .I2(count_clk_reg[15]),
        .I3(count_clk_reg[6]),
        .I4(\FSM_onehot_state[3]_i_9_n_0 ),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(count_clk_reg[21]),
        .I1(count_clk_reg[4]),
        .I2(count_clk_reg[23]),
        .I3(count_clk_reg[2]),
        .I4(\FSM_onehot_state[3]_i_10_n_0 ),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(count_clk_reg[17]),
        .I1(count_clk_reg[5]),
        .I2(count_clk_reg[20]),
        .I3(count_clk_reg[3]),
        .I4(\FSM_onehot_state[3]_i_11_n_0 ),
        .O(\FSM_onehot_state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(count_clk_reg[26]),
        .I1(count_clk_reg[25]),
        .I2(count_clk_reg[8]),
        .I3(count_clk_reg[11]),
        .O(\FSM_onehot_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(count_clk_reg[30]),
        .I1(count_clk_reg[31]),
        .I2(count_clk_reg[10]),
        .I3(count_clk_reg[14]),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "DLY:0100,IDLE:0001,DONE:1000,READ:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "DLY:0100,IDLE:0001,DONE:1000,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Green),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "DLY:0100,IDLE:0001,DONE:1000,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(Green),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "DLY:0100,IDLE:0001,DONE:1000,READ:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[3]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  IBUF Load_IBUF_inst
       (.I(Load),
        .O(Load_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT5 #(
    .INIT(32'h0010FFFF)) 
    \count_clk[0]_i_1 
       (.I0(\FSM_onehot_state[3]_i_7_n_0 ),
        .I1(\FSM_onehot_state[3]_i_6_n_0 ),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[3]_i_4_n_0 ),
        .I4(rst_IBUF),
        .O(\count_clk[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_clk[0]_i_3 
       (.I0(count_clk_reg[0]),
        .O(\count_clk[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[0]_i_2_n_7 ),
        .Q(count_clk_reg[0]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_clk_reg[0]_i_2_n_0 ,\count_clk_reg[0]_i_2_n_1 ,\count_clk_reg[0]_i_2_n_2 ,\count_clk_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_clk_reg[0]_i_2_n_4 ,\count_clk_reg[0]_i_2_n_5 ,\count_clk_reg[0]_i_2_n_6 ,\count_clk_reg[0]_i_2_n_7 }),
        .S({count_clk_reg[3:1],\count_clk[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[8]_i_1_n_5 ),
        .Q(count_clk_reg[10]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[8]_i_1_n_4 ),
        .Q(count_clk_reg[11]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[12]_i_1_n_7 ),
        .Q(count_clk_reg[12]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[12]_i_1 
       (.CI(\count_clk_reg[8]_i_1_n_0 ),
        .CO({\count_clk_reg[12]_i_1_n_0 ,\count_clk_reg[12]_i_1_n_1 ,\count_clk_reg[12]_i_1_n_2 ,\count_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[12]_i_1_n_4 ,\count_clk_reg[12]_i_1_n_5 ,\count_clk_reg[12]_i_1_n_6 ,\count_clk_reg[12]_i_1_n_7 }),
        .S(count_clk_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[12]_i_1_n_6 ),
        .Q(count_clk_reg[13]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[12]_i_1_n_5 ),
        .Q(count_clk_reg[14]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[12]_i_1_n_4 ),
        .Q(count_clk_reg[15]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[16]_i_1_n_7 ),
        .Q(count_clk_reg[16]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[16]_i_1 
       (.CI(\count_clk_reg[12]_i_1_n_0 ),
        .CO({\count_clk_reg[16]_i_1_n_0 ,\count_clk_reg[16]_i_1_n_1 ,\count_clk_reg[16]_i_1_n_2 ,\count_clk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[16]_i_1_n_4 ,\count_clk_reg[16]_i_1_n_5 ,\count_clk_reg[16]_i_1_n_6 ,\count_clk_reg[16]_i_1_n_7 }),
        .S(count_clk_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[16]_i_1_n_6 ),
        .Q(count_clk_reg[17]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[16]_i_1_n_5 ),
        .Q(count_clk_reg[18]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[16]_i_1_n_4 ),
        .Q(count_clk_reg[19]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[0]_i_2_n_6 ),
        .Q(count_clk_reg[1]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[20]_i_1_n_7 ),
        .Q(count_clk_reg[20]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[20]_i_1 
       (.CI(\count_clk_reg[16]_i_1_n_0 ),
        .CO({\count_clk_reg[20]_i_1_n_0 ,\count_clk_reg[20]_i_1_n_1 ,\count_clk_reg[20]_i_1_n_2 ,\count_clk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[20]_i_1_n_4 ,\count_clk_reg[20]_i_1_n_5 ,\count_clk_reg[20]_i_1_n_6 ,\count_clk_reg[20]_i_1_n_7 }),
        .S(count_clk_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[20]_i_1_n_6 ),
        .Q(count_clk_reg[21]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[20]_i_1_n_5 ),
        .Q(count_clk_reg[22]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[20]_i_1_n_4 ),
        .Q(count_clk_reg[23]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[24]_i_1_n_7 ),
        .Q(count_clk_reg[24]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[24]_i_1 
       (.CI(\count_clk_reg[20]_i_1_n_0 ),
        .CO({\count_clk_reg[24]_i_1_n_0 ,\count_clk_reg[24]_i_1_n_1 ,\count_clk_reg[24]_i_1_n_2 ,\count_clk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[24]_i_1_n_4 ,\count_clk_reg[24]_i_1_n_5 ,\count_clk_reg[24]_i_1_n_6 ,\count_clk_reg[24]_i_1_n_7 }),
        .S(count_clk_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[24]_i_1_n_6 ),
        .Q(count_clk_reg[25]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[24]_i_1_n_5 ),
        .Q(count_clk_reg[26]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[24]_i_1_n_4 ),
        .Q(count_clk_reg[27]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[28]_i_1_n_7 ),
        .Q(count_clk_reg[28]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[28]_i_1 
       (.CI(\count_clk_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_clk_reg[28]_i_1_CO_UNCONNECTED [3],\count_clk_reg[28]_i_1_n_1 ,\count_clk_reg[28]_i_1_n_2 ,\count_clk_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[28]_i_1_n_4 ,\count_clk_reg[28]_i_1_n_5 ,\count_clk_reg[28]_i_1_n_6 ,\count_clk_reg[28]_i_1_n_7 }),
        .S(count_clk_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[28]_i_1_n_6 ),
        .Q(count_clk_reg[29]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[0]_i_2_n_5 ),
        .Q(count_clk_reg[2]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[28]_i_1_n_5 ),
        .Q(count_clk_reg[30]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[28]_i_1_n_4 ),
        .Q(count_clk_reg[31]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[0]_i_2_n_4 ),
        .Q(count_clk_reg[3]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[4]_i_1_n_7 ),
        .Q(count_clk_reg[4]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[4]_i_1 
       (.CI(\count_clk_reg[0]_i_2_n_0 ),
        .CO({\count_clk_reg[4]_i_1_n_0 ,\count_clk_reg[4]_i_1_n_1 ,\count_clk_reg[4]_i_1_n_2 ,\count_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[4]_i_1_n_4 ,\count_clk_reg[4]_i_1_n_5 ,\count_clk_reg[4]_i_1_n_6 ,\count_clk_reg[4]_i_1_n_7 }),
        .S(count_clk_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[4]_i_1_n_6 ),
        .Q(count_clk_reg[5]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[4]_i_1_n_5 ),
        .Q(count_clk_reg[6]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[4]_i_1_n_4 ),
        .Q(count_clk_reg[7]),
        .R(\count_clk[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[8]_i_1_n_7 ),
        .Q(count_clk_reg[8]),
        .R(\count_clk[0]_i_1_n_0 ));
  CARRY4 \count_clk_reg[8]_i_1 
       (.CI(\count_clk_reg[4]_i_1_n_0 ),
        .CO({\count_clk_reg[8]_i_1_n_0 ,\count_clk_reg[8]_i_1_n_1 ,\count_clk_reg[8]_i_1_n_2 ,\count_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_clk_reg[8]_i_1_n_4 ,\count_clk_reg[8]_i_1_n_5 ,\count_clk_reg[8]_i_1_n_6 ,\count_clk_reg[8]_i_1_n_7 }),
        .S(count_clk_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_clk_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_clk_reg[8]_i_1_n_6 ),
        .Q(count_clk_reg[9]),
        .R(\count_clk[0]_i_1_n_0 ));
  IBUF go_IBUF_inst
       (.I(go),
        .O(go_IBUF));
  IBUF leftRightDirection_IBUF_inst
       (.I(leftRightDirection),
        .O(leftRightDirection_IBUF));
  IBUF \parallelInSW_IBUF[0]_inst 
       (.I(parallelInSW[0]),
        .O(parallelInSW_IBUF[0]));
  IBUF \parallelInSW_IBUF[1]_inst 
       (.I(parallelInSW[1]),
        .O(parallelInSW_IBUF[1]));
  IBUF \parallelInSW_IBUF[2]_inst 
       (.I(parallelInSW[2]),
        .O(parallelInSW_IBUF[2]));
  IBUF \parallelInSW_IBUF[3]_inst 
       (.I(parallelInSW[3]),
        .O(parallelInSW_IBUF[3]));
  IBUF \parallelInSW_IBUF[4]_inst 
       (.I(parallelInSW[4]),
        .O(parallelInSW_IBUF[4]));
  IBUF \parallelInSW_IBUF[5]_inst 
       (.I(parallelInSW[5]),
        .O(parallelInSW_IBUF[5]));
  IBUF \parallelInSW_IBUF[6]_inst 
       (.I(parallelInSW[6]),
        .O(parallelInSW_IBUF[6]));
  IBUF \parallelInSW_IBUF[7]_inst 
       (.I(parallelInSW[7]),
        .O(parallelInSW_IBUF[7]));
  OBUF \parallelOut_OBUF[0]_inst 
       (.I(parallelOut_OBUF[0]),
        .O(parallelOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[0]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[15] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[1] ),
        .O(parallelOut_OBUF[0]));
  OBUF \parallelOut_OBUF[10]_inst 
       (.I(parallelOut_OBUF[10]),
        .O(parallelOut[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[10]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[9] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[11] ),
        .O(parallelOut_OBUF[10]));
  OBUF \parallelOut_OBUF[11]_inst 
       (.I(parallelOut_OBUF[11]),
        .O(parallelOut[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[11]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[10] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[12] ),
        .O(parallelOut_OBUF[11]));
  OBUF \parallelOut_OBUF[12]_inst 
       (.I(parallelOut_OBUF[12]),
        .O(parallelOut[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[12]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[11] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[13] ),
        .O(parallelOut_OBUF[12]));
  OBUF \parallelOut_OBUF[13]_inst 
       (.I(parallelOut_OBUF[13]),
        .O(parallelOut[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[13]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[12] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[14] ),
        .O(parallelOut_OBUF[13]));
  OBUF \parallelOut_OBUF[14]_inst 
       (.I(parallelOut_OBUF[14]),
        .O(parallelOut[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[14]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[13] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[15] ),
        .O(parallelOut_OBUF[14]));
  OBUF \parallelOut_OBUF[15]_inst 
       (.I(parallelOut_OBUF[15]),
        .O(parallelOut[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[15]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[14] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[0] ),
        .O(parallelOut_OBUF[15]));
  OBUF \parallelOut_OBUF[1]_inst 
       (.I(parallelOut_OBUF[1]),
        .O(parallelOut[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[1]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[0] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[2] ),
        .O(parallelOut_OBUF[1]));
  OBUF \parallelOut_OBUF[2]_inst 
       (.I(parallelOut_OBUF[2]),
        .O(parallelOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[2]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[1] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[3] ),
        .O(parallelOut_OBUF[2]));
  OBUF \parallelOut_OBUF[3]_inst 
       (.I(parallelOut_OBUF[3]),
        .O(parallelOut[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[3]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[2] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[4] ),
        .O(parallelOut_OBUF[3]));
  OBUF \parallelOut_OBUF[4]_inst 
       (.I(parallelOut_OBUF[4]),
        .O(parallelOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[4]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[3] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[5] ),
        .O(parallelOut_OBUF[4]));
  OBUF \parallelOut_OBUF[5]_inst 
       (.I(parallelOut_OBUF[5]),
        .O(parallelOut[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[5]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[4] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[6] ),
        .O(parallelOut_OBUF[5]));
  OBUF \parallelOut_OBUF[6]_inst 
       (.I(parallelOut_OBUF[6]),
        .O(parallelOut[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[6]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[5] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[7] ),
        .O(parallelOut_OBUF[6]));
  OBUF \parallelOut_OBUF[7]_inst 
       (.I(parallelOut_OBUF[7]),
        .O(parallelOut[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[7]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[6] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[8] ),
        .O(parallelOut_OBUF[7]));
  OBUF \parallelOut_OBUF[8]_inst 
       (.I(parallelOut_OBUF[8]),
        .O(parallelOut[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[8]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[7] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[9] ),
        .O(parallelOut_OBUF[8]));
  OBUF \parallelOut_OBUF[9]_inst 
       (.I(parallelOut_OBUF[9]),
        .O(parallelOut[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \parallelOut_OBUF[9]_inst_i_1 
       (.I0(\shiftRegister_reg_n_0_[8] ),
        .I1(leftRightDirection_IBUF),
        .I2(\shiftRegister_reg_n_0_[10] ),
        .O(parallelOut_OBUF[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[10]_i_1 
       (.I0(parallelInSW_IBUF[2]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[9] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[11] ),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[11]_i_1 
       (.I0(parallelInSW_IBUF[3]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[10] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[12] ),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[12]_i_1 
       (.I0(parallelInSW_IBUF[4]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[11] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[13] ),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[13]_i_1 
       (.I0(parallelInSW_IBUF[5]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[12] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[14] ),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[14]_i_1 
       (.I0(parallelInSW_IBUF[6]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[13] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[15] ),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \shiftRegister[15]_i_1 
       (.I0(\FSM_onehot_state[3]_i_7_n_0 ),
        .I1(\FSM_onehot_state[3]_i_6_n_0 ),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[3]_i_4_n_0 ),
        .I4(Green),
        .I5(rst_IBUF),
        .O(\shiftRegister[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[15]_i_2 
       (.I0(parallelInSW_IBUF[7]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[14] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[0] ),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \shiftRegister[7]_i_1 
       (.I0(Load_IBUF),
        .I1(\shiftRegister[7]_i_2_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_5_n_0 ),
        .I4(\FSM_onehot_state[3]_i_6_n_0 ),
        .I5(\FSM_onehot_state[3]_i_7_n_0 ),
        .O(\shiftRegister[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \shiftRegister[7]_i_2 
       (.I0(rst_IBUF),
        .I1(Green),
        .O(\shiftRegister[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[8]_i_1 
       (.I0(parallelInSW_IBUF[0]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[7] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[9] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftRegister[9]_i_1 
       (.I0(parallelInSW_IBUF[1]),
        .I1(Load_IBUF),
        .I2(\shiftRegister_reg_n_0_[8] ),
        .I3(leftRightDirection_IBUF),
        .I4(\shiftRegister_reg_n_0_[10] ),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b1)) 
    \shiftRegister_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[0]),
        .Q(\shiftRegister_reg_n_0_[0] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[10]),
        .Q(\shiftRegister_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[11]),
        .Q(\shiftRegister_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[12]),
        .Q(\shiftRegister_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[13]),
        .Q(\shiftRegister_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[14]),
        .Q(\shiftRegister_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[15]),
        .Q(\shiftRegister_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[1]),
        .Q(\shiftRegister_reg_n_0_[1] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shiftRegister_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[2]),
        .Q(\shiftRegister_reg_n_0_[2] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[3]),
        .Q(\shiftRegister_reg_n_0_[3] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shiftRegister_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[4]),
        .Q(\shiftRegister_reg_n_0_[4] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[5]),
        .Q(\shiftRegister_reg_n_0_[5] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shiftRegister_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[6]),
        .Q(\shiftRegister_reg_n_0_[6] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shiftRegister_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(parallelOut_OBUF[7]),
        .Q(\shiftRegister_reg_n_0_[7] ),
        .R(\shiftRegister[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(\shiftRegister_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftRegister_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\shiftRegister[15]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(\shiftRegister_reg_n_0_[9] ),
        .R(1'b0));
  IBUF ws_IBUF_inst
       (.I(ws),
        .O(ws_IBUF));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
