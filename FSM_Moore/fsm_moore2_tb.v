//moore sequence detector - 1100 - testbench


module moore2_tb;
reg clk,reset,ip;
wire op;
//wire [2:0] state;

moore2 dut(.clk(clk),.reset(reset),.ip(ip),.op(op));

initial begin clk=0;
repeat(60) #5 clk=~clk; end

initial begin 
ip=0; reset=1; #10;
ip=0; reset=0; #10;
ip=1; #10;
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
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=0; #10;
ip=1; #10;
ip=0; #10;
ip=1; #10;



end

endmodule
