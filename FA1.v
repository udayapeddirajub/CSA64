`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 11:36:41
// Design Name: 
// Module Name: FA1
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


module FA1(input cin,a,b,output cout,sum);
wire x,y,z;
xor x1(x,b,cin);
assign sum=x?~a:a;
assign cout=x?a:b;
endmodule
