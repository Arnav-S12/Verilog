//4x2 encoder testbench

module Encoder_tb;
	reg a,b,c,d;
	wire o1,o2;

   Encoder dut(
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.o1(o1),
	.o2(o2));

  initial begin
	$display("a b c d | o1 o2");
	$display("-----------");

	a=0; b=0; c=0; d=1;  #10 ; $display("%b %b %b %b | %b %b", a, b, c, d, o1, o2);
	a=0; b=0; c=1; d=0;  #10 ; $display("%b %b %b %b | %b %b", a, b, c, d, o1, o2);	
	a=0; b=1; c=0; d=0;  #10 ; $display("%b %b %b %b | %b %b", a, b, c, d, o1, o2);
	a=1; b=0; c=0; d=0;  #10 ; $display("%b %b %b %b | %b %b", a, b, c, d, o1, o2);	

	$finish;
   end
endmodule
