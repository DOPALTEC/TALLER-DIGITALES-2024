`timescale 1ns / 1ps

module encoder(
    input logic clk, rst,
    input logic [3:0] bin,
    output logic [3:0] gray
    );
    
    always_ff@(posedge clk or posedge rst) begin
        if(rst) begin
            gray <= 4'b0000;
        end else begin
            gray[3] <= bin[3];
            gray[2] <= bin[3] ^ bin[2];
            gray[1] <= bin[2] ^ bin[1];
            gray[0] <= bin[1] ^ bin[0];
        end
    end
endmodule