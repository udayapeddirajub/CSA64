`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 11:35:48
// Design Name: 
// Module Name: ripple_adder
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


module ripple_adder(input Cin,[3:0]A,B,output Cout,[3:0]S);
wire w1,w2,w3;
FA1 b1(.a(A[0]),.b(B[0]),.cin(Cin),.sum(S[0]),.cout(w1));
FA1 b2(.a(A[1]),.b(B[1]),.cin(w1),.sum(S[1]),.cout(w2));
FA1 b3(.a(A[2]),.b(B[2]),.cin(w2),.sum(S[2]),.cout(w3));
FA1 b4(.a(A[3]),.b(B[3]),.cin(w3),.sum(S[3]),.cout(Cout));

endmodule
