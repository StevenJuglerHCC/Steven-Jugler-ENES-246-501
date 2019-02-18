`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2019 02:21:17 PM
// Design Name: 
// Module Name: Lab4P2Creative
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Lab4P2Creative(
    input [5:0] SW,
    output [3:0] LED
    );
    //system 1 wires
    wire nand1;
    wire and1;
    wire not1;
    wire not2;
    wire or1;
    wire nor1;
    //system 2 wires
    wire not3;
    wire not4;
    wire and1;
    wire and2;
    wire or2;
    
    //system 1 code
    nand a1(nand1, SW[0],SW[1]);
    or  o1(or1, SW[0], SW[2]);
    and a2(and1, nand1,or1);
    not n1(not1, and1);
    nor o2(nor1, nand1, or1);
    not n2(not2, nor1);
    
    //system 2 code 
    not n3(not3, SW[3]); 
    not n4(not4,SW[5]);
    and a3(and3, not3, not4);
    and a4(and4, SW[3],SW[4]);
    or  o3(or2, and3, and4);
    
    assign LED[0] = not1;
    assign LED[1] = not2;
    assign LED[2] = or2;
    assign LED[3] = 1;
    
endmodule
