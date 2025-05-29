////moore sequence detector - 1001


module moore1(input clk,reset,ip, output reg op);
reg [2:0] state;

always@(posedge clk or posedge reset) begin

if (reset) begin
 state<=0;op<=0; end
 
else begin

 case({state,ip})
 
  4'b0000: begin state<=3'b000; op<=0; end   //state = 0; ip = 0
  4'b0001: begin state<=3'b001; op<=0; end   //state = 0; ip = 1
  4'b0010: begin state<=3'b010; op<=0; end   //state = 1; ip = 0
  4'b0011: begin state<=3'b001; op<=0; end   //state = 1; ip = 1
  4'b0100: begin state<=3'b011; op<=0; end   //state = 2; ip = 0
  4'b0101: begin state<=3'b001; op<=0; end   //state = 2; ip = 1
  4'b0110: begin state<=3'b000; op<=0; end   //state = 3; ip = 0
  4'b0111: begin state<=3'b100; op<=1; end   //state = 3; ip = 1
  4'b1000: begin state<=3'b010; op<=0; end   //state = 4; ip = 0
  4'b1001: begin state<=3'b001; op<=0; end   //state = 4; ip = 1
  
  endcase
  end
  
end
  
endmodule
