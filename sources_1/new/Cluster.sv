`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/11/2022 07:30:58 PM
// Design Name: 
// Module Name: Cluster
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


module Cluster  //clst
#
(
    parameter DIMENSION = 3,
    parameter SIZE = 32,
    parameter CLSTR_SIZE = 2,
    parameter ARRAY_SIZE = 6
)
(
    input clk,
    input rst,
    input [SIZE -1: 0] q [DIMENSION -1:0],
    input [SIZE -1: 0] p_arr [ARRAY_SIZE -1:0][DIMENSION -1:0] 
//    input [SIZE -1: 0] p_cl [CLSTR_SIZE -1:0][DIMENSION -1:0],  //DEBUG
//    input [SIZE -1: 0] q_cl [CLSTR_SIZE -1:0][DIMENSION -1:0],  //DEBUG

//    output logic [SIZE -1: 0] dst[CLSTR_SIZE -1:0] //DEBUG

);

    /**** Local prams ****/
    localparam CNT_SIZE = 8;
   
    /**** local register ****/
    logic [CNT_SIZE -1:0] counter = 0;

    logic [SIZE -1: 0] p_cl [DIMENSION -1:0][CLSTR_SIZE -1:0] = '{default:0};
    logic [SIZE -1: 0] dst [CLSTR_SIZE -1:0] = '{default:0};
 
    
    /**** instantiation, creating connections ****/
    Distance #(.SIZE(SIZE), .DIMENSION(DIMENSION)) dist_clstr[CLSTR_SIZE -1:0] (.p(p_cl), .q(q), .dst(dst));
    
    /**** main sequnce, circle chunk of consecutive data ****/ 
    always@(posedge clk, posedge rst)begin
    
    // if SR (set/reset) = 0 - reset the counter 
    if(!SR) counter <= '0;
//    else if(counter < SM_VALUE) counter <= 0;    //PLACEHOLDER 
    else counter += 1;
    
    for(int i = 0; i<CLSTR_SIZE; i++)begin
    
    p_cl <= p_arr[i + counter];    // czy to tak mozna??? kiedy indziej sie dowiem xD
    
    end    
    
    end
    
endmodule
