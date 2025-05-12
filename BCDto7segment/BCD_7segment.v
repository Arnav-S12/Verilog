//bcd to 7-segment

module BCD_7segment(
	input i1,i2,i3,i4,
	output a,b,c,d,e,f,g);

assign a = i1 | i3 | (i2&i4) | (~i2&~i4);
assign b = ~i2 | (~i3&~i4) | i4;
assign c = i2 | ~i3 | i4;
assign d = (~i2&~i4) | (i3&~i4) | (i2&~i3&i4) | (i2&~i3) | i1;
assign e = (~i2&~i4) | (i2&~i4);
assign f = i1 | (i3&~i4) | (i2&~i3) | (i2&~i4);
assign g = i1 | (i2&~i3) | (~i2&i3) | (i3&~i4);

endmodule

