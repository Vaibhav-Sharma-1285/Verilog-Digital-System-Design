`timescale 1ns / 1ps

module tb_half_subtractor(

    );
    
    reg a,b;
    wire d,br;
    
    half_subtractor uut(a,b,d,br);
    
    initial begin
    a=0;b=0;#10
    a=0;b=1;#10
    a=1;b=0;#10
    a=1;b=1;#10
    $finish;
    end
endmodule
