`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 19:37:51
// Design Name: 
// Module Name: mux
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


module mux(
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [1:0] Select,
    output reg[15:0] Sal
    );

always @ (A,  B, C, D, Select) begin
    case(Select)
        2'b00: Sal = A;
        2'b01: Sal = B;
        2'b10: Sal = C;
        2'b11: Sal = D;        
    endcase
end

endmodule

