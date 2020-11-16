module vga_test
	(
		input wire clk, reset,
		input wire btnL,
		input wire btnR,
		output wire hsync, vsync,
		output wire [11:0] rgb
	);
	
	// register for Basys 2 8-bit RGB DAC 
	reg [11:0] rgb_reg;
	
	// video status output from vga_sync to tell when to route out rgb signal to DAC
	wire video_on;
    wire [9:0] x,y;
        // instantiate vga_sync
        vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync),
                                .video_on(video_on), .p_tick(), .x(x), .y(y));
        // rgb buffer
    reg H_border;
    reg V_border;
    reg bb;
    wire floor, goose, bean;
    
    divide_bean(clk, clk_25M);
    divide_G_jump(clk, clk_5);
    draw_floor f1(x, y, floor);
    draw_goose g1(x, y, clk_5, btnL, btnR, goose);
    draw_bean b1(x, y, clk_25M, bean);
    
//    always @(*)
//    begin
//        H_border <= (0 <= x && x < 640) && ((0 <= y && y < 16) || (y > 466 && y < 480));
//        V_border <= (0 <= y && y < 480) && ((0 <= x && x < 16) || (x > 624 && x < 640));
//    end
    
    always @(*)
    if (floor) rgb_reg = 12'h0ff;
    else if (goose) rgb_reg = 12'hf99;
    else if (bean) rgb_reg = 12'h8da;
    else rgb_reg = 12'h000;
    
    // output
    assign rgb = rgb_reg;
endmodule