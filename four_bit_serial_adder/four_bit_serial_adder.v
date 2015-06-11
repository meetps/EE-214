/*********************************************************
* 4 Bit Serial Adder Using Shift Registers
* Author : Meet P Shah
* E-mail : meetshah1995@gmail.com
**********************************************************/

// Module for a Four Bit Serial Adder
module four_bit_serial_adder(clk,start,A,B,S,done);           
	
	//Four Bit Inputs A and B, Clock and Start
	input clk,start; input [3:0]A,B;
	//Four Bit Output S and done 
	output done;
	output [3:0]S; 
	//Intermediatary stages of A and B (Shift Registers)
	reg [3:0]shiftA,shiftB,S;

//Shifting Input 1 ie A 	
always@(posedge clk)
	begin                        
		if(start)shiftA<=A;
		if((~start)&(!done))shiftA<={1'b0,shiftA[3:1]};
	end

//Shifting Input 2 ie B	
always@(posedge clk)
	begin                          
		if(start)shiftB<=B;
		if((~start)&(!done))shiftB<={1'b0,shiftB[3:1]};
	end

//Carry Variable to Handle overflows	
reg carry;                        


//Addition Function Implementation
always@(posedge clk)
	begin
		if(start) carry=1'b0;
		if((~start)&(~done)) carry<=((shiftA[0]&shiftB[0])|(shiftB[0]&carry)|(carry&shiftA[0]));
	end
//To catch the calculated sum
wire sum_bit;                                    
assign sum_bit=shiftA[0]^shiftB[0]^carry;


//Shift Register for Sum
always@(posedge clk)
	begin                               
		if (start) S<=4'b0000;
		if ((~start)&(~done)) S<={sum_bit,S[3:1]};
	end


//Calcuting Done or not
reg [2:0]count;                                        
always@(posedge clk)
	begin
		if(start) count=3'b000;
		if((~start)&(~done)) count<=count+1;
	end

//Assign Done = 1 when count is 5
assign done=((count[2])&(~count[1])&(~count[0]));
endmodule

//Module Used for Testing and Simulatition
module test;
reg clk,start; reg [3:0]A,B;
wire [3:0]S; 
four_bit_serial_adder x0(clk,start,A,B,S,done);
endmodule