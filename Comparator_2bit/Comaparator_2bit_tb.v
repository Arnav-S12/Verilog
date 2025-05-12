`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 19:19:49
// Design Name: 
// Module Name: Comaparator_2bit_tb
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


module Comaparator_2bit_tb;
    reg a1,a2,b1,b2;
    wire AgB,AeB,AlB;
    
    Comparator_2bit dut( .a1(a1),.a2(a2),.b1(b1),.b2(b2),.AgB(AgB),.AeB(AeB),.AlB(AlB));
    
     integer i;
     initial
      begin 
	 for (i=0; i<16; i=i+1)
	   begin 
		{a1,a2,b1,b2}=i;
		   #10;
	   end
      end
 initial begin
    $display("A1 A2  B1 B2  |  A>B  A=B  A<B");
    $display("-------------------------------"); 
    $monitor("%b  %b   %b  %b  | %b   %b   %b",a1,a2,b1,b2,AgB,AeB,AlB);
    end
endmodule
