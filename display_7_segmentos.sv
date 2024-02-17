`timescale 1ns / 1ps

module display_7_segmentos(
    //entradas y salidas para el multiplexor
   input logic [15:0] sw_pi,dat_reg,
   input logic clk1k,
    //salida para el decodificador
    output logic [6:0] LED_o,
    output logic [3:0]an_o
    );
    logic [3:0] salida_mux_o; 
    logic [2:0] co;
    
   
    
    always_ff @(posedge clk1k) begin
        if(sw_pi[0])
        co <= 0;
        else 
        co <= co+1;
        
        case (co)
            
            3'b000:begin
             salida_mux_o = dat_reg[3:0];
             an_o=4'b1110;
             
             end
            3'b001: begin
            salida_mux_o = dat_reg[7:4];
            an_o=4'b1101;
            
             end
            3'b010: begin 
            salida_mux_o = dat_reg[11:8];
            an_o=4'b1011;
           
             end
            3'b011: begin
             salida_mux_o = dat_reg[15:12];
             an_o=4'b0111;
           
             end
             3'b100: co <= 0;
        endcase
        
        case (salida_mux_o)
            4'b0000: LED_o = 7'b1000000; // 0
            4'b0001: LED_o = 7'b1111001; // 1
            4'b0010: LED_o = 7'b0100100; // 2
            4'b0011: LED_o = 7'b0110000; // 3
            4'b0100: LED_o = 7'b0011001; // 4
            4'b0101: LED_o = 7'b0010010; // 5
            4'b0110: LED_o = 7'b0000010; // 6
            4'b0111: LED_o = 7'b1111000; // 7
            4'b1000: LED_o = 7'b0000000; // 8
            4'b1001: LED_o = 7'b0010000; // 9
            4'b1010: LED_o = 7'b0001000; // A
            4'b1011: LED_o = 7'b0000011; // B
            4'b1100: LED_o = 7'b0100111; // C
            4'b1101: LED_o = 7'b0100001; // D
            4'b1110: LED_o = 7'b0000110; // E
            4'b1111: LED_o = 7'b0001110; // F
            default: LED_o = 7'b1111111; // Valor invalido
        endcase
        
    end
    
endmodule
