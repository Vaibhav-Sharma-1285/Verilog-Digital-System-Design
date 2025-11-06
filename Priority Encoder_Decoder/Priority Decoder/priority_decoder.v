`timescale 1ns / 1ps

module priority_decoder(
input a,b,en,
output reg d3,d2,d1,d0
    );
    
    always @(*) begin
    d3=0;
    d2=0;
    d1=0;
    d0=0;
    
    if(en==1) begin
    if(a==1&b==1) begin
    d3=1;
    end
    else if(a==1&b==0) begin
    d2=1;
    end
    else if(a==0&b==1) begin
    d1=1;
    end
    else if(a==0&b==0) begin
    d0=1;
    end
    end
    end
    
endmodule
