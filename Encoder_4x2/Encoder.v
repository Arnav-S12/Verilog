//4x2 encoder

module Encoder(	
	input a,b,c,d,
        output o1,o2);

 assign o1 = a|b;
 assign o2 = a|c;

endmodule
