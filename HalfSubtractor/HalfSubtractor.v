//half subtractor


module HalfAdder(
	input a,b,
	output diff,bor);

	xor(diff,a,b);
	and(bor,~a,b);

endmodule
