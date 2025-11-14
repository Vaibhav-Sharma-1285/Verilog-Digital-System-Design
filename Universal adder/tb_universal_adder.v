`timescale 1ns / 1ps

module tb_universal_adder;

    reg [3:0] A, B;
    reg M;
    wire [3:0] S;
    wire Cout;

    universal_adder uut(A, B, M, S, Cout);

    initial begin
    A = 5; B = 3; M = 0; #10;
    A = 5; B = 3; M = 1; #10;
    A = 15; B = 2; M = 0; #10;
    A = 2; B = 7; M = 1; #10;
    $finish;
    end
endmodule
