//4 bit down counter

module counter_down(input clk,reset, output reg [3:0]out);

initial out=4'b1111;

always@(posedge clk)
begin 

if(reset) begin
out=4'b1111; end

else begin
out = out-1; end

end

endmodule
