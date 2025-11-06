`timescale 1ns / 1ps

module tb_priority_encoder(

    );
    
    reg d3,d2,d1,d0;
    wire a,b,v;
    
    priority_encoder uut(d3,d2,d1,d0,a,b,v);
    
    integer i;
    initial begin
    for(i=0;i<16;i=i+1) begin
    {d3,d2,d1,d0}=i;
    #10;
    end
    #10
    $finish;
    end
    
endmodule