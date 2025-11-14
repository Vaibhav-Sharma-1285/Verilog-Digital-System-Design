`timescale 1ns / 1ps

module tb_universal_subtractor;

    reg [3:0] A, B;
    reg M;
    wire [3:0] D;
    wire Bout;

    universal_subtractor dut(A, B, M, D, Bout);

    initial begin
        A = 7; B = 3; M = 0; #10;
        A = 3; B = 7; M = 0; #10;
        A = 7; B = 3; M = 1; #10;
        A = 3; B = 7; M = 1; #10;
        $finish;
    end
endmodule
