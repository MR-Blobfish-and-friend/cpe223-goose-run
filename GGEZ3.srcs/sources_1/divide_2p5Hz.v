`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 01:39:38 PM
// Design Name: 
// Module Name: divide_2p5Hz
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


module divide_2p5Hz(
    input clk_in,
    output clk_out
    );
    reg elapsed;
    reg [25:0] state;
    
    always @(posedge clk_in)
        if (state == 40000000) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 40000000) elapsed <= 1;
        else elapsed <= 0;
        
    assign clk_out = elapsed;
endmodule
