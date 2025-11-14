`timescale 1ns / 1ps

module universal_subtractor(
    input [3:0] A, B,
    input M,
    output reg [3:0] D,
    output reg Bout
    );

    reg [4:0] temp;

    always @(*) begin

        if(M == 0) begin
        temp = A + (~B) + 1;
        end
        else begin
        temp = B + (~A) + 1;
        end

        D = temp[3:0];
        Bout = ~temp[4];
    end
endmodule
