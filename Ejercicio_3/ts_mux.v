`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2024 19:54:22
// Design Name: 
// Module Name: ts_mux
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


module ts_mux();
    reg [15:0] A;
    reg [15:0] B;
    reg [15:0] C;
    reg [15:0] D;
    reg [1:0] Select;
    wire [15:0] Sal;
   
mux mux1(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Select(Select),
    .Sal(Sal)
);
    
    initial begin 
        A = 0; B = 0; C = 0; D = 0;
        repeat(50) begin       
            A[3:0] = $random; B[3:0] = $random; C[3:0] = $random; D[3:0] = $random;
            Select[1:0] = $random; #5;
        end    
        repeat(50) begin       
            A[7:0] = $random; B[7:0] = $random; C[7:0] = $random; D[7:0] = $random;
            Select[1:0] = $random; #5;
        end
        repeat(50) begin       
            A[15:0] = $random; B[15:0] = $random; C[15:0] = $random; D[15:0] = $random;
            Select[1:0] = $random; #5;
        end
    end
     
endmodule
