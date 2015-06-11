/*********************************************************
* 4 Bit Multiplier Verilog Code using Successive Addition
* Author : Meet P Shah
* E-mail : meetshah1995@gmail.com
**********************************************************/
// 4 Bit Down Counter Module
module four_bit_down_counter(load, input_number , clock, borrow, counter_output);

//Input for Clock , Load Switch and Four Bit Input Number
input clock , load; 
input [3:0] input_number;

//Output Variables for Counter and Borrow 
output reg [3:0] counter_output;
output reg borrow; 

always@( posedge clock ) 
begin
  	if (load) 
  		{borrow, counter_output} <= {1'b0, input_number};
  	else 
  		{borrow, counter_output} <= {borrow, counter_output} - 1;
end
endmodule


// 8 Bit Adder Module
module eight_bit_adder( input_1 , input_2, adder_output);

//Input variables for 2 Four Bit Inputs 
input [7:0] input_1;
input [7:0] input_2;

//Output Variables for 4 Bit Sum
output [7:0] adder_output;

//Compute the Addition
assign adder_output = input_1 + input_2;

endmodule

// 8 Bit Shift Register Module
module eight_bit_pipo_shift_register(load_clear, clock ,input_number, final_output);

// Input variables for Load , Clock and Input 8 Bit Number
input load_clear, clock;
input [7:0] input_number;

//Output Variable for The parallel 8 bit output
output reg [7:0] final_output;
always @(posedge clock )
	begin
		if(!load_clear)
			assign final_output = input_number;
	end
always @(posedge load_clear)
	begin
		assign final_output = 8'b00000000;
	end
endmodule

//Final Top level module for the final multiplier
module four_bit_multiplier(CLOCK, LOAD, MULTIPLICAND, MULTIPLIER, RESULT);

//Four Major Inputs of a Multiplier - Clock , multiplicand, multiplier and load
input CLOCK;
input LOAD;
input [3:0] MULTIPLICAND;
input [3:0] MULTIPLIER;

//Output Variable Result 
output wire [7:0] RESULT;

// Intermediatary sub-system outputs needed for inter-connections
wire BORROW;
wire [3:0] COUNTER_OUTPUT;
//to take data from output of register to its input 
wire [7:0] PARTIAL_SUM;
wire [7:0] PARTIAL_PRODUCT;
wire AND_CLOCK;

//Implementation of the AND gate
assign AND_CLOCK = ~(CLOCK|BORROW);

//Instances of above defined modules 
four_bit_down_counter counter(LOAD, MULTIPLIER, AND_CLOCK, BORROW, COUNTER_OUTPUT);
eight_bit_adder adder(MULTIPLICAND, PARTIAL_PRODUCT, PARTIAL_SUM);
eight_bit_pipo_shift_register register(LOAD, AND_CLOCK, PARTIAL_SUM, PARTIAL_PRODUCT);

assign RESULT = PARTIAL_PRODUCT;
endmodule

//TestBenching using Simulation.
module test;
reg CLOCK;
reg LOAD;
reg [3:0] MULTIPLICAND;
reg [3:0] MULTIPLIER;
wire [7:0] FINAL_RESULT;
four_bit_multiplier fbm(CLOCK, LOAD, MULTIPLICAND, MULTIPLIER, FINAL_RESULT); 
endmodule

