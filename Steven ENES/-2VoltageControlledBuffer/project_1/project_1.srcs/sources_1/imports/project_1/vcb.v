`timescale 1ns / 1ps

module vcb(
   input [15:0] SW,
   output tri [15:0]LED
   );
   bufif1 b1(LED[0], SW[0], SW[0]);
   bufif1 b2(LED[0], SW[1], SW[1]);
 
endmodule