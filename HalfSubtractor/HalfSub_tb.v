//half subtractor testbench

module HalfSub_tb;
	reg a,b;
	wire diff,bor;

   HalfSubtractor dut(
	.a(a),
	.b(b),
	.diff(diff),
	.bor(bor));

  initial begin
	$display("a b | diff bor");
	$display("-----------");

	
	a=0; b=0;  #10 ; $display("%b %b  | %b %b", a, b,  diff, bor);
	a=0; b=1;  #10 ; $display("%b %b  | %b %b", a, b,  diff, bor);
	
	a=1; b=0;  #10 ; $display("%b %b | %b %b", a, b,  diff, bor);
	
	
	a=1; b=1;  #10 ; $display("%b %b  | %b %b", a, b, diff, bor);	

	$finish;
   end
endmodule
