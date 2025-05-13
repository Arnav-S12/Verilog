`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 23:25:56
// Design Name: 
// Module Name: JK_flipflop_tb
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


//jk flipflop testbench


module JK_ff_tb;
	reg J,K,clk;
	wire Q;
	
  JK_ff dut (.J(J),.K(K),.clk(clk),.Q(Q));
  initial begin
  clk=0;
    forever #5 clk=~clk;
  end
    
  initial begin  
  J=1;K=0;#10;
  J=1;K=1;#10;
  J=0;K=1;#10;
  J=0;K=0;#10;
  end
  initial $monitor("%b %b %b | %b",clk,J,K,Q);
  
endmodule
