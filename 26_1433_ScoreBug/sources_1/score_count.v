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
    reg reset_mem;
    integer count;
    
    initial begin
        score_reg = 5;
        count = 0;
    end

    always @(posedge clk) begin
        if (reset) count <= 0;
        if (~hit) begin
            if (count == 10) count <= 0;
            else count <= count + 1;
        end
    end
    
    always @(count) begin
        if (count == 10) score_reg <= score_reg + 1;
        if (reset) score_reg <= 0;
    end
    
    assign score = score_reg;
    
endmodule
