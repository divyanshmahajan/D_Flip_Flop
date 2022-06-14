`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2022 14:55:43
// Design Name: 
// Module Name: D_Flip_Flop
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


module D_Flip_Flop(
    input clk,
    input data,
    input rst, 
    input clk_en,
    output reg q
    );
always@(posedge clk)   
begin
    if(rst)
        q <= 0;
    else if(clk_en)
        q <= data;
    else q <= q;
end

endmodule
