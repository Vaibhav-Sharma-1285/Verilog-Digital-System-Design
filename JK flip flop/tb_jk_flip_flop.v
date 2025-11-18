`timescale 1ns / 1ps

module tb_jk_flip_flop(

    );
    
    reg j,k,clk;
    wire j_g,k_g,q,qbar;
    
    jk_flip_flop uut(j,k,clk,q,qbar);
    
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    
    initial begin
    j=0;k=0;#10
    j=0;k=1;#10
    j=1;k=0;#10
    j=1;k=1;#10
    j=1;k=1;#10
    $finish;
    end
    
endmodule