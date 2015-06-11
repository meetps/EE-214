module vending_machine(clk, pepsi, lays, coke, quantity1, quantity2, quantity3, oqLED1,oqLED2,oqLED3, start_1, done_1, refill, tenRs, fiveRs, twoRs, oneRs, changeAmount, lcd, lcd_rs, lcd_rw, lcd_en, rst);

input wire clk;
input wire pepsi;
input wire lays;
input wire coke;
input wire refill;
input wire tenRs;
input wire fiveRs;
input wire twoRs;
input wire oneRs;
input wire quantity1;
input wire quantity2;
input wire quantity3;
input rst;

output reg [7:0] changeAmount;
 
reg qLED1;
reg qLED2;
reg qLED3;

output oqLED1;
output oqLED2;
output oqLED3;

output done_1;
output start_1;
  
output lcd_rs;
output lcd_rw; 
output lcd_en;
output [7:0] lcd;

reg lcd_start=0;
reg [2:0] lcd_qty=0;
reg [1:0] lcd_item_no=0;
reg [7:0] lcd_price=0;
reg [3:0] lcd_msg_index=0;


parameter state_idle = 3'b000;
parameter state_idle2 = 3'b110;
parameter state_selectQuantity = 3'b001;
parameter state_payment = 3'b010;
parameter state_transactionStatus = 3'b011;
parameter state_endMessage = 3'b100;
parameter state_refill = 3'b101;

parameter pepsiPrice = 4'b1100;
parameter cokePrice = 4'b1010;
parameter laysPrice = 4'b1111;

reg [2:0] pepsiQuantity = 3'b101;
reg [2:0] cokeQuantity  = 3'b101;
reg [2:0] laysQuantity = 3'b101;


//Main FSM state
reg [2:0] main_fsm_state;

//Stores the amount user has to pay
reg [7:0] total_change;

//Stores the amount user has to pay
reg [7:0] total_cost;

//Stores Money Entered
reg [7:0] total_money;

//Quantity of products available
reg [2:0] qty_database[0:3];

//Product Selected 00 for nothing , 01 for pepsi , 10 for lays , 11 for coke
reg [1:0] selected_product;

//Quantity Selected 
reg [2:0] selected_quantity;

//To Reset the LCD
reg lcd_rst;

//lcd to FSM
wire lcd_done;

lcd lcd_instance(.start(lcd_start),
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
	.rst(lcd_rst));

initial 
	begin
		//pepsiQuantity = 3'b101;
		//cokeQuantity = 3'b101;
		//laysQuantity = 3'b101;
		selected_quantity = 3'b000;
		selected_product = 2'b00; 
		total_money = 8'b00000000;
		total_cost = 8'b00000000;
		total_change = 8'b00000000;
		main_fsm_state = state_idle;
		lcd_msg_index = 4'b0000;
	end

assign oqLED1 = qLED1;
assign oqLED2 = qLED2;
assign oqLED3 = qLED3;
assign done_1 = lcd_done;
assign start_1 = lcd_start;
	
always@(posedge clk)
	begin
		case(main_fsm_state)
			state_idle:
				begin
					qLED1 <= 0;
					qLED2 <= 0;
					qLED3 <= 0;
					//lcd_msg_index <=  4'b0001;
					lcd_start <= 1'b1;
					selected_quantity <= 3'b000;
					if(pepsi)
						begin
							selected_product <= 2'b01;
							main_fsm_state <= state_selectQuantity; 
						end
					else if(lays)
						begin
							selected_product <= 2'b10;
							main_fsm_state <= state_selectQuantity;
						end
					else if(coke)
						begin
							selected_product <= 2'b11;
							main_fsm_state <= state_selectQuantity;
						end
					else
						begin
							selected_product <= 2'b00;
