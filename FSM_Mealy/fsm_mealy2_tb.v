//mealy sequence detector - 1100 - testbench


module mealy2_tb;
 reg clk,reset,ip;
 wire op;
 wire [1:0] state;
 
mealy2 dut(.clk(clk),.reset(reset),.ip(ip),.op(op),.state(state));

initial begin clk=0;
repeat(60) #5 clk=~clk; end

initial begin

reset=1; ip=0; #10;
reset=0; ip=0; #10;
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
ip=0; #10;
ip=1; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=1; #10;



end

endmodule
