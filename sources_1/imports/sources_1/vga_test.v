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
    wire floor, goose, bean, score, score_hi, sky, grass, isEnd, isStart;
    wire [11:0] goose_rgb, bean_rgb, score_rgb, score_hi_rgb, sky_rgb, start_rgb;
    reg animate, hit, play;
    wire [31:0] score_wire;
    integer score_hi_mem;
    //wire reset = (JA[2] || JA[3]) && hit;
    initial begin
        hit = 0;
        score_hi_mem = 0;
        animate = 0;
        play = 0;
    end

    divide_25Hz d1(clk, clk_25Hz);
    divide_2p5Hz d2(clk, clk_2p5Hz);
    
    score_count scc(.clk(clk_2p5Hz), .hit(hit), .reset(reset), .score(score_wire));
    draw_score dsc(.x(x), .y(y), .score(score_wire), .isScore(score), .score_rgb(score_rgb));
    draw_score_hi dsh(.x(x), .y(y), .score_hi(score_hi_mem), .isScore(score_hi), .score_rgb(score_hi_rgb));
    draw_goose dg(.x(x), .y(y), .clk(clk_25Hz), .btnL(JA[2]), .btnR(JA[3]), 
                    .check_hit(hit), .reset(reset), .goose(goose), .goose_rgb(goose_rgb));
    draw_bean db(.x(x), .y(y), .clk(clk_25Hz), .check_hit(hit), .reset(reset), .bean(bean), .bean_rgb(bean_rgb));   
    draw_floor df(x, y, floor, grass);
    draw_sky ds(.x(x), .y(y), .sky(sky), .sky_rgb(sky_rgb));
    //draw_end de(.x(x), .y(y), .hit(hit),.isEnd(isEnd));
    start st(.x(x), .y(y), .rgb(start_rgb), .isStart_reg(isStart));
    
    vga_sync vga_sync_unit (.clk(clk), .hsync(hsync), .vsync(vsync), .video_on(video_on), .p_tick(), .x(x), .y(y));
    
//    always @(reset) play = 1;
    
    always @(posedge clk)
    begin
        if(reset) play = 1;
        if(~play) begin
            //score_hi_mem = 0;
            if (isStart) rgb_reg = start_rgb;
            else if (goose) rgb_reg = goose_rgb;
            else if (floor) rgb_reg = 12'h940;
            else if (grass) rgb_reg = 12'h2a2;
            else if (sky) rgb_reg = sky_rgb;
            else rgb_reg = 12'h000;
        end
        else begin
            if (reset) hit = 0;
            if (goose && bean) hit = 1;
            else if (isEnd) rgb_reg = 12'hfff;
    //        else if (isStart) rgb_reg = start_rgb;
            else if (score) rgb_reg = score_rgb;
            else if (score_hi) rgb_reg = score_hi_rgb;
            else if (goose) rgb_reg = goose_rgb;
            else if (bean) rgb_reg = bean_rgb;
            else if (floor) rgb_reg = 12'h940;
            else if (grass) rgb_reg = 12'h2a2;
            else if (sky) rgb_reg = sky_rgb;
            else rgb_reg = 12'h000;
        end
    end
    
    always @(score_wire)
        if (score_wire > score_hi_mem) score_hi_mem = score_wire;
    
    // output
    assign rgb = rgb_reg;
    assign led = score_wire;
endmodule