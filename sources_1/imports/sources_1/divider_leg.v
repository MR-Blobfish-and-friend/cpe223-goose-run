`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2020 09:30:41 PM
// Design Name: 
// Module Name: divider_leg
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


module divider_leg(
    input clk_in,
    output clk_out
    );
    reg elapsed;
    reg [4:0] state;
    
    always @(posedge clk_in)
        if (state == 15) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 15) elapsed <= 1;
        else elapsed <= 0;
        
    assign clk_out = elapsed;
endmodule
