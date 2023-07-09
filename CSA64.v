`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2023 15:35:22
// Design Name: 
// Module Name: CSA64
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CSA64(a,b,ci,s,co);
	input signed [63:0] a,b;
	input ci;
	output signed [63:0] s;
	output co;
	wire[3:0] s_10,s_11;
	//wire [1:0] s_30,s_31;
	wire [3:0]s_20,s_21,s_30,s_31,s_40,s_41,s_50,s_51,s_60,s_61,s_70,s_71;
	wire [3:0]s_80,s_81,s_90,s_91,s_100,s_101,s_110,s_111,s_120,s_121,s_130,s_131,s_140,s_141,s_150,s_151; //extended
	wire co_10,co_11,co_20,co_21,co_30,co_31,co_40,co_41,co_50,co_51,co_60,co_61,co_70,co_71;
	wire co_80,co_81,co_90,co_91,co_100,co_101,co_110,co_111,co_120,co_121,co_130,co_131,co_140,co_141,co_150,co_151;//extended
	wire co_0,co_1,co_2,co_3,co_4,co_5,co_6,co_7,co_8,co_9,co_010,co_011,co_12,co_13,co_14,co_15;
	
	
	ripple_adder adder_0(.A(a[3:0]),.B(b[3:0]),.Cin(ci),.S(s[3:0]),.Cout(co_0));
	ripple_adder adder_10(.A(a[7:4]),.B(b[7:4]),.Cin(1'b0),.S(s_10),.Cout(co_10));
	ripple_adder adder_11(.A(a[7:4]),.B(b[7:4]),.Cin(1'b1),.S(s_11),.Cout(co_11));
	ripple_adder adder_20(.A(a[11:8]),.B(b[11:8]),.Cin(1'b0),.S(s_20),.Cout(co_20));
	ripple_adder adder_21(.A(a[11:8]),.B(b[11:8]),.Cin(1'b1),.S(s_21),.Cout(co_21));
	ripple_adder adder_30(.A(a[15:12]),.B(b[15:12]),.Cin(1'b0),.S(s_30),.Cout(co_30));
	ripple_adder adder_31(.A(a[15:12]),.B(b[15:12]),.Cin(1'b1),.S(s_31),.Cout(co_31));
	ripple_adder adder_40(.A(a[19:16]),.B(b[19:16]),.Cin(1'b0),.S(s_40),.Cout(co_40));
	ripple_adder adder_41(.A(a[19:16]),.B(b[19:16]),.Cin(1'b1),.S(s_41),.Cout(co_41));
	ripple_adder adder_50(.A(a[23:20]),.B(b[23:20]),.Cin(1'b0),.S(s_50),.Cout(co_50));
	ripple_adder adder_51(.A(a[23:20]),.B(b[23:20]),.Cin(1'b1),.S(s_51),.Cout(co_51));
	ripple_adder adder_60(.A(a[27:24]),.B(b[27:24]),.Cin(1'b0),.S(s_60),.Cout(co_60));
	ripple_adder adder_61(.A(a[27:24]),.B(b[27:24]),.Cin(1'b1),.S(s_61),.Cout(co_61));
	ripple_adder adder_70(.A(a[31:28]),.B(b[31:28]),.Cin(1'b0),.S(s_70),.Cout(co_70));
	ripple_adder adder_71(.A(a[31:28]),.B(b[31:28]),.Cin(1'b1),.S(s_71),.Cout(co_71));
	//extended
	ripple_adder adder_80(.A(a[35:32]),.B(b[35:32]),.Cin(1'b0),.S(s_80),.Cout(co_80));
	ripple_adder adder_81(.A(a[35:32]),.B(b[35:32]),.Cin(1'b1),.S(s_81),.Cout(co_81));
	ripple_adder adder_90(.A(a[39:36]),.B(b[39:36]),.Cin(1'b0),.S(s_90),.Cout(co_90));
	ripple_adder adder_91(.A(a[39:36]),.B(b[39:36]),.Cin(1'b1),.S(s_91),.Cout(co_91));
	ripple_adder adder_100(.A(a[43:40]),.B(b[43:40]),.Cin(1'b0),.S(s_100),.Cout(co_100));
	ripple_adder adder_101(.A(a[43:40]),.B(b[43:40]),.Cin(1'b1),.S(s_101),.Cout(co_101));
	ripple_adder adder_110(.A(a[47:44]),.B(b[47:44]),.Cin(1'b0),.S(s_110),.Cout(co_110));
	ripple_adder adder_111(.A(a[47:44]),.B(b[47:44]),.Cin(1'b1),.S(s_111),.Cout(co_111));
	ripple_adder adder_120(.A(a[51:48]),.B(b[51:48]),.Cin(1'b0),.S(s_120),.Cout(co_120));
	ripple_adder adder_121(.A(a[51:48]),.B(b[51:48]),.Cin(1'b1),.S(s_121),.Cout(co_121));
	ripple_adder adder_130(.A(a[55:52]),.B(b[55:52]),.Cin(1'b0),.S(s_130),.Cout(co_130));
	ripple_adder adder_131(.A(a[55:52]),.B(b[55:52]),.Cin(1'b1),.S(s_131),.Cout(co_131));
	ripple_adder adder_140(.A(a[59:56]),.B(b[59:56]),.Cin(1'b0),.S(s_140),.Cout(co_140));
	ripple_adder adder_141(.A(a[59:56]),.B(b[59:56]),.Cin(1'b1),.S(s_141),.Cout(co_141));
	ripple_adder adder_150(.A(a[63:60]),.B(b[63:60]),.Cin(1'b0),.S(s_150),.Cout(co_150));
	ripple_adder adder_151(.A(a[63:60]),.B(b[63:60]),.Cin(1'b1),.S(s_151),.Cout(co_151));
	
	

	
	assign co_1 = co_0?co_11:co_10;
	assign co_2 = co_1?co_21:co_20;
	assign co_3 = co_2?co_31:co_30;
	assign co_4 = co_3?co_41:co_40;
	assign co_5 = co_4?co_51:co_50;
	assign co_6 = co_5?co_61:co_60;
	assign co_7 = co_6?co_71:co_70;
	
	assign co_8 = co_7?co_81:co_80;
	assign co_9 = co_8?co_91:co_90;
	assign co_010 = co_9?co_101:co_100;
	assign co_011 = co_010?co_111:co_110;
	assign co_12 = co_011?co_121:co_120;
	assign co_13 = co_12?co_131:co_130;
	assign co_14 = co_13?co_141:co_140;
	assign co  = co_14 ? co_151:co_150;
	
	
	mux_2_to_1 #(.N(4))mux_1(.in1(s_10),.in2(s_11),.sel(co_0),.out(s[7:4]));
	mux_2_to_1 #(.N(4))mux_2(.in1(s_20),.in2(s_21),.sel(co_1),.out(s[11:8]));
	mux_2_to_1 #(.N(4)) mux_3(.in1(s_30),.in2(s_31),.sel(co_2),.out(s[15:12]));
	mux_2_to_1 #(.N(4))mux_4(.in1(s_40),.in2(s_41),.sel(co_3),.out(s[19:16]));
	mux_2_to_1 #(.N(4))mux_5(.in1(s_50),.in2(s_51),.sel(co_4),.out(s[23:20]));
	mux_2_to_1 #(.N(4))mux_6(.in1(s_60),.in2(s_61),.sel(co_5),.out(s[27:24]));
	mux_2_to_1 mux_7(.in1(s_70),.in2(s_71),.sel(co_6),.out(s[31:28]));
	
	mux_2_to_1 #(.N(4))mux_8(.in1(s_80),.in2(s_81),.sel(co_7),.out(s[35:32]));
	mux_2_to_1 #(.N(4))mux_9(.in1(s_90),.in2(s_91),.sel(co_8),.out(s[39:36]));
	mux_2_to_1 #(.N(4)) mux_10(.in1(s_100),.in2(s_101),.sel(co_9),.out(s[43:40]));
	mux_2_to_1 #(.N(4))mux_11(.in1(s_110),.in2(s_111),.sel(co_010),.out(s[47:44]));
	mux_2_to_1 #(.N(4))mux_12(.in1(s_120),.in2(s_121),.sel(co_011),.out(s[51:48]));
	mux_2_to_1 #(.N(4))mux_13(.in1(s_130),.in2(s_131),.sel(co_12),.out(s[55:52]));
	mux_2_to_1 #(.N(4))mux_14(.in1(s_140),.in2(s_141),.sel(co_13),.out(s[59:56]));
	mux_2_to_1 mux_15(.in1(s_150),.in2(s_151),.sel(co_14),.out(s[63:60]));
	
	
endmodule
