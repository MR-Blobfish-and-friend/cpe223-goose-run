module vga_test
	(
		input wire clk, reset,
		input wire [3:2] JA,
		input wire [3:0] sw,
		output wire hsync, vsync,
		output wire [11:0] rgb,
		output wire [15:0] led
	);
	
	reg [11:0] rgb_reg;
    wire [9:0] x,y;
    wire clk_25Hz, clk_2p5Hz;
    wire floor, goose, bean, score, score_hi, sky;
    wire [11:0] goose_rgb, bean_rgb, score_rgb, score_hi_rgb, sky_rgb;
    reg animate, hit;
    wire [31:0] score_wire;
    integer score_hi_mem;
    
    initial begin
        hit = 0;
        score_hi_mem = 0;
        animate = 0;
    end

    divide_25Hz d1(clk, clk_25Hz);
    divide_2p5Hz d2(clk, clk_2p5Hz);
    
    score_count scc(.clk(clk_2p5Hz), .hit(hit), .reset(reset), .score(score_wire));
    draw_score dsc(.x(x), .y(y), .score(score_wire), .isScore(score), .score_rgb(score_rgb));
    draw_score_hi dsh(.x(x), .y(y), .score_hi(score_hi_mem), .isScore(score_hi), .score_rgb(score_hi_rgb));
    draw_goose dg(.x(x), .y(y), .clk(clk_25Hz), .btnL(JA[2]), .btnR(JA[3]), 
                    .check_hit(hit), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean db(.x(x), .y(y), .clk(clk_25Hz), .check_hit(hit), .reset(reset), .bean(bean), .bean_rgb(bean_rgb));   
    draw_floor df(x, y, floor);
    draw_sky ds(.x(x), .y(y), .sky(sky), .sky_rgb(sky_rgb));
    
    vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync), .video_on(video_on), .p_tick(), .x(x), .y(y));

    always @(posedge clk)
    begin
        if (reset) begin
            hit = 0;
        end
        if (goose && bean) begin
            rgb_reg = 12'hf99;
            hit = 1;
            score_hi_mem = score_wire;
        end
        else if (score) rgb_reg = score_rgb;
        else if (score_hi) rgb_reg = score_hi_rgb;
        else if (goose) rgb_reg = goose_rgb;
        else if (bean) rgb_reg = bean_rgb;
        else if (floor) rgb_reg = 12'h940;
        else if (sky) rgb_reg = sky_rgb;
        else rgb_reg = 12'h000;
    end
    
    // output
    assign rgb = rgb_reg;
    assign led = score_wire;
endmodule