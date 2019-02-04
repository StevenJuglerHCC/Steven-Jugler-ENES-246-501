`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HCC
// Engineer: Scott Foerster
// 
// Create Date: 11/14/2018 10:32:01 AM
// Design Name: Switches connected to LEDs
// Module Name: switchLED
//////////////////////////////////////////////////////////////////////////////////

module switchLED(
    input [15:0] SW,
    output [15:0] LED
    );
    assign LED[0] = SW[15];
    assign LED[1] = SW[12];
    assign LED[2] = SW[10];
    assign LED[3] = SW[7];
    assign LED[4] = SW[8];
    assign LED[5] = SW[9];
    assign LED[6] = SW[11];
    assign LED[7] = SW[1];
    assign LED[8] = SW[4];
    assign LED[9] = SW[3];
    assign LED[10] = SW[6];
    assign LED[11] = SW[2];
    assign LED[12] = SW[5];
    assign LED[13] = SW[14];
    assign LED[14] = SW[0];
    assign LED[15] = SW[13];
    
endmodule
