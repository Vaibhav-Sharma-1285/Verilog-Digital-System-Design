`timescale 1ns / 1ps

module tb_sr_flipflop(

    );
    reg s,r,clk;
    wire q, qbar;
    wire sg, rg;
    
     sr_flipflop uut(s,r,q,qbar,sg,rg);                                                                  
    
    
    initial begin 
        clk=0;
        forever #5 clk=~clk;
    end
    
    initial begin 
    
        s=0; r=0; #10;
        s=0; r=1; #10;
        s=1; r=0; #10;
        s=1; r=1; #10;
    
     
    $finish;
    end
    
endmodule