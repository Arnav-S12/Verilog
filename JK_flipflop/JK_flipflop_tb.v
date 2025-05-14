//jk flipflop testbench


module JK_ff_tb;
	reg J,K,clk,reset;
	wire Q;
	
  JK_ff dut (.J(J),.K(K),.clk(clk),.reset(reset),.Q(Q));
  initial begin
  clk=0;
    forever #5 clk=~clk;
  end
  
    integer i;
  initial begin  
  for(i=0;i<8;i=i+1) begin
  	{reset,J,K}=i;
  	#10;
  	end
  
  end
  initial $monitor(" %b  %b  %b  %b  |  %b",clk,reset,J,K,Q);
  
endmodule

