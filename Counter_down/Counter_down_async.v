//asychronous down counter (4 bit)


module T_ff(input T,clk, output reg Q,Qb);

initial Q=1; 
  always@(posedge clk)
  begin

	if(T) begin
	   Q<=~Q;
	   end
	else begin
	   Q<=Q; 
	   end
	Qb=~Q;	end
endmodule 	

module counter_down_async(input clk, output out0,out1,out2,out3);

wire w1,w2,w3;

T_ff ff1(.T(1),.clk(clk),.Q(out0),.Qb(w1));
T_ff ff2(.T(1),.clk(w1),.Q(out1),.Qb(w2));
T_ff ff3(.T(1),.clk(w2),.Q(out2),.Qb(w3));
T_ff ff4(.T(1),.clk(w3),.Q(out3),.Qb());


endmodule

