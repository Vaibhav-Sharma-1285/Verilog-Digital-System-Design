`timescale 1ns / 1ps

module tb_t_ff;
    reg T;
    reg clk;
    reg reset;
    wire Q;
    t_ff uut (
        .T(T),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        T = 0;
        #10;
        reset = 0;
        T = 0;
        #20;
        T = 1;
        #40;
        T = 0;
        #20;
        T = 1;
        #30;
        T = 0;
        #20;
        reset = 1;
        #10;
        reset = 0;
        #20;
        $finish;
    end
endmodule
