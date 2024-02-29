`timescale 1ns / 1ps

module display (boton0, boton1, ane3, ane2, ane1, ane0);

    input wire boton0;
    input wire boton1;
    output wire ane0;
    output wire ane1;
    output wire ane2;
    output wire ane3;
    
    //assign ane3 = boton0 | boton1;
    //assign ane2 = ~boton0 | boton1;
    //assign ane1 = boton0 | ~boton1;
    //assign ane0 = ~boton0 | ~boton1;
    
    assign ane3 = 0;
    assign ane2 = 0;
    assign ane1 = 0;
    assign ane0 = 1;
    
endmodule

