`timescale 1ns / 1ps

module tb_full_adder(

    );
    
    reg a,b,c;
    wire s,cout;
    
    full_adder uut(a,b,c,s,cout);
    
    initial begin
    a=0;b=0;c=0;#10
    a=0;b=0;c=1;#10
    a=0;b=1;c=0;#10
    a=0;b=1;c=1;#10
    a=1;b=0;c=0;#10
    a=1;b=0;c=1;#10
    a=1;b=1;c=0;#10
    a=1;b=1;c=1;#10
    $finish;
    end
    
endmodule