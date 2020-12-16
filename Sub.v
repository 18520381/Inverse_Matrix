module Sub(I1, I2, Out);
	
	input [31:0] I1, I2;
	output [31:0] Out;
	
	assign Out = I1 - I2;
	
endmodule