`timescale 1ns / 1ps

module half_adder(
input a,b,
output s,c
    );
    
    assign s=(a&(~b))|(b&(~a));
    assign c=a&b;
    
endmodule