`timescale 1ns / 1ps

module jk_flip_flop(
input j,k,clk,
output q,qbar
    );
    
    wire j_g,k_g;
    
    assign #1 j_g=(~(j&(clk)));
    assign #1 k_g=(~(k&(clk)));
    assign #1 q=(~((j_g)&(qbar)));
    assign #1 qbar=(~((k_g)&q));
    
endmodule