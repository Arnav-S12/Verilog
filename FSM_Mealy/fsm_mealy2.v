//mealy sequence detector - 1100 


module mealy2(input clk,reset,ip,output reg [1:0] state,output reg op);

reg [1:0] next_state;

always@(negedge clk or posedge reset) begin

 if(reset) begin
   state<=0;op<=0; end
   
 else begin
   state = next_state; end
   
end


always@(state or ip) begin
  
  case(state)
    
    2'b00: begin 
     if(ip==0) next_state=2'b00;
     else next_state=2'b01; end
    2'b01: begin
     if(ip==0) next_state=2'b00;
     else next_state=2'b10; end
    2'b10: begin
     if(ip==0) next_state=2'b11;
     else next_state=2'b10; end
    2'b11: begin
     if(ip==0) next_state=2'b00;
     else next_state=2'b01; end
     
  endcase

assign op = (state == 2'b11) && (ip == 0) ? 1:0 ;

end
endmodule
