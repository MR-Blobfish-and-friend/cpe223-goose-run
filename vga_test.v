module vga_test
	(
		input wire clk, reset,
		input wire [11:0] sw,
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
    
    always @(*)
    begin
        H_border <= (0 <= x && x < 640) && ((0 <= y && y < 16) || (y > 466 && y < 480));
        V_border <= (0 <= y && y < 480) && ((0 <= x && x < 16) || (x > 624 && x < 640));
    end
    always @(*)
    if (H_border || V_border)
        rgb_reg = 12'hfff;
    else
        rgb_reg = 12'h000;
    
    // output
    assign rgb = rgb_reg;
endmodule