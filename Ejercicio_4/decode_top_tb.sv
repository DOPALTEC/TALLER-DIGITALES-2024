`timescale 1ns / 1ps

module decode_top_tb;

    // Inputs
    reg [15:0] sw;
    reg btnL;
    reg btnR;

    // Outputs
    wire [6:0] seg;
    wire [3:0] an;
    wire dp;

    // Instantiate the decoder_top module
    decoder_top dut (
        .sw(sw),
        .btnL(btnL),
        .btnR(btnR),
        .seg(seg),
        .an(an),
        .dp(dp)
    );

    integer i, j, k;

    initial begin
        // Loop through all possible input combinations
        for (i = 0; i < 16; i++) begin
            for (j = 0; j < 2; j++) begin
                for (k = 0; k < 2; k++) begin

                    sw = i; // Set the switch input
                    btnL = j; // Set the btnL input
                    btnR = k; // Set the btnR input

                    // Wait for the outputs to settle
                    #10;

                    // Display the inputs and outputs
                    $display("sw = %d, btnL = %d, btnR = %d, seg = %b, an = %b, dp = %b",
                             sw, btnL, btnR, seg, an, dp);

                end
            end
        end

        // End the simulation
        $finish;
    end

endmodule
