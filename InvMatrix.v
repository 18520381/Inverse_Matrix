module InvMatrix(In, Out);

	input [31:0] In [15:0];
	output [31:0] Out [15:0];
	
	reg [31:0] Temp1 [15:0];
	reg [31:0] Temp2 [15:0];
	reg [31:0] Temp3;

	AddiMatrix a1(In, Temp1);
	Det4x4 b1(In, Temp3);
	
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
	
	assign Out = Temp2;
	
endmodule