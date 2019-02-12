//
///////////////////////////////////////////////////////////////////////////////////////////
// Copyright © 2011-12, Xilinx, Inc.
// This file contains confidential and proprietary information of Xilinx, Inc. and is
// protected under U.S. and international copyright and other intellectual property laws.
///////////////////////////////////////////////////////////////////////////////////////////
//
// Disclaimer:
// This disclaimer is not a license and does not grant any rights to the materials
// distributed herewith. Except as otherwise provided in a valid license issued to
// you by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE
// MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY
// DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
// INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,
// OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable
// (whether in contract or tort, including negligence, or under any other theory
// of liability) for any loss or damage of any kind or nature related to, arising
// under or in connection with these materials, including for any direct, or any
// indirect, special, incidental, or consequential loss or damage (including loss
// of data, profits, goodwill, or any type of loss or damage suffered as a result
// of any action brought by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-safe, or for use in any
// application requiring fail-safe performance, such as life-support or safety
// devices or systems, Class III medical devices, nuclear facilities, applications
// related to the deployment of airbags, or any other applications that could lead
// to death, personal injury, or severe property or environmental damage
// (individually and collectively, "Critical Applications"). Customer assumes the
// sole risk and liability of any use of Xilinx products in Critical Applications,
// subject only to applicable laws and regulations governing limitations on product
// liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
//
///////////////////////////////////////////////////////////////////////////////////////////
//
// 12:1 multiplexer with 'one-hot' selection in one Slice.
//
// Suitable for Spartan-6, Virtex-6 and 7-Series devices.
//
// This is an example of a multiplexer implemented using the techniques described 
// in XAPP522.
//
// 25th May 2012.
//
///////////////////////////////////////////////////////////////////////////////////////////
//
// Format of this file.
//
// The module defines the implementation of the logic using Xilinx primitives.
// These ensure predictable synthesis results and maximise the density of the 
// implementation. The Unisim Library is used to define Xilinx primitives. It is also 
// used during simulation. 
// The source can be viewed at %XILINX%\verilog\src\unisims\
// 
///////////////////////////////////////////////////////////////////////////////////////////
//

`timescale 1 ps / 1ps

module one_hot_mux12 (
input  [11:0]  data_in,
input  [11:0]  sel,
output         data_out);

//
///////////////////////////////////////////////////////////////////////////////////////////
//
// Wires used in standard_mux16
//
///////////////////////////////////////////////////////////////////////////////////////////
//

wire  [3:0] muxcy_sel;
wire  [2:0] muxcy_carry;

//
///////////////////////////////////////////////////////////////////////////////////////////
//
// Start of one_hot_mux12 circuit description
//
///////////////////////////////////////////////////////////////////////////////////////////
//	

LUT6 #(
        .INIT    (64'h0000000F003355FF))
selection0_lut( 
        .I0     (data_in[0]),
        .I1     (data_in[1]),
        .I2     (data_in[2]),
        .I3     (sel[0]),
        .I4     (sel[1]),
        .I5     (sel[2]),
        .O      (muxcy_sel[0])); 


MUXCY combiner0_muxcy ( 
       .DI      (1'b1),
       .CI      (1'b0),                     
       .S       (muxcy_sel[0]),
       .O       (muxcy_carry[0])) ;


LUT6 #(
        .INIT    (64'h0000000F003355FF))
selection1_lut( 
        .I0     (data_in[3]),
        .I1     (data_in[4]),
        .I2     (data_in[5]),
        .I3     (sel[3]),
        .I4     (sel[4]),
        .I5     (sel[5]),
        .O      (muxcy_sel[1])); 


MUXCY combiner1_muxcy ( 
       .DI      (1'b1),
       .CI      (muxcy_carry[0]),                     
       .S       (muxcy_sel[1]),
       .O       (muxcy_carry[1])) ;


LUT6 #(
        .INIT    (64'h0000000F003355FF))
selection2_lut( 
        .I0     (data_in[6]),
        .I1     (data_in[7]),
        .I2     (data_in[8]),
        .I3     (sel[6]),
        .I4     (sel[7]),
        .I5     (sel[8]),
        .O      (muxcy_sel[2])); 


MUXCY combiner2_muxcy ( 
       .DI      (1'b1),
       .CI      (muxcy_carry[1]),                     
       .S       (muxcy_sel[2]),
       .O       (muxcy_carry[2])) ;


LUT6 #(
        .INIT    (64'h0000000F003355FF))
selection3_lut( 
        .I0     (data_in[9]),
        .I1     (data_in[10]),
        .I2     (data_in[11]),
        .I3     (sel[9]),
        .I4     (sel[10]),
        .I5     (sel[11]),
        .O      (muxcy_sel[3])); 


MUXCY combiner3_muxcy ( 
       .DI      (1'b1),
       .CI      (muxcy_carry[2]),                     
       .S       (muxcy_sel[3]),
       .O       (data_out)) ;


endmodule


///////////////////////////////////////////////////////////////////////////////////////////
//
// END OF FILE one_hot_mux12.v
//
///////////////////////////////////////////////////////////////////////////////////////////


