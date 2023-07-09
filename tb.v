`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2023 16:09:27
// Design Name: 
// Module Name: tb
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


module tb;
reg signed[63:0] a,b;
reg ci; 
wire signed[63:0]s;
wire co;
parameter DELY=10;
CSA64 adder_64bits_inst(
.a(a),
.b(b),
.ci(ci),
.s(s),
.co(co));

initial begin
     //  a=1; b=2;ci=0;
 a=-64'd7; b=64'd3;ci=0;
#DELY  a=64'd75; b=64'd4;ci=0;
#DELY  a=64'd43; b=64'd95;ci=0;
#DELY  a=64'd43; b=64'd95;ci=0;

#DELY $stop;
end

endmodule
