`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 12:51:31 PM
// Design Name: 
// Module Name: Distance
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

module Distance
//parameters
#
(
    parameter SIZE = 32,
    parameter DIMENSION = 3
)
// ports
(   
    
    input  [SIZE -1: 0] p [DIMENSION -1:0],
    input  [SIZE -1: 0] q [DIMENSION -1:0],
    
    output logic [SIZE -1: 0] dst

);

    logic [SIZE -1: 0] val;
    
    // EUCLIDEAN approach
    always_comb begin 
        
        val = 0;
        
        for(int i = 0; i<DIMENSION; i++) begin
            val += (p[i] - q[i])**2;
        end

        dst = val;

    end
endmodule
//////////////////////////////////////////////////////////////////////////////////


