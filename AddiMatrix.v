module AddiMatrix(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, 
				O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15);

	input [31:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15;
	output [31:0] O0, O1, O2, O3, O4, O5, O6, O7, O8, O9, O10, O11, O12, O13, O14, O15;
	
	reg [31:0] In [15:0];
	reg [31:0] Temp1 [15:0];
	reg [31:0] Temp2 [15:0];
	
	Sum s00(I15, 32'b0, In[0]);
	Sum s01(I14, 32'b0, In[1]);
	Sum s02(I13, 32'b0, In[2]);
	Sum s03(I12, 32'b0, In[3]);
	Sum s04(I11, 32'b0, In[4]);
	Sum s05(I10, 32'b0, In[5]);
	Sum s06(I9, 32'b0, In[6]);
	Sum s07(I8, 32'b0, In[7]);
	Sum s08(I7, 32'b0, In[8]);
	Sum s09(I6, 32'b0, In[9]);
	Sum s10(I5, 32'b0, In[10]);
	Sum s11(I4, 32'b0, In[11]);
	Sum s12(I3, 32'b0, In[12]);
	Sum s13(I2, 32'b0, In[13]);
	Sum s14(I1, 32'b0, In[14]);
	Sum s15(I0, 32'b0, In[15]);
	
	Det3x3 d00(In[5], In[6], In[7], In[9], In[10], In[11], In[13], In[14], In[15], Temp1[0]);
	Det3x3 d01(In[4], In[6], In[7], In[8], In[10], In[11], In[12], In[14], In[15], Temp1[1]);
	Det3x3 d02(In[4], In[5], In[7], In[8], In[9], In[11], In[12], In[13], In[15], Temp1[2]);
	Det3x3 d03(In[4], In[5], In[6], In[8], In[9], In[10], In[12], In[13], In[14], Temp1[3]);
	
	Det3x3 d04(In[1], In[2], In[3], In[9], In[10], In[11], In[13], In[14], In[15], Temp1[4]);
	Det3x3 d05(In[0], In[2], In[3], In[8], In[10], In[11], In[12], In[14], In[15], Temp1[5]);
	Det3x3 d06(In[0], In[1], In[3], In[8], In[9], In[11], In[12], In[13], In[15], Temp1[6]);
	Det3x3 d07(In[0], In[1], In[2], In[8], In[9], In[10], In[12], In[13], In[14], Temp1[7]);
	
	Det3x3 d08(In[1], In[2], In[3], In[5], In[6], In[7], In[13], In[14], In[15], Temp1[8]);
	Det3x3 d09(In[0], In[2], In[3], In[4], In[6], In[7], In[12], In[14], In[15], Temp1[9]);
	Det3x3 d10(In[0], In[1], In[3], In[4], In[5], In[7], In[12], In[13], In[15], Temp1[10]);
	Det3x3 d11(In[0], In[1], In[2], In[4], In[5], In[6], In[12], In[13], In[14], Temp1[11]);
	
	Det3x3 d12(In[1], In[2], In[3], In[5], In[6], In[7], In[9], In[10], In[11], Temp1[12]);
	Det3x3 d13(In[0], In[2], In[3], In[4], In[6], In[7], In[8], In[10], In[11], Temp1[13]);
	Det3x3 d14(In[0], In[1], In[3], In[4], In[5], In[7], In[8], In[9], In[11], Temp1[14]);
	Det3x3 d15(In[0], In[1], In[2], In[4], In[5], In[6], In[8], In[9], In[10], Temp1[15]);
	
	Sum t00(32'b0, Temp1[0], Temp2[0]);
	Sub t01(32'b0, Temp1[1], Temp2[1]);
	Sum t02(32'b0, Temp1[2], Temp2[2]);
	Sub t03(32'b0, Temp1[3], Temp2[3]);
	Sub t04(32'b0, Temp1[4], Temp2[4]);
	Sum t05(32'b0, Temp1[5], Temp2[5]);
	Sub t06(32'b0, Temp1[6], Temp2[6]);
	Sum t07(32'b0, Temp1[7], Temp2[7]);
	Sum t08(32'b0, Temp1[8], Temp2[8]);
	Sub t09(32'b0, Temp1[9], Temp2[9]);
	Sum t10(32'b0, Temp1[10], Temp2[10]);
	Sub t11(32'b0, Temp1[11], Temp2[11]);
	Sub t12(32'b0, Temp1[12], Temp2[12]);
	Sum t13(32'b0, Temp1[13], Temp2[13]);
	Sub t14(32'b0, Temp1[14], Temp2[14]);
	Sum t15(32'b0, Temp1[15], Temp2[15]);
	
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