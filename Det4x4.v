module Det4x4(In, Out);

	input [31:0] In [15:0];
	output [31:0] Out;
	
	reg [31:0] Temp1, Temp2, Temp3, Temp4, Temp5, Temp6;
	
	Det3x3 x00(In[5], In[6], In[7], In[9], In[10], In[11], In[13], In[14], In[15], Temp5);
	Mul m00(Temp5, In[0], Temp1);
	
	Det3x3 x01(In[1], In[2], In[3], In[9], In[10], In[11], In[13], In[14], In[15], Temp5);
	Mul m01(Temp5, In[4], Temp6);
	Sub s00(32'b0, Temp6, Temp2);
	
	Det3x3 x02(In[1], In[2], In[3], In[5], In[6], In[7], In[13], In[14], In[15], Temp5);
	Mul m02(Temp5, In[8], Temp3);
	
	Det3x3 x03(In[1], In[2], In[3], In[5], In[6], In[7], In[9], In[10], In[11], Temp5);
	Mul m03(Temp5, In[12], Temp6);
	Sub s01(32'b0, Temp6, Temp4);
	
	Sub s02(Temp1, Temp2, Temp5);
	Sum s03(Temp5, Temp3, Temp6);
	Sub s04(Temp6, Temp4, Temp5);
	
	assign Out = Temp5;
	
endmodule