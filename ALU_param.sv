`timescale 1ns / 1ps

module ALU_param #(parameter bits = 4)
(
    input  logic [bits-1:0] A,
    input  logic [bits-1:0] B,
    input  logic [3:0]      ALUControl,
    input  logic            ALUFlagIn,
    output logic [bits-1:0] ALUResult,
    output logic [1:0]      ALUFlags,
    output logic [1:0]      C_Flag
);

logic and_      = A & B;
logic or_       = A | B;
logic plus      = A + B;
logic A_plus_1  = A + 1 + ALUFlagIn; 
logic A_minus_1 = A - 1 + ALUFlagIn;
logic B_plus_1  = B + 1; 
logic B_minus_1 = B - 1;
logic A_not     = ~A;
logic B_not     = ~B;  
logic minus     = A - B;
logic xor_      = A ^ B;
logic left_0    = A << B;
logic right_0   = A >> B;
logic left_1    = ~(~A << B);
logic right_1   = ~(~A >> B);

always @* 
   begin
        case (ALUControl)
        4'b0000:
	    ALUResult = A & B;
	    4'b0001:
		ALUResult = A | B;
	    4'b0010:
		ALUResult = A + B + ALUFlagIn;
	    4'b0011:
		if (ALUFlagIn == 0)
		    begin
		        ALUResult = A + 1; 
		    end
		else if (ALUFlagIn == 1)
		    begin
			    ALUResult = B + 1;
		    end
	    4'b0100:
		if (ALUFlagIn == 0)
		    begin
		        ALUResult = A - 1; 
		    end
		else if (ALUFlagIn == 1)
		    begin
			ALUResult = B - 1;
		    end
	    4'b0101:
		if (ALUFlagIn == 0)
		    begin
		        ALUResult = ~A; 
		    end
		else if (ALUFlagIn == 1)
		    begin
			ALUResult = ~B;
		    end
	    4'b0110:
		ALUResult = A - B + ALUFlagIn;
	    4'b0111:
		ALUResult = A ^ B;
	    4'b1000:
		if (ALUFlagIn == 0)
		    begin
		        ALUResult = A << B;
		        C_Flag = A[B];
		    end
		else if (ALUFlagIn == 1)
		    begin
			    ALUResult = ~(~A << B);
			    C_Flag = A[B];
		    end
	    4'b1001:
		if (ALUFlagIn == 0)
		    begin
		        ALUResult = A >> B;
		        C_Flag = A[-B]; 
		    end
		else if (ALUFlagIn == 1)
		    begin
			    ALUResult = ~(~A >> B);
			    C_Flag = A[-B];
		    end    
		default:
		    ALUResult = A + B + ALUFlagIn;
    endcase
    if (ALUResult == 0)
	    begin
 	        ALUFlags = 1;
	    end
	else 
	    ALUFlags = 0;
    end

endmodule  
