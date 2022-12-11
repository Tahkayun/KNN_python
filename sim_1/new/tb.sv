`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2022 10:51:37 PM
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


module tb
#
(
parameter TB_WIDTH = 16,
  parameter TB_MTX_SIZE = 4,
  parameter SIM_MODE = "DIST1"
)
(
);
       
 
//    logic [TB_WIDTH -1:0] q_matix [TB_MTX_SIZE -1: 0] = '{10, 20, 40, 60};         // assign values inside 32bit 4 element matrix
//    logic [TB_WIDTH -1:0] x_matix [TB_MTX_SIZE -1: 0] = '{ 1, 2, 4, 6};         // assign values inside 32bit 4 element matrix
//    logic [TB_WIDTH -1:0] out_matix [TB_MTX_SIZE -1: 0] = '{ 0, 0, 0, 0};         // assign values inside 32bit 4 element matrix

//    matrix_adder #(.WIDTH(TB_WIDTH)) mat1(.q_matix, .x_matix, .out_matix);

//    logic [TB_WIDTH -1:0] x = 10;
//    logic [TB_WIDTH -1:0] q = 10;
//    logic [TB_WIDTH -1:0] out =10;



// thre examples how to instantiate ports    
//    knn #(.TB_WIDTH(16)) k1(.x(x), .q(q), .out(out));
//    knn #(.TB_WIDTH(16)) k2(.x, .q, .out);
//    knn #(.TB_WIDTH(16)) k3(.*);

///////////////////////////////////////////////////////////////////////////////////////

//if(SIM_MODE == "DIST1")begin 

//parameter SIZE = 32;
//parameter WIDTH = 4;

//logic [SIZE -1:0] x [WIDTH] = '{'h10, 'h20,'h30,'h40};
//logic [SIZE -1:0] y [WIDTH] = '{'h1,'h2,'h3,'h4};
//logic [SIZE -1:0] out [WIDTH] = '{0,0,0,0};

//Distance #(.SIZE(SIZE), .WIDTH(WIDTH)) dis1 (.x, .y, .out);


//end

///////////////////////////////////////////////////////////////////////////////////////

parameter SIZE = 32;
parameter DIMENSION = 3;
parameter CLSTR_SIZE = 2;

// DEBUG -> DISTANCE MODULE
/*
logic [SIZE -1:0] p [DIMENSION -1:0] = '{'h10, 'h20, 'h4};   //'{'h1, 'h2, 'h3};
logic [SIZE -1:0] q [DIMENSION -1:0] = '{'h1, 'h67, 'h3};    //'{'h6, 'h4, 'h2};
logic [SIZE -1:0] dst;

Distance #(.SIZE(SIZE), .DIMENSION(DIMENSION)) dis1 (.p, .q, .dst);
*/  

//DEBUG -> CLUSTER MODULE

logic [SIZE -1: 0] p_cl [CLSTR_SIZE -1:0][DIMENSION -1:0] = '{{'h10, 'h23, 'h5},'{'h11, 'h21, 'h6}};  //DEBUG
logic [SIZE -1: 0] q_cl [CLSTR_SIZE -1:0][DIMENSION -1:0] = '{{'h3, 'h5, 'h73},'{'h23, 'h64, 'h3}};  //DEBUG

logic [SIZE -1:0] dst[CLSTR_SIZE -1:0] = '{default:0};

Cluster  clstr1 (.p_cl, .q_cl, .dst); 


    initial begin
    
//    #20 p = '{'h10, 'h3, 'h65};
//        q = '{'h1, 'h20, 'h3};
    
    
    end
    
    
endmodule
