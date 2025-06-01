module HalfAdder(input a,b, output sumh, carryh);
	
	xor x1(sumh,a,b);
	and a1(carryh,a,b);
endmodule

module FA_using_HA(input a,b,c, output sumf,carryf);
wire w1,w2,w3;

HalfAdder ha1(.a(a),.b(b),.sumh(w1),.carryh(w2));
HalfAdder ha2(.a(w1),.b(c),.sumh(sumf),.carryh(w3));
 or(carryf,w3,w2);

endmodule
