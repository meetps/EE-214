module toneGenerator(clk , octaveSel, keyIn, toneOut);

input clk;
input octaveSel;
input [6:0] keyIn;

output reg toneOut;

reg clk_240 = 0;
reg clk_480 = 0;
reg clk_270 = 0;
reg clk_540 = 0;
reg clk_300 = 0;
reg clk_600 = 0;
reg clk_320 = 0;
reg clk_640 = 0;
reg clk_360 = 0;
reg clk_720 = 0;
reg clk_400 = 0;
reg clk_800 = 0;
reg clk_450 = 0;
reg clk_900 = 0;

reg [18:0] count_240;
reg [18:0] count_480;

reg [18:0] count_270;
reg [18:0] count_540;

reg [18:0] count_300;
reg [18:0] count_600;

reg [18:0] count_320;
reg [18:0] count_640;

reg [18:0] count_360;
reg [18:0] count_720;

reg [18:0] count_400;
reg [18:0] count_800;

reg [18:0] count_450;
reg [18:0] count_900;

initial 
	begin
		clk_240 = 0;
		clk_480 = 0;
		clk_270 = 0;
		clk_540 = 0;
		clk_300 = 0;
		clk_600 = 0;
		clk_320 = 0;
		clk_640 = 0;
		clk_360 = 0;
		clk_720 = 0;
		clk_400 = 0;
		clk_800 = 0;
		clk_450 = 0;
		clk_900 = 0;
		
		count_270 = 0;
		count_540 = 0;
		count_300 = 0;
		count_600 = 0;
		count_320 = 0;
		count_640 = 0;
		count_360 = 0;
		count_720 = 0;
		count_400 = 0;
		count_800 = 0;
		count_450 = 0;
		count_900 = 0;
		count_240 = 0;
		count_480 = 0;
	end

always @(posedge clk)
begin
	count_240 <= count_240 + 19'd1;
	if(count_240 > 104166)
	begin 
		count_240 <= 0;
		clk_240 <= ~clk_240;
	end
end

always @(posedge clk)
begin
	count_480 <= count_480 + 19'd1;
	if(count_480 > 52083)
	begin 
		count_480 <= 0;
		clk_480 <= ~clk_480;
	end
end

always @(posedge clk)
begin
	count_270 <= count_270 + 19'd1;
	if(count_270 > 92592)
	begin 
		count_270 <= 0;
		clk_270 <= ~clk_270;
	end
end

always @(posedge clk)
begin
	count_540 <= count_540 + 19'd1;
	if(count_540 > 46296)
	begin 
		count_540 <= 0;
		clk_540 <= ~clk_540;
	end
end

always @(posedge clk)
begin
	count_300 <= count_300 + 19'd1;
	if(count_300 > 83333)
	begin 
		count_300 <= 0;
		clk_300 <= ~clk_300;
	end
end

always @(posedge clk)
begin
	count_600 <= count_600 + 19'd1;
	if(count_600 > 41666)
	begin 
		count_600 <= 0;
		clk_600 <= ~clk_600;
	end
end


always @(posedge clk)
begin
	count_320 <= count_320 + 19'd1;
	if(count_320 > 78125)
	begin 
		count_320 <= 0;
		clk_320 <= ~clk_320;
	end
end

always @(posedge clk)
begin
	count_640 <= count_640 + 19'd1;
	if(count_640 > 39062)
	begin 
		count_640 <= 0;
		clk_640 <= ~clk_640;
	end
end

always @(posedge clk)
begin
	count_360 <= count_360 + 19'd1;
	if(count_360 > 69444)
	begin 
		count_360 <= 0;
		clk_360 <= ~clk_360;
	end
end

always @(posedge clk)
begin
	count_720 <= count_720 + 19'd1;
	if(count_720 > 347222)
	begin 
		count_720 <= 0;
		clk_720 <= ~clk_720;
	end
end

always @(posedge clk)
begin
	count_400 <= count_400 + 19'd1;
	if(count_400 > 62500)
	begin 
		count_400 <= 0;
		clk_400 <= ~clk_400;
	end
end

always @(posedge clk)
begin
	count_800 <= count_800 + 19'd1;
	if(count_800 > 31250)
	begin 
		count_800 <= 0;
		clk_800 <= ~clk_800;
	end
end

always @(posedge clk)
begin
	count_450 <= count_450 + 19'd1;
	if(count_450 > 55555)
	begin 
		count_450 <= 0;
		clk_450 <= ~clk_450;
	end
end

always @(posedge clk)
begin
	count_900 <= count_900 + 19'd1;
	if(count_900 > 27777)
	begin 
		count_900 <= 0;
		clk_900 <= ~clk_900;
	end
end


// Tone Selector Block 
always@(posedge clk)
	begin
		if(octaveSel == 0 ) 
			begin 
		if(keyIn == 7'b0000001)
			begin
				toneOut <= clk_240;	
			end
		else if(keyIn == 7'b0000010 )
			begin
				toneOut <= clk_270;
			end
		else if(keyIn == 7'b0000100 )
			begin
				toneOut <= clk_300;
			end
		else if(keyIn == 7'b0001000 )
			begin
				toneOut <= clk_320;
			end
		else if(keyIn == 7'b0010000 )
			begin
				toneOut <= clk_360;
			end
		else if(keyIn == 7'b0100000 )
			begin
				toneOut <= clk_400;
			end
		else if(keyIn == 7'b1000000 )
			begin
				toneOut <= clk_450;
			end
			//For silence :D
		else if(keyIn == 7'b0000000)
			begin
				toneOut <= 0;
			end
		else 
			begin
				toneOut <= clk_240;
			end
			end
			
		else if(octaveSel == 1)
		
	begin		
		if(keyIn == 7'b0000001 )
			begin
				toneOut <= clk_480;
			end
		else if(keyIn == 7'b0000010 )
			begin
				toneOut <= clk_540;
			end
		else if(keyIn == 7'b0000100 )
			begin
				toneOut <= clk_600;
			end
		else if(keyIn == 7'b0001000 )
			begin
				toneOut <= clk_640;
			end
		else if(keyIn == 7'b0010000 )
			begin
				toneOut <= clk_720;
			end
		else if(keyIn == 7'b0100000 )
			begin
				toneOut <= clk_800;
			end
		else if(keyIn == 7'b1000000 )
			begin
				toneOut <= clk_900;
			end
			//For silence :D
		else if(keyIn == 7'b0000000)
			begin
				toneOut <= 0;
			end
		else 
			begin
				toneOut <= clk_480;
			end
		end
	end
endmodule