`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2020 21:04:32
// Design Name: 
// Module Name: divide_25Hz
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


module divide_25Hz(
    input clk_in,
    output clk_out
    );
    reg elapsed;
    reg [27:0] state;
    
    always @(posedge clk_in)
        if (state == 4000000) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 4000000) elapsed <= 1;
        else elapsed <= 0;
        
    assign clk_out = elapsed;
endmodule
