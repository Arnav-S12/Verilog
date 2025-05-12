`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2025 19:50:24
// Design Name: 
// Module Name: FA_using_HA_tb
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

//full adder testbench with for loop

module FA_using_ha_tb;
 	reg a,b,c;
 	wire sum,carry;

  FA_using_HA dut (
	.a(a),
	.b(b),
	.c(c),
	.sumf(sum),
	.carryf(carry)
   );

    integer i;
     initial
      begin 
	for (i=0; i<8; i=i+1)
	  begin 
		{a,b,c}=i;
		   #10;
	  end
      end
     initial
     
	$monitor("a = %b  b = %b  c = %b  |  sum = %b  carry = %b",a,b,c,sum,carry);
   
endmodule
