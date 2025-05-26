//4 bit down counter testbench


module counter_down_tb;
reg clk,reset;
wire [3:0] out;

counter_down dut(.clk(clk),.reset(reset),.out(out));

initial begin clk=0;
repeat(40) #5 clk=~clk;
end

initial begin
reset=1; #20;
reset=0;
end

endmodule

