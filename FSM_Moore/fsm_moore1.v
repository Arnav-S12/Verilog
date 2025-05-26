//moore sequence detector - 1001


module moore1(input clk,reset,ip, output reg op);
reg [1:0] state;

always@(posedge clk or posedge reset) begin

if (reset) begin
 state<=0;op<=0; end
 
else begin

 case({state,ip})
 
  3'b000: begin state<=2'b00; op<=0; end
  3'b001: begin state<=2'b01; op<=0; end
  3'b010: begin state<=2'b10; op<=0; end
  3'b011: begin state<=2'b01; op<=0; end
  3'b100: begin state<=2'b11; op<=0; end
  3'b101: begin state<=2'b01; op<=0; end
  3'b110: begin state<=2'b00; op<=0; end
  3'b111: begin state<=2'b01; op<=1; end
  
  endcase
  end
  
end
  
endmodule
