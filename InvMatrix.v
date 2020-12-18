module InvMatrix(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15,
				O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15);

	input [31:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15;
	output [31:0] O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15;
	
	reg [31:0] Temp1 [15:0];
	reg [31:0] Temp2 [15:0];
	reg [31:0] Temp3;

	AddiMatrix a1(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, 
	Temp1[0], Temp1[1], Temp1[2], Temp1[3], Temp1[4], Temp1[5], Temp1[6], Temp1[7], Temp1[8], Temp1[9], Temp1[10], Temp1[11], Temp1[12], Temp1[13], Temp1[14], Temp1[15]);
	
	Det4x4 b1(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, Temp3);
	
	Div d00(Temp1[0], Temp3, Temp2[0]);
	Div d01(Temp1[1], Temp3, Temp2[1]);
	Div d02(Temp1[2], Temp3, Temp2[2]);
	Div d03(Temp1[3], Temp3, Temp2[3]);
	Div d04(Temp1[4], Temp3, Temp2[4]);
	Div d05(Temp1[5], Temp3, Temp2[5]);
	Div d06(Temp1[6], Temp3, Temp2[6]);
	Div d07(Temp1[7], Temp3, Temp2[7]);
	Div d08(Temp1[8], Temp3, Temp2[8]);
	Div d09(Temp1[9], Temp3, Temp2[9]);
	Div d10(Temp1[10], Temp3, Temp2[10]);
	Div d11(Temp1[11], Temp3, Temp2[11]);
	Div d12(Temp1[12], Temp3, Temp2[12]);
	Div d13(Temp1[13], Temp3, Temp2[13]);
	Div d14(Temp1[14], Temp3, Temp2[14]);
	Div d15(Temp1[15], Temp3, Temp2[15]);
	
	assign O0 = Temp2[0];
	assign O1 = Temp2[1];
	assign O2 = Temp2[2];
	assign O3 = Temp2[3];
	assign O4 = Temp2[4];
	assign O5 = Temp2[5];
	assign O6 = Temp2[6];
	assign O7 = Temp2[7];
	assign O8 = Temp2[8];
	assign O9 = Temp2[9];
	assign O10 = Temp2[10];
	assign O11 = Temp2[11];
	assign O12 = Temp2[12];
	assign O13 = Temp2[13];
	assign O14 = Temp2[14];
	assign O15 = Temp2[15];
	
endmodule