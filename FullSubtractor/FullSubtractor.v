//full subtractor - data flow

module FullSubtractor3(
	input a,b,c,
	output bor,carry
	);

   assign bor=a^b^c;
   assign carry=((~a)&b)|(b&c)|(c&(~a));
   
endmodule
