`timescale 1ns / 1ps

module tb_gates(

    );
    
    reg a;
    wire y;
    
    gates uut(a,y);
    
    initial begin
    a=0;
    #10
    a=1;
    #10
    a=0;
    #5
    a=1;
    #5
    #10
    $finish;
    end
endmodule 
