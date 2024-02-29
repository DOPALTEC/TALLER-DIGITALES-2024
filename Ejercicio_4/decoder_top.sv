`timescale 1ns / 1ps
module decoder_top(
    input logic [15:0]  sw,
    input logic         btnL, 
    input logic         btnR,
    output logic [6:0]  seg,
    output logic [3:0]  an,
    output logic        dp 
    
);

    logic [1:0]      mux_select;
    logic [3:0]      mux_out;
    
    assign mux_select [0] = btnL;
    assign mux_select [1] = btnR;

mux mux (sw[15:12], sw[11:8], sw[7:4], sw[3:0], mux_select[1:0], mux_out[3:0]);

decode deco (mux_out[3], mux_out[2], mux_out[1], mux_out[0], seg[0], seg[1], seg[2], seg[3], seg[4], seg[5], seg[6]);

//display dis1 (btnL, btnR, an[0], an[2], an[1], an[3]);

assign an[0] = 0;
assign an[1] = 1;
assign an[2] = 1;
assign an[3] = 1;
assign dp = 1; 

endmodule
