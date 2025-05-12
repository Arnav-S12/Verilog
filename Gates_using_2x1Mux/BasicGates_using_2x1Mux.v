//basic gates using 2x1 mux


module Mux2x1(input i0,i1,s, output op);
	assign op = (~s & i0) | (s & i1);
endmodule

//and gate
module And_Mux2x1(input A,B, output AandB);     
	Mux2x1 andgate(.i0(0),.i1(B),.s(A),.op(AandB));    //mux inputs 0,B , select line A
endmodule

//or gate
module Or_Mux2x1(input A,B,output AorB);
	Mux2x1 orgate(.i0(B),.i1(1),.s(A),.op(AorB));
endmodule

//nand gate
module Nand_Mux2x1(input A,B,output AnandB);
	Mux2x1 nandgate(.i0(1),.i1(~B),.s(A),.op(AnandB));
endmodule

//nor gate
module Nor_Mux2x1(input A,B,output AnorB);
	Mux2x1 norgate(.i0(~B),.i1(0),.s(A),.op(AnorB));
endmodule

//not gate
module Not_Mux2x1(input A,output notA);
	Mux2x1 notgate(.i0(1),.i1(0),.s(A),.op(notA));
endmodule

//xor gate
module Xor_Mux2x1(input A,B,output AxorB);
	Mux2x1 xorgate(.i0(B),.i1(~B),.s(A),.op(AxorB));
endmodule

//xnor gate
module Xnor_Mux2x1(input A,B,output AxnorB);
	Mux2x1 xnorgate(.i0(~B),.i1(B),.s(A),.op(AxnorB));
endmodule
