//bcd to 7-segment testbench

module BCD_7segment_tb;
	reg i1,i2,i3,i4;
	wire a,b,c,d,e,f,g;

   BCD_7segment dut(
	.i1(i1),
	.i2(i2),
	.i3(i3),
	.i4(i4),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

 integer i;
     initial
      begin 
	for (i=0; i<10; i=i+1)
	  begin 
		{i1,i2,i3,i4}=i;
		   #10;
	  end
      end
 initial
	$monitor("i1=%b  i2=%b  i3=%b i4=%b | a=%b b=%b c=%b d=%b e=%b f=%b g=%b ",i1,i2,i3,i4,a,b,c,d,e,f,g);
   
endmodule

 
