`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2025 00:18:45
// Design Name: 
// Module Name: SR_flipflop_tb
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


module SR_flipflop_tb;
reg clk,reset,S,R;
wire Q;
SR_ff dut(.clk(clk),.reset(reset),.S(S),.R(R),.Q(Q));

initial begin 
	clk=0;
	forever #5 clk=~clk;
end
initial begin
reset=1;S=0;R=0;#10; 
reset=1;S=0;R=1;#10; 
reset=1;S=1;R=0;#10; 
reset=1;S=1;R=1;#10; 
reset=0;S=0;R=0;#10;
reset=0;S=0;R=1;#10;
reset=0;S=1;R=0;#10;
reset=0;S=1;R=1;#10;
    end
initial $monitor("%b %b %b |%b",reset,S,R,Q);

endmodule
