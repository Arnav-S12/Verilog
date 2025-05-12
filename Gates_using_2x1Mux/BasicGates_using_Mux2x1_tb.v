//basic gates using 2x1 mux testbench


module BasicGates_using_Mux2x1_tb;
	reg A,B;
	wire AandB;


  And_Mux2x1 uut1 (.A(A),.B(B),.AandB(AandB));
  Or_Mux2x1 uut2 (.A(A),.B(B),.AorB(AorB));
  Nor_Mux2x1 uut3 (.A(A),.B(B),.AnorB(AnorB));
  Nand_Mux2x1 uut4 (.A(A),.B(B),.AnandB(AnandB));
  Not_Mux2x1 uut5 (.A(A),.notA(notA));
  Xor_Mux2x1 uut6 (.A(A),.B(B),.AxorB(AxorB));
  Xnor_Mux2x1 uut7 (.A(A),.B(B),.AxnorB(AxnorB));

     integer i;
     initial
      begin 
	for (i=0; i<4; i=i+1)
	  begin 
		{A,B}=i;
		   #10;
		$display("And: %b %b | %b ",A,B,AandB);
		$display("Or: %b %b | %b ",A,B,AorB);
		$display("Nor: %b %b | %b ",A,B,AnorB);
		$display("Nand: %b %b | %b ",A,B,AnandB);
		$display("Not: %b | %b ",A,notA);
		$display("Xor: %b %b | %b ",A,B,AxorB);
		$display("Xnor: %b %b | %b ",A,B,AxnorB);
	  end
      end
      /*initial 
	
	 $monitor("And: %b %b | %b ",A,B,AandB);

	initial $monitor("Or: %b %b | %b ",A,B,AorB);

	initial $monitor("Nor: %b %b | %b ",A,B,AnorB);

	 initial $monitor("Nand: %b %b | %b ",A,B,AnandB);

	initial $monitor("Not: %b | %b ",A,notA);

	initial $monitor("Xor: %b %b | %b ",A,B,AxorB);

	initial $monitor("Xnor: %b %b | %b ",A,B,AxnorB);*/
      
  endmodule





     
