`timescale 1ns / 1ps

module alu_tb();

    parameter N = 4;

    logic [N-1:0] a;
    logic [N-1:0] b;
    logic [3:0] op;
    logic [N-1:0] result;
    logic [1:0] flag_in;
    logic [1:0] flag_out;
    logic [1:0] C_Flag;
 
    ALU_param test (
        .A(a),
        .B(b),
        .ALUControl(op),
        .ALUResult(result),
        .ALUFlagIn(flag_in),
        .ALUFlags(flag_out),
        .C_Flag
        );

    logic clk;

    initial begin
        clk = 0;
        #(10) clk = ~clk;
        repeat(10) begin

        a = $urandom_range(15);
        b = $urandom_range(15);
        //a = 2; 
        //b = 3;
        flag_in = $urandom_range(1);
        //flag_in = 1;
        op = $urandom_range(9);
        //op = 8;

        @(posedge clk);
        case(op)
            4'b0000:
                if (result != (a & b)) begin
                    $error("Test 0. Failed");
                end
            4'b0001:
                if (result != (a | b)) begin
                    $error("Test 1. Failed");
                end
            4'b0010:
                if (result != (a + b + flag_in)) begin
                    $error("Test 2. Failed");
                end
            4'b0011:
                if (flag_in == 0) begin
                    if (result != (a + 1)) begin
                        $error("Test 3. Failed");
                    end
                end
                else if (flag_in == 1) 
                    if (result != (b + 1)) begin
                        $error("Test 3. Failed");
                    end
            4'b0100:
                if (flag_in == 0) begin
                    if (result != (a - 1)) begin
                        $error("Test 4. Failed");
                    end
                end
                else if (flag_in == 1) 
                    if (result != (b - 1)) begin
                        $error("Test 4. Failed");
                end
            4'b0101:
                if (flag_in == 0) begin
                    if (result != (~a)) begin
                        $error("Test 5. Failed");
                    end
                end
                else if (flag_in == 1)
                    if (result != (~b)) begin
                        $error("Test 5. Failed");
                end
            4'b0110:
                if (result != (a - b + flag_in)) begin
                    $error("Test 6. Failed");
                end
            4'b0111:
                if (result != (a ^ b)) begin
                    $error("Test 7. Failed");
                end
            4'b1000:
                if (flag_in == 0) begin
                    if (result != (a << b)) begin
                        $error("Test 8. Failed");
                    end
                end
                else if (flag_in == 1)
                    if (result != ~(~a << b)) begin
                        $error("Test 8. Failed");
                    end
            4'b1001:
                if (flag_in == 0) begin
                    if (result != (a >> b)) begin
                        $error("Test 9. Failed");
                    end
                end
                else if (flag_in == 1)
                    if (result != ~(~a >> b)) begin
                        $error("Test 9. Failed");
                end
        endcase         
        $display("All tests passed");
        $finish;
    
        end
    end
endmodule
