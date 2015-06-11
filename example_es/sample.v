module sample(msgkey,clk,led,rst, push1 , push2 ,push3, push4,lcd,lcd_en,lcd_rs,lcd_rw);

input wire clk;
output reg [3:0] led;

input push1;
input push2;
input push3;
input push4;

input rst;

output lcd_rs;
output lcd_rw; 
output lcd_en;
output [7:0] lcd;

reg [2:0] lcd_qty=0;
reg [1:0] lcd_item_no=0;
reg [7:0] lcd_price=0;


reg lcd_start;
wire lcd_done;

input msgkey;

reg [1:0] state;

parameter state_1 = 2'b00;
parameter state_2 = 2'b01;

reg [3:0] lcd_msg_index;

lcd lcd0 (.start(lcd_start),
							.done(lcd_done), 
							.qty(lcd_qty), 
							.item(lcd_item_no), 
							.price(lcd_price), 
							.msg_index(lcd_msg_index),
							.lcd(lcd), 
							.lcd_rs(lcd_rs), 
							.lcd_rw(lcd_rw), 
							.lcd_en(lcd_en), 
							.clk(clk), 
							.rst(rst));

always@(posedge clk)
	begin
case(state)
state_1:
	begin
		lcd_start <= 1;
		if(!push1)
			begin
				led <= 8'b0010;
			end
		else if(!push2)
			begin
				led <= 8'b0001;
			end
		else if(!push3)
			begin
				led <= 8'b0100;
			end
		else if(!push4)
			begin
				led <= 8'b10000;
			end
		else if(rst)
			begin	
			led <= 8'b1111;
		end
		state <= state_2;
	end
state_2:
begin
	lcd_start <= 0;
	    if(!push1)
			begin
				led <= 8'b0001;
			end
		else if(!push2)
			begin
				led <= 8'b0010;
			end
		else if(!push3)
			begin
				led <= 8'b0100;
			end
		else if(!push4)
			begin
				led <= 8'b1000;
			end
		else if(rst)
			begin
			led <= 8'b1111;
			end
		if(lcd_done)
			begin
				if(!push1)
					begin
					lcd_msg_index <= 4'b0011;
					end	
				else
					begin
					lcd_msg_index <= 4'b0000;
					end
				state <= state_1;
				lcd_start <= 1;	
			end
		else 
			begin
				state <= state_2;
			end
end			
endcase
end
endmodule
//reg e,we,re,rd,wd;
//reg [14:0] adin;
//reg [14:0] adou;
//reg [7:0] dain; 
//reg [7:0] dainou;
//
//reg cs;
//reg we;
//reg oe;
//
//
//sram sram_instance(.clk(clk),rst_n,enable,addr_in,data_in,
//                   data_out,writeenable,readenable,rd_done,wr_done,
//                   sram_addr_out,sram_data,sram_cs_n,sram_we_n,sram_oe_n);