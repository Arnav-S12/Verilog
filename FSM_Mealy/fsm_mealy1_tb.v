//mealy sequence detector - 1001 - testbench


module mealy1_tb;
 reg clk,reset,ip;
 wire op;
 
mealy1 dut(.clk(clk),.reset(reset),.ip(ip),.op(op));

initial begin clk=0;
repeat(60) #5 clk=~clk; end

initial begin

reset=1; ip=0; #10;
reset=0; ip=0; #10;
ip=1; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=1; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=1; #10;



end

endmodule
