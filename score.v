`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2020 04:49:00 PM
// Design Name: 
// Module Name: score
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


module score(
    input clk,
    input reset,
    output score
    );
    reg [12:0] mem;    
    always @(reset, posedge clk)
    begin
        if (reset) mem = 0;
        else mem = mem + 1;
    end
    assign score = mem;    
endmodule