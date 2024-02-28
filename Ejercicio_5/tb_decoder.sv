`timescale 1ns / 1ps

module tb_decoder;
    parameter CLK_PERIOD = 10;

//      señales
    logic clk, rst;
    logic [3:0] gray;
    logic [3:0] bin;

//      intancias
    decoder dec_inst (
        .clk(clk),
        .rst(rst),
        .gray(gray),
        .bin(bin)
    );

    always #((CLK_PERIOD / 2)) clk = ~clk;

//      estímulos
    initial begin
        clk = 0;
        rst = 1;
        gray = 4'b0000;

        #50;

        rst = 0;

        repeat (16) begin
            #10;

            $display("Entrada Gray: %b, Salida binaria: %b", gray, bin);

            gray = gray + 1;
        end

        $finish;
    end

endmodule
