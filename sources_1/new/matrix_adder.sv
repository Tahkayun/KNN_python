`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2022 11:04:52 PM
// Design Name: 
// Module Name: matrix_adder
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
/*

module matrix_adder
#(parameter WIDTH = 32,
  parameter MTX_SIZE = 4  )
(
    input [WIDTH -1:0] q_matix [MTX_SIZE],         // assign values inside 32bit 4 element matrix
    input [WIDTH -1:0] x_matix [MTX_SIZE],         // assign values inside 32bit 4 element matrix
    output [WIDTH -1:0] out_matix [MTX_SIZE]         // assign values inside 32bit 4 element matrix
    );
    
    

////////// Jak tworzyc wiele instancji naraz i laczyc je w paczki //////////
    
// #1    
// Braindedowe przypisanie 
// aka kazdy z osobna    
//    single_adder #(.WIDTH(WIDTH)) knn_1 (.q(q_matix[0]), .x(x_matix[0]), .out(out_matix[0]));
//    single_adder #(.WIDTH(WIDTH)) knn_2 (.q(q_matix[1]), .x(x_matix[1]), .out(out_matix[1]));
//    single_adder #(.WIDTH(WIDTH)) knn_3 (.q(q_matix[2]), .x(x_matix[2]), .out(out_matix[2]));
//    single_adder #(.WIDTH(WIDTH)) knn_4 (.q(q_matix[3]), .x(x_matix[3]), .out(out_matix[3]));

// #2
// uzywajac tablicy 
// jedna linijka kodu!!! 
    single_adder #(.WIDTH(WIDTH)) adder_gr [MTX_SIZE -1:0](.q(q_matix), .x(x_matix), .out(out_matix));

// #3 
// sposob generatem
//    generate 
//    genvar i;
    
//        for(i = 0; i < 4; i++)begin
//            single_adder knn_x[i] (.q(q_matix[i]), .x(x_matix[i]), .out(q_matix[i]));
//        end 
//    endgenerate
    
    
    
endmodule


*/