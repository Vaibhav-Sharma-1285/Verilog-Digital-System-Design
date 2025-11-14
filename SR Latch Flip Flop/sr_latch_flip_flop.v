`timescale 1ns / 1ps

module sr_latch_flip_flop(
input s,r,
output reg q,
output qbar
    );
    
    assign q = ~(r | qbar);
    assign qbar = ~(s | q);

endmodule
