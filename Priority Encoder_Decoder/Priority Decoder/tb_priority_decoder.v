`timescale 1ns / 1ps

module tb_priority_decoder(

    );
    
    reg a,b,en;
    wire d3,d2,d1,d0;
    
    priority_decoder uut(a,b,en,d3,d2,d1,d0);
    
    initial begin
    a=0;b=0;en=0;
    #10
    a=0;b=0;en=1;
    #10
    a=0;b=1;en=1;
    #10
    a=1;b=0;en=1;
    #10
    a=1;b=1;en=1;
    #10
    $finish;
    end
    
endmodule
