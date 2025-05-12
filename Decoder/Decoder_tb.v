//2x4 decoder testbench

module Decoder_tb;
	reg i1,i2;
	wire a,b,c,d;

   Decoder dut(
	.i1(i1),
	.i2(i2),
	.a(a),
	.b(b),
	.c(c),
	.d(d));

  initial begin
	$display("i1 i2 | a b c d");
	$display("-----------");

	
	i1=0; i2=0;  #10 ; $display("%b %b  | %b %b %b %b", i1, i2,  a, b, c, d);
	i1=0; i2=1;  #10 ; $display("%b %b  | %b %b %b %b", i1, i2,  a, b, c, d);	
	i1=1; i2=0;  #10 ; $display("%b %b  | %b %b %b %b", i1, i2,  a, b, c, d);
	i1=1; i2=1;  #10 ; $display("%b %b  | %b %b %b %b", i1, i2,  a, b, c, d);	

   end
endmodule
