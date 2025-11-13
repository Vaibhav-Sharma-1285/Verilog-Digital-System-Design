`timescale 1ns / 1ps

module tb_d_flip_flop(

    );
    
    reg d,clk;
    wire q;
    
    d_flip_flop uut(d,clk,q);
    
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
