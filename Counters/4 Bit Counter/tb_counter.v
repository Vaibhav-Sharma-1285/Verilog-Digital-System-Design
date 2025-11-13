`timescale 1ns / 1ps

module tb_counter(

    );
    
    reg clk;
    wire [3:0] q;
    
    counter uut(clk,q);
    
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin
    #100
    $finish;
    end
endmodule
