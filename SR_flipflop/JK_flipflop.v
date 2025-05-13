`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 23:24:28
// Design Name: 
// Module Name: JK_flipflop
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

//jk flipflop


module JK_ff(input J,K,clk,output reg Q);

  always@(posedge clk)
    begin 
    Q<=0;
    if(J==0&&K==0) begin Q<=Q; end
    else if(J==0&&K==1) begin Q<=1; end
    else if(J==1&&K==0) begin Q<=0; end
    else if(J==1&&K==1) begin Q<=~Q; end
    end
    
endmodule
