//bidiretional sift registe testbench (4 bit)


module Bidir_tb;
reg [3:0] d;
reg clk,l,r;
wire [3:0] q;

Bidir_shiftreg dut(.d(d),.clk(clk),.l(l),.r(r),.q(q));

	initial begin clk=0;l=0;r=0;
	repeat(20) #5 clk=~clk; end
	
	initial begin
	
	d=1;l=1;r=0;#10;
	d=0;l=1;r=0;#10;
	d=1;l=1;r=0;#10;
	d=1;l=1;r=0;#10;
	d=0;l=0;r=1;#10;
	d=1;l=0;r=1;#10;
	d=1;l=1;r=1;#10;
	
	
	end
	
	endmodule
	
	
