//4 bit up counter testbench (sync)


module counter_up_tb;
reg clk,reset;
wire [3:0] out;

counter_up dut(.clk(clk),.reset(reset),.out(out));

initial begin clk=0;
repeat(40) #5 clk=~clk;
end

initial begin
reset=1; #20;
reset=0;
end

endmodule

