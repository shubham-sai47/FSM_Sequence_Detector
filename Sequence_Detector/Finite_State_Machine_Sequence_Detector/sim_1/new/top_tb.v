`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 14:59:43
// Design Name: 
// Module Name: top_tb
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


module top_tb();
    reg in, clk, rst ;
    wire out ;
    
    top_module inst1(clk, in, out, rst);
    
    initial clk = 1'b0 ;
    
    always clk = #1 ~clk ;
    
    initial begin
        rst = 1 ;
        in = 1 ;
        #2 in = 1;
        rst = 0;
        #2 in = 1;
        #2 in = 0;
        #2 in = 0;
        #2 in = 0;
        #2 in = 1;
        #2 in = 1;
        #2 in = 0;
        #2 in = 1;
        #2 in = 0;
        #2 in = 1;
        #2 in = 1;
        #2 in = 0;
        #2 in = 1;
        #2 in = 1;
        #2 in = 0;
        #2 in = 1;
        #2 in = 1;
        #2 in = 1;
    end
endmodule
