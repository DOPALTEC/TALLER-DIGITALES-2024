`timescale 1ns / 1ps

module top(
    input logic clk, rst,
    input logic [3:0] bin,
    output logic [3:0] gray_out,
    output logic [3:0] bin_out
    );
    
//      instancias
    encoder enc_inst (
        .clk(clk),
        .rst(rst),
        .bin(bin),
        .gray(gray_out)
    );
    
    decoder dec_inst (
        .clk(clk),
        .rst(rst),
        .gray(gray_out),
        .bin(bin_out)
    );
    
endmodule
