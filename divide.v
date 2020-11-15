`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 10:44:39 AM
// Design Name: 
// Module Name: divide
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


module divide(
    input clock,
    output clk_2Hz
    );
    reg elapsed_2Hz;
    reg [27:0] state;
    
    always @(posedge clock)
        if (state == 50000000) state <= 0;
        else state <= state + 1;
    always @(state)
    begin
        if (state == 50000000) elapsed_2Hz <= 1;
        else elapsed_2Hz <= 0;
    end
    assign clk_2Hz = elapsed_2Hz;
endmodule
