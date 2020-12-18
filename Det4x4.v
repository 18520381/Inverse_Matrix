module Det4x4(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, Out);

	input [31:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15;
	output [31:0] Out;
	
	reg [31:0] Temp1, Temp2, Temp3, Temp4, Temp5, Temp6;
	
	Det3x3 x00(I5, I6, I7, I9, I10, I11, I13, I14, I15, Temp5);
	Mul m00(Temp5, I0, Temp1);
	
	Det3x3 x01(I1, I2, I3, I9, I10, I11, I13, I14, I15, Temp5);
	Mul m01(Temp5, I4, Temp6);
	Sub s00(32'b0, Temp6, Temp2);
	
	Det3x3 x02(I1, I2, I3, I5, I6, I7, I13, I14, I15, Temp5);
	Mul m02(Temp5, I8, Temp3);
	
	Det3x3 x03(I1, I2, I3, I5, I6, I7, I9, I10, I11, Temp5);
	Mul m03(Temp5, I12, Temp6);
	Sub s01(32'b0, Temp6, Temp4);
	
	Sub s02(Temp1, Temp2, Temp5);
	Sum s03(Temp5, Temp3, Temp6);
	Sub s04(Temp6, Temp4, Temp5);
	
	assign Out = Temp5;
	
endmodule