//							if(lcd_msg_index != 4'b0011)
//								begin
//									lcd_start <= 0;
//									lcd_msg_index <= lcd_msg_index  + 4'b0001;
//								end
//							else 
//								begin
//									lcd_start <= 0;
//									lcd_msg_index <= 4'b0000;
//								end
							main_fsm_state <= state_idle2;
						end
					selected_quantity <= {quantity1,quantity2,quantity3};
				end
				
			state_idle2:
				begin
					qLED1 <= 0;
					qLED2 <= 0;
					qLED3 <= 0;
					lcd_start <= 1'b0;
					selected_quantity <= 3'b000;
					if(pepsi)
						begin
							selected_product <= 2'b01;
							main_fsm_state <= state_selectQuantity; 
						end
					else if(lays)
						begin
							selected_product <= 2'b10;
							main_fsm_state <= state_selectQuantity;
						end
					else if(coke)
						begin
							selected_product <= 2'b11;
							main_fsm_state <= state_selectQuantity;
						end
					else
						begin
							if(lcd_done)
								begin
									if(lcd_msg_index != 4'b0011)
										begin
											lcd_msg_index <= lcd_msg_index  + 4'b0001;
										end
									else 
										begin
											lcd_msg_index <= 4'b0000;
										end
									main_fsm_state <= state_idle;	
									lcd_start <= 1;
								end
							else
								begin
									main_fsm_state <= state_idle2;
								end
							selected_product <= 2'b00;
						end
					selected_quantity <= {quantity1,quantity2,quantity3};
				end	
				
				
			state_selectQuantity:
				begin
					total_cost <= 8'b00000000;
					if(selected_product == 2'b01)
						begin
							if(selected_quantity > pepsiQuantity)
								begin
									main_fsm_state <= state_selectQuantity; 
								end
							else
								begin
									pepsiQuantity <= pepsiQuantity - selected_quantity;
									total_cost <= selected_quantity*pepsiPrice;
									main_fsm_state <= state_payment;		
								end		
						end
					else if(selected_product == 2'b10)
						begin
							if(selected_quantity > cokeQuantity)
								begin
									main_fsm_state <= state_selectQuantity; 
								end
							else
								begin
									cokeQuantity <= cokeQuantity - selected_quantity;
									total_cost <= selected_quantity*cokePrice;
									main_fsm_state <= state_payment;		
								end
						end
					else if(selected_product == 2'b11)
						begin
							if(selected_quantity > laysQuantity)
								begin
									main_fsm_state <= state_selectQuantity; 
								end
							else
								begin
									laysQuantity <= laysQuantity - selected_quantity;
									total_cost <= selected_quantity*laysPrice;
									main_fsm_state <= state_payment;		
								end
						end
					else
						begin
							main_fsm_state <= state_selectQuantity;
						end
				end
			state_payment:
				begin
					if(~oneRs)
						begin
							if(total_money < total_cost)
								begin
									total_money <= total_money + 4'b0001;
									main_fsm_state <= state_payment;
								end
							else if(total_cost <= total_money)
								begin
									main_fsm_state <= state_transactionStatus;
								end
						end
					else if(~twoRs)
						begin
							if(total_money < total_cost)
								begin
									total_money <= total_money + 4'b0010;
									main_fsm_state <= state_payment;
								end
							else if(total_cost <= total_money)
								begin
									main_fsm_state <= state_transactionStatus;
								end
						end
					else if(~fiveRs)
						begin
							if(total_money < total_cost)
								begin
									total_money <= total_money + 4'b0101;
									main_fsm_state <= state_payment;
								end
							else if(total_cost <= total_money)
								begin
									main_fsm_state <= state_transactionStatus;
								end
						end
					else if(~tenRs)
						begin
							if(total_money < total_cost)
								begin
									total_money <= total_money + 4'b1010;
									main_fsm_state <= state_payment;
								end
							else if(total_cost <= total_money)
								begin
									main_fsm_state <= state_transactionStatus;
								end
						end
				end
			state_transactionStatus:
				begin
					total_change <= 8'b00000000;
					total_change <= total_money - total_cost; 
					main_fsm_state <= state_endMessage;
				end
			state_refill:
				begin
					pepsiQuantity <= 3'b101;
					cokeQuantity <= 3'b101;
					laysQuantity <= 3'b101;
					lcd_msg_index <=  4'b0110;
					lcd_start <= 1'b1;
					selected_quantity <= 3'b000;
					if(lcd_done)
						begin
							main_fsm_state <= state_idle;
						end
				end
			state_endMessage:
				begin
					lcd_msg_index <=  4'b1100;
					qLED1 <= quantity1;
					qLED2 <= quantity2;
					qLED3 <= quantity3;
					if(pepsi | lays | coke | quantity1 | quantity2 | quantity3)
						begin
							main_fsm_state <= state_idle;
						end
					else
						begin
							main_fsm_state <= state_endMessage;
						end
					//end Message here with quantity , product , change . 
				end
		endcase
	end
endmodule