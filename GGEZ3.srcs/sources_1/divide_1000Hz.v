`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2020 08:38:23 PM
// Design Name: 
// Module Name: divide_1000Hz
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


module divide_1000Hz(
    input clk_in,
    output clk_out
    );
    reg elapsed;
    reg [16:0] state;
    
    always @(posedge clk_in)
        if (state == 100000) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 100000) elapsed <= 1;
        else elapsed <= 0;
        
    assign clk_out = elapsed;
endmodule
