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
    output [13:0] score
    );
    
    reg [13:0] score_reg;
    reg [13:0] count;
    
    initial begin
        score_reg = 0;
        count = 0;
    end
    
    always @(posedge clk) begin
        if (reset) score_reg = 0;
        if (~hit) count = count + 1;
    end
    
    always @(count) begin
        score_reg = score_reg + 1;
    end
    
    assign score = score_reg;
    
endmodule
