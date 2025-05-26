//4 bit down counter testbench (async)


module counter_down_async_tb;
reg clk;
wire out0,out1,out2,out3;

counter_down_async dut(.clk(clk),.out0(out0),.out1(out1),.out2(out2),.out3(out3));

initial begin clk=0;
repeat(30) #5 clk=~clk;
end

endmodule
