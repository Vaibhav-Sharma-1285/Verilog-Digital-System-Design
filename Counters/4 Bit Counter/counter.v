`timescale 1ns / 1ps

module counter(
input clk,
output reg[3:0] q
    );
    
    always @(posedge clk) begin
    q=q+1;
    end

endmodule
