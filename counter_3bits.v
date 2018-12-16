`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/16 17:11:22
// Design Name: 
// Module Name: counter_3bits
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


module counter_3bits(
    input clk,
    input rst_n,
    output [2:0] A,
    output [2:0] Qn
    );
    dff d0(~clk,rst_n,Qn[0],A[0],Qn[0]);
    dff d1(~A[0],rst_n,Qn[1],A[1],Qn[1]);
    dff d2(~A[1],rst_n,Qn[2],A[2],Qn[2]);
endmodule
