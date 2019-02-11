`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2019 04:04:53 PM
// Design Name: 
// Module Name: CreativeLab3
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

module CreativeLab3(

input [2:0] SW,
output [0:1] LED

    );
   wire nand1;
   wire nand2;
   wire xor1;
   wire xor2;
   tri w;
   tri x;
   
   xor x1(xor1,SW[0],SW[1]);
   xor x2(w,xor1, SW[2]);
   nand n3(nand1, SW[0], SW[1]);
   nand n1(x,nand1,SW[2]);
   
   assign LED[0]=w;
   assign LED[1]=x; 
    
    
endmodule
