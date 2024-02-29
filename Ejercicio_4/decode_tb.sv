`timescale 1ns / 1ps
module decode_tb();

  logic A, B, C, D;
  logic a, b, c, d, e, f, g;
  
  decode dut(A, B, C, D, a, b, c, d, e, f, g);
  
  integer i, j, k, l;

  initial begin
    for (i = 0; i <= 1; i++) begin
      A = i;
      for (j = 0; j <= 1; j++) begin
        B = j;
        for (k = 0; k <= 1; k++) begin
          C = k;
          for (l = 0; l <= 1; l++) begin
            D = l;
            #1; // Asegurar tiempo suficiente para estabilizaci?n de se?al
            $display("Entrada: A = %b, B = %b, C = %b, D = %b, Salida: a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, g = %b", A, B, C, D, a, b, c, d, e, f, g);
          end
        end
      end
    end
    $finish; // Terminar simulaci?n despu?s de la prueba exhaustiva
  end
  
endmodule
