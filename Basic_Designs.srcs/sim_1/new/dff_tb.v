`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2022 15:09:42
// Design Name: 
// Module Name: dff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff_tb();
reg data, clk, clk_en, rst;
wire q;
D_Flip_Flop f1(clk, data, rst, clk_en, q);
always
begin
    #5 clk = ~clk;
end
initial
    begin
    clk=0;
    clk_en = 0;
    rst = 1 ;
    #12
    rst = 0;
    data = 1;
    #10
    data = 0;
    #7
    data = 1;
    #1
    clk_en = 1;
    data = 0;
    #10
    data = 1;
    #200 $stop;
    
    end
endmodule
