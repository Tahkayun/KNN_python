`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 09:39:58 PM
// Design Name: 
// Module Name: knn
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

module single_adder
#(parameter WIDTH = 32)
(
    input [WIDTH -1: 0] x,
    input [WIDTH -1: 0] q,
    output reg [WIDTH -1: 0] out
    );
    
    
    always_comb begin
    
        out = x + q;
    
    end
    
    
    
    
endmodule
