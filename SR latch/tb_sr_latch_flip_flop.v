`timescale 1ns / 1ps

module tb_sr_latch_flip_flop(

    );
    
    reg s,r;
    wire q,qbar;
    
    sr_latch_flip_flop uut(s,r,q,qbar);
    
    initial begin
    s=0;r=0;#10
    s=0;r=1;#10
    s=1;r=0;#10
    s=1;r=1;#10
    $finish;
    end
    
endmodule
