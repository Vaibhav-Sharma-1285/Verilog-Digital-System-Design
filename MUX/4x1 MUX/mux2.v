`timescale 1ns / 1ps

module mux2(
input i0,i1,i2,i3,
input s0,s1,
output reg y
    );
    
    always @(*) begin
    if(s1==0 && s0==0)
    y=i0;
    else if(s1==0 && s0==1)
    y=i1;
    else if(s1==1 && s0==0)
    y=i2;
    else if(s1==1 && s0==1)
    y=i3;
    else
    y=0;
    end
endmodule
