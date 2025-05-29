//4 bit comparator testbench


module comparator_4bit_tb;
 reg [3:0] A;
 reg [3:0] B;
 wire AlB,AgB,AeB;
 
comparator_4bit dut(.A(A),.B(B),.AlB(AlB),.AgB(AgB),.AeB(AeB));
 
initial begin
A=4'b0010;B=4'b1001; #10;
A=4'b1010;B=4'b1001; #10;
A=4'b0010;B=4'b0010; #10;
A=4'b1110;B=4'b1000; #10;
A=4'b0011;B=4'b1001; #10;
end
initial begin
$display("A B | < > =");
$display("-----------");
$monitor("%d %d | %b %b %b",A,B,AlB,AgB,AeB);
end

endmodule

