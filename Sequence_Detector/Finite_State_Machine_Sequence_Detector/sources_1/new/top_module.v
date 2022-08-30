`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2022 14:39:24
// Design Name: 
// Module Name: top_module
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


module top_module(clk, in, out, rst);
    input in,clk,rst ;
    output reg out ;
    reg [1:0]state ;
    
    wire [1:0]A = 2'b00 ;
    wire [1:0]B = 2'b01 ;
    wire [1:0]C = 2'b10 ;
    wire [1:0]D = 2'b11 ;
    
    always@(posedge clk) begin
        if (rst == 0) begin
            case(state)
                A : begin if (in == 0) begin
                        state = A ;
                        out = 0 ;
                        $display("%d %d", state, out);
                    end
                    else if (in == 1) begin
                        state = B ;
                        out = 0;
                        $display("%d %d", state, out);
                    end
                    end
                B : begin if (in == 0) begin
                        state = A ;
                        out = 0 ;
                        $display("%d %d", state, out);
                    end
                    else if (in == 1) begin
                        state = C ;
                        out = 0;
                        $display("%d %d", state, out);
                    end 
                    end
                C : begin if (in == 0) begin
                        state = D ;
                        out = 0 ;
                        $display("%d %d", state, out);
                    end
                    else if (in == 1) begin
                        state = C ;
                        out = 0;
                        $display("%d %d", state, out);
                    end 
                    end
                D : begin if (in == 0) begin
                        state = A ;
                        out = 0 ;
                        $display("%d %d", state, out);
                    end
                    else if (in == 1) begin
                        state = B ;
                        out = 1;
                        $display("%d %d", state, out);
                    end
                    end
                default : begin
                        state = A;
                        out = 0;
                        $display("%d %d", state, out);
                end
            endcase
        end
        else begin
            out = 0 ;
            state = A ;
            end
    end
endmodule
