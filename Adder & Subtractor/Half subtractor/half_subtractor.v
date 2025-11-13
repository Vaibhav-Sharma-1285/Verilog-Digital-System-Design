`timescale 1ns / 1ps

module half_subtractor(
input a,b,
output d,br
    );
    
    assign d=a^b;
    assign br=(~a)&b;
    
endmodule
