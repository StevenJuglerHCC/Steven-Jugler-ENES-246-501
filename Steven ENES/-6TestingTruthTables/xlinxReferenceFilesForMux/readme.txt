*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2012 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.0
Date Last Modified: 25JUL2012
Date Created: 25JUL2012

Associated Filename: xapp522.zip

Associated Document: XAPP522, Multiplexer Design Techniques for Datapath 
                     Performance with Minimized Routing Resources.

Supported Device(s): All Spartan-6, Virtex-6 and 7 series FPGAs.
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 

<Describe changes to the reference design ZIP file using this format>

            Readme  
Date        Version      Revision Description
=========================================================================
25JUL2012    1.0         Initial Xilinx release.
=========================================================================



2. OVERVIEW

This package contains two VHDL and two Verilog files which implement
optimum multiplexers of the styles described in XAPP522. In each case 
the multiplexer implemented is the largest that will fit within a 
single logic Slice.

As described in XAPP522, the synthesis of multiplexers from RTL code will
often provide adequate results for the majority of designs. The files 
provided in this file illustrate the coding style required to instantiate 
primitives and ensure a particular style and total control over the 
optimum implementation.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

Xilinx ISE 13.4 or higher (Includes XST and ISIM).
 or
Vivado 2012.1 or higher.



4. DESIGN FILES

standard_mux16.vhd - VHDL for a 16-Bit 2^N Multiplexer in One Slice.

standard_mux16.v   - Verilog for a 16-Bit 2^N Multiplexer in One Slice.


one_hot_mux12.vhd  - VHDL for a 12-Bit 1-of-N Multiplexer in One Slice.

one_hot_mux12.v    - Verilog for a 12-Bit 1-of-N Multiplexer in One Slice.




5. INSTALLATION AND OPERATING INSTRUCTIONS 

The files provided are standard VHDL and Verilog files that can be used
"AS IS" in an HDL project or as reference examples in the implementation
of multiplexers of various sizes as described in XAPP522.

The VHDL code below could be used to instantiate the two multiplexer 
'components' provided into a design. The corresponding VHDL files would
need to be added to the ISE or Vivado project in the usual way before 
processing the design. Note that the number of input data bits and 
select signals required for each component is different.

 
Component declarations...

  component standard_mux16
  Port (  data_in : in std_logic_vector(15 downto 0);
              sel : in std_logic_vector(3 downto 0);
         data_out : out std_logic);
  end component;


  component one_hot_mux12
  port (  data_in : in std_logic_vector(11 downto 0);
              sel : in std_logic_vector(11 downto 0);
         data_out : out std_logic);
  end component;


Component instantiations...

  standard: standard_mux16 
  port map (  data_in => data_in_16bit,
                  sel => select_4bit,
             data_out => standard_out);


  one_hot: one_hot_mux12 
  port map (  data_in => data_in_12bit,
                  sel => select_12bit,
             data_out => one_hot_out);


The Verilog code below could be used to instantiate the two multiplexer 
'components' provided into a design. The corresponding Verilog files 
would need to be added to the ISE or Vivado project in the usual way
before processing the design. Note that the number of input data bits 
and select signals required for each component is different.



Component instantiations...

  standard_mux16 standard(
     .data_in  (data_in_16bit),
     .sel      (select_4bit),
     .data_out (standard_out));

  one_hot_mux12 one_hot(
     .data_in  (data_in_12bit),
     .sel      (select_12bit),
     .data_out (one_hot_out));



6. OTHER INFORMATION

Note that the files provided implement combinatorial multiplexers. 
A clock input could be added and applied to the instantiation of a
flip-flop connected to the output of the multiplexer logic if 
required. Below are examples of code to instantiate a simple flip-flop.


VHDL...

    mux_out_flop: FD
    port map (  D => data_out,
                Q => data_out_reg,
                C => clk);


Verilog...

    FD mux_out_flop(  
      .D   (data_out),
      .Q   (data_out_reg),
      .C   (clk));
  



7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  