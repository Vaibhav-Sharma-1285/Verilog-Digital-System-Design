`timescale 1ns / 1ps

module tb_d_flip_flop(

    );
    
    reg d,clk;
    wire d_g,d_bar_g,q,q_bar;
    
    d_flip_flop uut(d,clk,q,q_bar);
    
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin
    d=0;#10
    d=1;#10
    d=0;#10
    d=1;#10
    $finish;
    end
    
endmodule