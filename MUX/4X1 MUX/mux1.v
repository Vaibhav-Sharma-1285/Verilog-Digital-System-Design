`timescale 1ns / 1ps
module mux_4X1(
    input a, b, c, d, s0, s1, 
    output y
    );
    
    assign y = (s1 & s0 & d) | (s1 & (~s0) & c) | ((~s1) & s0 & b) | ((~s0) & (~s1) & a);

endmodule
