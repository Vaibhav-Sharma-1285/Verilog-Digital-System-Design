`timescale 1ns / 1ps

module sr_latch_flip_flop(
input s,r,
output reg q,
output qbar
    );
    
    always @(*) begin
    if(s==1&r==0)
    q=1;
    else if(s==0&r==1)
    q=0;
    else if(s==0&r==0)
    q=q;
    else
    q=1'bx;
    end
    
    assign qbar=~q;
    
endmodule
