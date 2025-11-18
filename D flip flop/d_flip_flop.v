`timescale 1ns / 1ps

module d_flip_flop(
input d,clk,
output q,qbar
    );
    
    wire d_g, d_bar_g;
    
    assign #1 d_g=(~(d&(clk)));
    assign #1 d_bar_g=(~((d)&(clk)));
    assign #1 q=(~((d_g)&(qbar))); 
    assign #1 qbar=(~((d_bar_g)&q));
       
endmodule