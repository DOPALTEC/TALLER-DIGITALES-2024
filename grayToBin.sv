`timescale 1ns / 1ps

module grayToBin(
    input logic clk, rst,
    input logic [3:0] gray,
    output logic [3:0] bin
    );
    
    always_ff@(posedge clk or posedge rst) begin
        if(rst) begin
            bin <= 4'b0000;
        end else begin
            bin[3] <= gray[3];
            bin[2] <= gray[3] ^ gray[2];
            bin[1] <= gray[3] ^ gray[2] ^ gray[1];
            bin[0] <= gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
        end
    end
endmodule
