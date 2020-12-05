`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2020 03:27:58 PM
// Design Name: 
// Module Name: score_count
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


module score_count(
    input clk,
    input hit,
    input reset,
    output [31:0] score
    );
    
    reg [31:0] score_reg;
    
    initial begin
        score_reg = 0;
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) score_reg = 0;
        else if (~hit) score_reg = score_reg + 1;
    end
    
    assign score = score_reg;
    
endmodule
