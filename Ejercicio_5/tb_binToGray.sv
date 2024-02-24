`timescale 1ns / 1ps

module tb_binToGray;
    parameter CLK_PERIOD = 10;

//      se�ales
    logic clk, rst;
    logic [3:0] bin;
    logic [3:0] gray;
    
//      instancias
    binToGray bTG (
        .clk(clk),
        .rst(rst),
        .bin(bin),
        .gray(gray)
    );
    
    always #((CLK_PERIOD / 2)) clk = ~clk;
        
//      est�mulos
    initial begin
        clk = 0;
        rst = 1;
        bin = 4'b0000;
        
        #50;
        
        rst = 0;
        
        repeat (16) begin
            #10;
            
            $display("Entrada binaria: %b, Salida Gray: %b", bin, gray);
            
            bin = bin + 1;
        end
        
        $finish;
    end
    
endmodule
