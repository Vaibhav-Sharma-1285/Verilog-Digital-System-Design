`timescale 1ns / 1ps

module universal_adder(
    input [3:0] A, B,
    input M,
    output reg [3:0] S,
    output reg Cout
    );

    reg [4:0] temp;

    always @(*) begin    
        if(M == 0) begin
        temp = A + B;       
        end
        else begin
        temp = A + (~B) + 1;
        end
        S = temp[3:0];
        Cout = temp[4];
    end
endmodule

