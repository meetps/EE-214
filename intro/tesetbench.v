
// --------------An input stimulus for “test-benching” the design----------------------------
// In one of the forthcoming lectures we will discuss “test-bench” a little bit.
module test;
reg 		 clk, multstart; 
reg  [3:0] multd_in, multr_in;
wire [3:0] result;

successive_addition_mult_4_bit i0 
//change the name of your upper module to 
// "successive_addition_mult_4_bit"
( 
	clk, 
	multstart, 
	multd_in, 
	multr_in, 
	result, 
	done 
);
//change the name of your upper module to 
// "successive_addition_mult_4_bit"

initial 
begin
	clk = 1;
	#6 //amount of delay to be introduced
	multstart=1; 
	multd_in = 4'd3;  //inputs to multiplier
	multr_in = 4'b0100;
	#20 //amount of delay to be introduced
		multstart = 0;
	#120
		multstart=1; 
		multd_in = 4'd4; 
		multr_in = 4'b0011;
	#20 
		multstart = 0;
		end

always #10 clk = ~clk;
endmodule 