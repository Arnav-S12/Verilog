//4 bit up-down counter testbench (sync)


module counter_updown_tb;
reg clk,reset,ud;
wire [3:0] out;

counter_updown dut(.clk(clk),.reset(reset),.ud(ud),.out(out));

initial begin clk=0;
repeat(40) #5 clk=~clk;
end

initial begin
reset=1;ud=0; #20;
reset=0;ud=1; #50;
ud=0;
end

endmodule

