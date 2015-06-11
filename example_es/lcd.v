//LCD module interfacing for vending machine
//Timing diagram for start and done acknowledgement(LCD handshaking) signals is attached in zip folder

module lcd(start, done, qty, item, price, msg_index,lcd, lcd_rs, lcd_rw, lcd_en, clk, rst);

output lcd_rs, lcd_rw, lcd_en, done;		// done : acknowledgement to main FSM for LCD printing done. 
output [7:0] lcd;							// data lines of LCD
input clk, rst, start; 						// start : start printing LCD
input [2:0] qty;							// quantity of item 
input [1:0] item;							// item: pepsi ,coke or lays	
input [7:0] price;							// price of item or total price 
input [3:0] msg_index;						// format of message to be printed 


reg [2:0] count_cmd;						// used for LCD initialization
reg [7:0] lcd_cmd [0:4];					// LCD commands for initialization
reg flag ;									// used to start printing character. if flag=1 then states to print a char are executed. n_flag is set when printing is done.
reg [2:0] lcd_state;						// lcd states
reg [3:0] state;							// controller states : this controller communicates with main-FSM and LCD-FSM. It is interface between main-FSM and LCD-FSM
reg [7:0] hundreds, tens, ones;				// internal variables used to store Binary to BCD conversion output
reg lcd_ready;								// to indicate LCD is done initiating. ready to print data.						
reg done , clk10 ;							// clk10 10 ms clock
reg [7:0] lcd_dat,lcd;						// lcd_dat data to be printed by LCD
reg lcd_rs,lcd_rw,lcd_en;					// LCD pins


reg [8*16:1] msg[0:12];						// msg array to store msg format
/*
0 available
1 item1
2 item2
3 item3
4 total price=
5 item available	quantity
6 error
7 enter money
8 make switches 0		
*/
							 
reg [7:0] lcd_msg [0:15];					// stores msg to be printed
reg [4:0]char_count;						// to point to particular character in msg
integer i,j=0;			
reg [18:0]count;							// used for 10ms clock
reg [2:0] temp;								// used to print 3 digit price
reg source_state[3:0];						// not used (extra)
reg [7:0] lcd_char;							// character in msg 
reg reset,n_flag,n_reset;					// n_flag : acknowledgement for flag. n_reset: ack. for reset. lcd works at slower speed so,flag-n_flag and reset-n_reset handshake. is needed. 
reg [19:0] shift;							// used for binary to BCD conversion.

//////LCD states//////
parameter S0 = 3'b000;		// S0 to S2 used for init
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;		// S3 to S5 used for printing character
parameter S4 = 3'b100;
parameter S5 = 3'b101;

//////controller states//////
parameter d0 = 4'b0000;		//1st after reset. checks msg_index and decides msg to be printed.
parameter d1 = 4'b0001;		// d1, d2 and d5 are used to print 16 characters in msg
parameter d2 = 4'b0010;
parameter d3 = 4'b0011;		// after printing msg, fsm waits in this state till next start arrives. done signal is made 1 here. It remains 1 till next start arrives.
parameter d4 = 4'b0100;		// d4, d6 and d7 are used to reset the lcd and print next msg when start arrives.
parameter d5 = 4'b0101;
parameter d6 = 4'b0110;
parameter d7 = 4'b0111;

initial
begin
 reset<=1'b0;
 n_reset<=1'b0;
 lcd_cmd[0]<= 8'h38;
 lcd_cmd[1]<= 8'h01;
 lcd_cmd[2]<= 8'h80;
 lcd_cmd[3]<= 8'h0E;
 lcd_cmd[4]<= 8'h06;
 
 ///*******do not change length of msg******
 msg[0]<="   Push 1       ";	//at the beginning on reset index will be displayed. Thus msg[0],msg[1],msg[2],msg[3] are displayed
 msg[1]<="   Push 2       ";	// in place of @@@, price is printed
 msg[2]<="   Push 3       ";
 msg[3]<="   Push 4       ";
 msg[4]<="  Reset Bitch ! ";	//After input item and qty is selected this msg is displayed
 msg[5]<="available  #    ";	//in place of #, quantity is printed, this msg will be displayed when item is selected
 msg[6]<="  REFILL DONE   ";	//This msg is display any system error
 msg[7]<="	Enter money   ";	
 msg[8]<="Reset switches  ";
 msg[9]<="Change=Rs.@@@   ";	//If the input money given by user > total cost
 msg[10]<="  Thank You    ";
 msg[11]<="Balance amt@@@ ";	//If the input money given by user < total cost;in place of @ amt should be printed
 msg[12]<=" Purchase Done ";	//Transaction is over

 clk10 <= 1'b0;
 done <=1'b0;
 state <= 4'b0000;
 lcd_state <= 3'b000;
 count = 0;
 temp <= 3'b0;
 flag <= 1'b0;
 n_flag <= 1'b0;
 count_cmd <=3'b000;
 char_count <=5'b00000;
 lcd_char<="";
 hundreds<=8'b0;
 tens<=8'b0;
 ones<=8'b0;
 
 lcd_ready <= 1'b0;
