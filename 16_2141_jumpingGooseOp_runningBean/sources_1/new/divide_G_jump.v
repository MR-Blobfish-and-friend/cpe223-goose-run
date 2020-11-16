`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2020 20:00:52
// Design Name: 
// Module Name: divide_G_jump
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


module divide_G_jump(
    input clk_in,
    output clk_out
    );
    reg elapsed;
    reg [27:0] state;
    
    always @(posedge clk_in)
        if (state == 5000000) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 5000000) elapsed <= 1;
        else elapsed <= 0;
        
    assign clk_out = elapsed;
    
endmodule
