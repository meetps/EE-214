module autoGenerator( clk , tuneSel, to);

input clk;
input tuneSel;

reg os;
reg [6:0] ki;

output to;

reg clk_5sec;
reg [18:0] count_5sec; 
reg clk_2sec;
reg [18:0] count_2sec; 
reg clk_1sec;
reg [18:0] count_1sec;
 
reg [5:0] count;

initial 
	begin
		clk_5sec = 0;
		count_5sec = 0;
		os = 0;
		ki = 7'b0000001;
		count = 0;
	end
	
toneGenerator t1(.clk(clk), .octaveSel(os), .keyIn(ki),.toneOut(to));

always@(posedge clk_5sec)
	begin
		//Tune 1
		if(tuneSel == 0)
		begin
		if(count == 5'b00001)
			ki <= 7'b0000001;
		else if(count == 5'b00010)
			ki <= 7'b0000010;
		else if(count == 5'b00011)
			ki <= 7'b0000100;
		else if(count == 5'b00100)
			ki <= 7'b0001000;
		else if(count == 5'b00101)
			ki <= 7'b0010000;
		else if(count == 5'b00110)
			ki <= 7'b0100000;
		else if(count == 5'b00111)
			begin
			os <= 1;
			ki <= 7'b1000000;
			end
		else if( count == 5'b01000)
				begin
			  ki <= 7'b0000001;
			  os <= 0;
			  end
		else if( count == 5'b01001)
			 ki <= 7'b0000001;
		else if( count == 5'b01010)
			 ki <= 7'b1000000;
		else if( count == 5'b01011)
			 ki <= 7'b0100000;
		else if( count == 5'b01100)
			 ki <= 7'b0010000;
		else if( count == 5'b01101)
			 ki <= 7'b0001000;
		else if( count == 5'b01110)
			 ki <= 7'b0000100;
		else if( count == 5'b01111)
			 ki <= 7'b0000010;
		else if( count == 5'b10000)
			 ki <= 7'b0000001;
		if(count == 5'b10000)
			count <= 5'b00000;
		else 
			begin
			count <= count + 1'b1;	 
			end
		end
		
		//Tune 2
	else if(tuneSel == 1)
		begin
			if(count == 5'b00001)
			ki <= 7'b0000001;
		else if(count == 5'b00010)
			ki <= 7'b0000000;
		else if(count == 5'b00011)
			ki <= 7'b0000000;
		else if(count == 5'b00100)
			ki <= 7'b0000001;
		else if(count == 5'b00101)
			ki <= 7'b0010000;
		else if(count == 5'b00110)
			ki <= 7'b0100000;
		else if(count == 5'b00111)
			ki <= 7'b1000000;
		else if( count == 5'b01000)
			 ki <= 7'b0000001;
		else if( count == 5'b01001)
			 ki <= 7'b0000001;
		else if( count == 5'b01010)
			 ki <= 7'b1000000;
		else if( count == 5'b01011)
			 ki <= 7'b0100000;
		else if( count == 5'b01100)
			 ki <= 7'b0010000;
		else if( count == 5'b01101)
			 ki <= 7'b0001000;
		else if( count == 5'b01110)
			 ki <= 7'b0000100;
		else if( count == 5'b01111)
			 ki <= 7'b0000010;
		else if( count == 5'b10000)
			 ki <= 7'b0000001;
		if(count == 5'b10000)
			count <= 5'b00000;
		else 
			begin
			count <= count + 1'b1;	 
			end
		end
	end

	

	
// 0.5 sec clk	
always @(posedge clk)
begin
	count_5sec <= count_5sec + 19'd1;
	if(count_5sec > 12500000)
	begin 
		count_5sec <= 0;
		clk_5sec <= ~clk_5sec;
	end
end

//.2 second clock
always @(posedge clk)
begin
	count_2sec <= count_2sec + 19'd1;
	if(count_2sec > 5000000)
	begin 
		count_2sec <= 0;
		clk_2sec <= ~clk_2sec;
	end
end

//1 second clock
always @(posedge clk)
begin
	count_1sec <= count_1sec + 19'd1;
	if(count_1sec > 25000000)
	begin 
		count_1sec <= 0;
		clk_1sec <= ~clk_1sec;
	end
end

endmodule