end

always @ (posedge clk)
begin 
	if(rst)
		begin 
			state[3:0] <= d0;
			j<=0;
			reset<=1'b1;
			done <=1'b0;
			char_count<=5'b0000;
		end 
	else
		begin

			case(state)
			d0:						//Selects msg to be printed			
				begin
 
					reset=1'b0;
					done <= 1'b0;
					case(msg_index)
					
					4'b0000:begin
								{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]} <= msg[0];
								char_count<=5'b00000;
								state <= d1;
							end

					4'b0001:begin
							j=0;
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]} <= msg[1];
							state <= d1;
							end
							
					4'b0010:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]} <= msg[2];
							state <= d1;
							end

					4'b0011:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]} <= msg[3];
							state <= d1;
							end		

					4'b0100:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]} <= msg[4];
							state <= d1;
							end	
							
					4'b0101:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[5];
							state <= d1;
							end	
	
					4'b0110:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[6];
							state <= d1;
							end
							
					4'b0111:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[7];
							state <= d1;
							end
							
					4'b1000:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[8];
							state <= d1;
							end							
					
					4'b1001:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[9];
							state <= d1;
							end
		
					4'b1010:begin
							{lcd_msg[0],lcd_msg[1],lcd_msg[2],lcd_msg[3],lcd_msg[4],lcd_msg[5],lcd_msg[6],lcd_msg[7],lcd_msg[8],lcd_msg[9],lcd_msg[10],lcd_msg[11],lcd_msg[12],lcd_msg[13],lcd_msg[14],lcd_msg[15]}<= msg[10];
							state <= d1;
							end
							
					default:begin	
							j<=0;
							state <= d0;
							end
					endcase
					end

			d1:		// character is put in lcd_dat. and flag is set so that lcd starts printing		
				begin
					
						lcd_char <= lcd_msg[char_count[3:0]];
						if(lcd_char=="@")		//to display price in decimal , price is 8 bit binary so can 
												//have maximum value of 255
							begin
							if(temp==0)
								begin
								lcd_dat <= hundreds;
								end
							else if(temp==1)
								begin
								lcd_dat <= tens;
								end
							else if(temp > 1)
								begin
								lcd_dat <= ones;
								temp <= 3'b0;
								end
							flag<=1;
							temp<=temp+ 3'd1;
							state <= d2;		
							end
						else if(lcd_char=="#")
							begin
								lcd_dat <= {4'h3,1'b0,qty};	//ASCII value 
								flag<=1;
								state <= d2;
							end
						
						else if(char_count[3:0] > 4'b1110)	//to check writing of 16 characters
							begin 
							j<=j+1;
							j<=j%4;
							state <= d3;	
							end
						else 
							begin
								lcd_dat <= lcd_char;
								flag<=1;
								state <= d2;
							end
				end

			d2:			// wait for lcd to complete printing the character	(n_flag=1)		
				begin
					if(n_flag==1'b1)
						begin
						flag=1'b0;
						char_count <= char_count + 5'd1;
						state <= d5;
						end
				end		
			
			d5: 			// wait for lcd to remove the n_flag. LCD works at 10 ms and controller fms works at 50 MHz. So, this needs to be done. 
				begin
					if(n_flag==1'b0)
						begin
						state <= d1;
						end
				end
				
				
			d3:						// wait till next starts comes. done=1 till that time.
				begin
					char_count<=5'b0000;
					temp <= 3'b000;
					if((start==1'b1))
					begin
						reset<=1'b1;		// reset lcd to display next msg.
						state <= d7;
						done <= 1'b0;
					end
					else
						done <= 1'b1;
				end
			
			d7:			// wait for start to become low. 
				begin
					if((start==1'b0))
						begin
						temp <= 3'b000;
						char_count<=5'b0000;	
						state <= d6;
						end
				end
				
			d6: 			// wait to receive reset acknowledgement.
				begin
					if(n_reset==1'b1)
						begin
						reset <= 1'b0;
						state <= d4;
						end
				end
			
			d4:			// wait till LCD is ready. After that, goto d1 to get a character to be printed.
				begin
					done <= 1'b0;
					reset<=1'b0;
					if(lcd_ready==1)
					begin
						state <= d0;
					end
				end				
				
			endcase
		end
end



///////////////////lcd handling
always @ (posedge clk10)
begin
	
	if (reset)
		begin
			lcd_state <= S0;
			count_cmd <= 3'h0; 			// Index to the LCD command array
			lcd_ready<=1'b0;
			n_flag<=1'b0;
			n_reset<=1'b1;
		end
	else
		begin
		n_flag=1'b0;
			case (lcd_state)
			S0: // S0 to S2: Send LCD commands
				begin
				lcd_ready<=1'b0;
				n_flag <= 1'b0;
				n_reset<=1'b0;
				if (count_cmd < 3'h5)
					begin
					lcd <= lcd_cmd[count_cmd];
					lcd_rs <= 1'b0;
					lcd_rw <= 1'b0;
					lcd_en <= 1'b0;
					lcd_state <= S1;
					end	
// LCD requires 5 commands to be sent.
// We send these commands and wait for valid LCD data
				else 
					lcd_state <= S3;
					
				end
			S1:
				begin
					n_reset <=1'b0;
					n_flag  <= 1'b0;				
					lcd <= lcd_cmd[count_cmd];
					lcd_rs <= 1'b0;
					lcd_rw <= 1'b0;
					lcd_en <= 1'b1;
					lcd_state <= S2;
					lcd_ready<=1'b0;					
				end
			S2:
				begin
					n_flag <= 1'b0;
					n_reset <=1'b0;
					lcd <= lcd_cmd [count_cmd];
					lcd_rs <= 1'b0;
					lcd_rw <= 1'b0;
					lcd_en <= 1'b0;
					lcd_state <= S0;
					count_cmd <= count_cmd + 3'd1;
					lcd_ready <=1'b0;
				end
			S3: // S3 to S5: Send LCD data
				begin
					n_flag <= 1'b0;
					n_reset <=1'b0;
					
					lcd <= lcd_dat;
					lcd_rs <= 1'b1;
					lcd_rw <= 1'b0;
					lcd_en <= 1'b0;
					
					lcd_ready <=1'b1;
					n_flag <=1'b0;
					if(flag)
						lcd_state <= S4;
				end
			S4:
				begin
					n_flag <= 1'b0;	
					n_reset <=1'b0;
					
					lcd <= lcd_dat;
					lcd_rs <= 1'b1;
					lcd_rw <= 1'b0;
					lcd_en <= 1'b1;
					
					lcd_state <= S5;
					lcd_ready <=1'b1;
				end
			S5:
				begin
				n_reset <=1'b0;
				
				lcd <= lcd_dat;
				lcd_rs <= 1'b1;
				lcd_rw <= 1'b0;
				lcd_en <= 1'b0;
				
				n_flag <= 1'b1;
				if(flag)
					lcd_state <= S3;
					
				lcd_ready <= 1'b1;
				end
					
 			default:
				begin
					lcd_state <= S0;
					count_cmd <= 3'h0;
				end
			endcase
		end
end


//////generates 10ms clock
always @(posedge clk)
begin
	count <= count+ 19'd1;
	if(count> 250000)
	begin 
		count <= 0;
		clk10 <= ~clk10;
	end
end


always @(posedge clk)
//to convert 8 bit binary to decimal value to displayed on LCD
   begin
      // Clear previous number and store new number in shift register
      shift[19:8] = 0;
      shift[7:0] = price;//8'd105;//
      
      // Loop eight times
      for (i=0; i<8; i=i+1) begin
         if (shift[11:8] >= 5)
            shift[11:8] = shift[11:8] + 3;
            
         if (shift[15:12] >= 5)
            shift[15:12] = shift[15:12] + 3;
            
         if (shift[19:16] >= 5)
            shift[19:16] = shift[19:16] + 3;
         
         // Shift entire register left once
         shift = shift << 1;
      end
      
      // Push decimal numbers to output
      hundreds = {4'h3,shift[19:16]};	// ASCII values given for LCD display
      tens     = {4'h3,shift[15:12]};
      ones     = {4'h3,shift[11:8]};
   end


endmodule
