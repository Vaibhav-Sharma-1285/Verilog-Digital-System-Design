`timescale 1ns / 1ps

module full_adder(
input a,b,c,
output cout,s
    );
    
    assign s=a^b^c;
    assign cout=(a&b) | (b&c) | (a&c);
    
endmodule
