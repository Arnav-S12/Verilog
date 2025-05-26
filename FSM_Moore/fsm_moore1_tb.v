//moore sequence detector - 1001 - testbench


module moore1_tb;
reg clk,reset,ip;
wire op;
//wire [1:0] state;

moore1 dut(.clk(clk),.reset(reset),.ip(ip),.op(op));

initial begin clk=0;
repeat(60) #5 clk=~clk; end

initial begin 
ip=0; reset=1; #10;
ip=0; reset=0; #10;
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
