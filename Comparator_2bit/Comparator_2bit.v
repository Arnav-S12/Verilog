`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2025 18:51:28
// Design Name: 
// Module Name: Comparator_2bit
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


module Comparator_2bit(
    input a1,a2,b1,b2,
    output AgB,AeB,AlB
    );
    
    assign AgB = (a1&~b1)|(a1&a2&~b2)|(a2&~b1&~b2);
    assign AeB = (a1&b1&b2&a2)|(~a1&a2&b2&~b1)|(~a1&~a2&~b1&~b2)|(a1&b1&~a2&~b2);
    assign AlB = (~a1&b1)|(~a1&~a2&b2)|(~a2&b1&b2);
endmodule
