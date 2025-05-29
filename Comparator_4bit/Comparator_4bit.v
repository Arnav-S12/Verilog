//4 bit comparator


module comparator_4bit(input [3:0]A,B, output reg AlB,AgB,AeB);

always@(*) begin

if(A<B) begin AlB<=1;AgB<=0;AeB<=0; end
else if (A>B) begin AlB<=0;AgB<=1;AeB<=0; end
else  begin AlB<=0;AgB<=0;AeB<=1; end

end
endmodule
