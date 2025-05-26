//asychronous up counter (4 bit)


module T_ff(input T,clk, output reg Q,Qb);

initial Q=1; 
  always@(negedge clk)
  begin

	if(T) begin
	   Q<=~Q;
	   end
	else begin
	   Q<=Q; 
	   end
  Qb=~Q;	
  end
endmodule 	

module counter_async(input clk, output out0,out1,out2,out3);

wire w1,w2,w3;

T_ff ff1(.T(1),.clk(clk),.Q(out3),.Qb(w1));
T_ff ff2(.T(1),.clk(out3),.Q(out2),.Qb(w2));
T_ff ff3(.T(1),.clk(out2),.Q(out1),.Qb(w3));
T_ff ff4(.T(1),.clk(out1),.Q(out0),.Qb());


endmodule

