`timescale 1ns / 1ps

module tb_top;
    parameter CLK_PERIOD = 10;

//      señales
    logic clk, rst;
    logic [3:0] bin;
    logic [3:0] gray_out;
    logic [3:0] bin_out;

//      instancia
    top dut (
        .clk(clk),
        .rst(rst),
        .bin(bin),
        .gray_out(gray_out),
        .bin_out(bin_out)
    );

    always #((CLK_PERIOD / 2)) clk = ~clk;

//      estímulos
    initial begin
        clk = 0;
        rst = 1;
        bin = 4'b0000;

        #50;

        rst = 0;

        repeat (16) begin
            #10;

            $display("Entrada binaria: %b, Salida Gray: %b, Salida binaria: %b", bin, gray_out, bin_out);

            bin = bin + 1;
        end

        $finish;
    end

endmodule

