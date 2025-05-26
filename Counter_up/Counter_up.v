//4 bit up counter (sync)

module counter_up(input clk,reset, output reg [3:0]out);

initial out=4'b0000;

always@(posedge clk)
begin 

if(reset) begin
out=4'b0000; end

else begin
out = out+1; end

end

endmodule
