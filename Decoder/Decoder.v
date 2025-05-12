//2x4 decoder

module Decoder(
	input i1,i2,
	output a,b,c,d);

  assign d=(~i1)&(~i2);
  assign c=(~i1)&(i2);
  assign b=(i1)&(~i2);
  assign a=(i1)&(i2);

endmodule
