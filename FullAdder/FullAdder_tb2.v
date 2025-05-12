//full adder testbench with for loop

module FullAdder_tb2;
 	reg a,b,c;
 	wire sum,carry;

  FullAdder dut (
	.a(a),
	.b(b),
	.c(c),
	.sum(sum),
	.carry(carry)
   );

    integer i;
     initial
      begin 
	for (i=0; i<8; i=i+1)
	  begin 
		{a,b,c}=i;
		   #10;
	  end
      end
     initial
	$monitor("a=%b  b=%b  c=%b | sum=%b  carry=%b",a,b,c,sum,carry);
   
endmodule
