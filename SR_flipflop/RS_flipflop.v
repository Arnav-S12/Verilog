`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 23:37:11
// Design Name: 
// Module Name: RS_flipflop
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

module SR_ff ( input clk, reset,S,R,output reg Q);
  
  always@(posedge clk or negedge reset)
  begin
  Q<=0;
        if(~reset) Q <= 0;
        else begin
            if(S==0&&R==0) begin Q<=Q; end
            if(S==0&&R==1) begin Q<=0; end
            if(S==1&&R==0) begin Q<=1; end
            if(S==1&&R==1) begin Q<=1'bx; end
        end end
endmodule
  
