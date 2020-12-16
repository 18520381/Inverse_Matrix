module Det3x3(I11, I12, I13, I21, I22, I23, I31, I32, I33, Out);

	input [31:0] I11, I12, I13, I21, I22, I23, I31, I32, I33;
	output [31:0] Out;
	
	wire [31:0] Temp1, Temp2, Temp3, Temp4;
	
	Mul m00(I11, I22, Temp3);
	Mul m01(Temp3, I33, Temp4);
	Sum s05(Temp4, 32'b0, Temp1);
	
	Mul m02(I12, I23, Temp3);
	Mul m03(Temp3, I31, Temp4);
	Sum s00(Temp1, Temp4, Temp2);
	
	Mul m04(I13, I21, Temp3);
	Mul m05(Temp3, I32, Temp4);
	Sum s01(Temp2, Temp4, Temp1);
	
	Mul m06(I13, I22, Temp3);
	Mul m07(Temp3, I31, Temp4);
	Sub s02(Temp1, Temp4, Temp2);
	
	Mul m08(I11, I23, Temp3);
	Mul m09(Temp3, I32, Temp4);
	Sub s03(Temp2, Temp4, Temp1);
	
	Mul m10(I12, I21, Temp3);
	Mul m11(Temp3, I33, Temp4);
	Sub s04(Temp1, Temp4, Temp2);
	
	assign Out = Temp2;
	
endmodule