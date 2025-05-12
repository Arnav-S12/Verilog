//full subtractor testbench

module FullSub_tb;
 	reg a,b,c;
 	wire diff,bor;
	

  FullSubtractor dut (   //check file name here before executing
	.a(a),
	.b(b),
	.c(c),
	.diff(diff),
	.bor(bor)
   );

   initial begin
	$display("a b c | diff bor");
	$display("-----------");

	a=0; b=0; c=0; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=0; b=0; c=1; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=0; b=1; c=0; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=0; b=1; c=1; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=1; b=0; c=0; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=1; b=0; c=1; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=1; b=1; c=0; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);
	a=1; b=1; c=1; #10 ; $display("%b %b %b | %b %b", a, b, c, diff, bor);	

	$finish;
   end
endmodule
