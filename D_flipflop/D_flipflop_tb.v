//D flipflop with non-blocking assignment testbench


module D_flipflop_tb;
reg D,clk,reset;
wire Q;

D_flipflop dut (.D(D),.clk(clk),.reset(reset),.Q(Q));

initial begin 
	clk=0;
	forever #5 clk=~clk;
end

initial begin

$display("reset clk D | Q ~Q");
$display("-------------------");

reset=0;D=0;#10; 
reset=1;D=1;#10; 
reset=0;D=1;#10; 
reset=1;D=0;#10; 
end
initial
$monitor("  %b   %b   %b |  %b  %b",reset,clk,D,Q,~Q);


endmodule
////////////////

