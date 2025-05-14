//jk flipflop


module JK_ff(input J,K,clk,reset,output reg Q);

initial Q=0;
  always@(posedge clk or posedge reset)
    begin 
    if(reset) begin
    	Q<=0;
    	end
    else
    begin
    if(J==0&&K==0) begin Q<=Q; end
    else if(J==0&&K==1) begin Q<=0; end
    else if(J==1&&K==0) begin Q<=1; end
    else if(J==1&&K==1) begin Q<=~Q; end
    end
    end
    
endmodule
