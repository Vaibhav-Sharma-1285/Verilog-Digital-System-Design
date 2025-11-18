`timescale 1ns / 1ps

module tb_full_subtractor(

    );
    
    reg a,b,bin;
    wire d,br;
    
    full_subtractor uut(a,b,bin,d,br);
    
    initial begin
    a=0;b=0;bin=0;#10
    a=0;b=0;bin=1;#10;
    a=0;b=1;bin=0;#10;
    a=0;b=1;bin=1;#10;
    a=1;b=0;bin=0;#10;
    a=1;b=0;bin=1;#10;
    a=1;b=1;bin=0;#10;
    a=1;b=1;bin=1;#10;
    $finish;
    end
endmodule
