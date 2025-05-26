//bidirectional shift register (4 bits)

module Bidir_shiftreg (input d, input clk,l,r, output reg [3:0] q);

initial q=0;
always@(posedge clk)
begin

if (l==1 && r==0) begin                  
q = {q[2:0],d}; end
else if (r==1 && l==0) begin
q = {d,q[3:1]}; end
else begin 
q=q; end

end
endmodule


/*case({l,r})
	2'b01: q = {q[2:0],1'b0};
	2'b10: q = {1'b0,q[3:1]}; 
	2'b00: q=q;
	2'b11: q=q;
	
endcase

end
endmodule*/



