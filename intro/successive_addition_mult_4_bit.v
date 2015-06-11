
module successive_addition_mult_4_bit
( 
	clk, 
	multstart, 
	multd_in, 
	multr_in, 
	result, 
	done 
);

// comment : portlist is â€œclk, multstart, multd_in, multr_in, result, doneâ€

input 		clk, multstart; 
input [3:0] multd_in, multr_in;
output 		 done; 
output [3:0] result;

// comment : declarations of â€œinput/output portsâ€ with their â€œsize-rangesâ€.
// comment : below are the signal-type-size declarations
// comment : signal declarations are CRUCIAL to syntax of Verilog
// comment : you will learn the simple â€œrulesâ€ for declarations soon.
// comment : ----------------- signal declarations begin -----------------------------

reg [3:0] multd;
// â€œmuld[3:0]â€ is declared as â€œregâ€ because
// it is getting â€œassignedâ€ inside an â€œalwaysâ€ block, in the design below

wire [3:0] result;
// â€œresult[3:0]â€ is declared as â€œwireâ€ because it connected
// to an â€œoutputâ€ port of an instance, in the design below
// ( namely, â€œqâ€ output of â€œparallel_register_4_bitâ€ instance ),
// in the design below)

wire ctr_load, ctr_enable, update_result;
// â€œctr_load, ctr_enable, update_resultâ€ are declared as â€œwireâ€ objects
// because they are driven inside an â€œcontinuous assignâ€ starement.

wire [3:0] next_result;
// â€œnext_result[3:0]â€ is declared as â€œwireâ€ object
// because these signals are driven inside an â€œcontinuous assignâ€ starement.

wire [3:0] count;
// â€œcount[3:0]â€ is declared as â€œwireâ€ because it connected
// to an â€œoutputâ€ port of an instance
// ( namely, â€œqâ€ output of â€œdown_counter_4_bitâ€ instance ),
// in the design below)
// comment : ----------------- signal declarations end -----------------------------

always @( posedge clk ) 
	if ( multstart ) 
		multd <= multd_in ;

	down_counter_4_bit i0 
	( 	
		.clk(clk), 
		.load(ctr_load), 
		.din(multr_in), 
		.enable(ctr_enable), 
		.q(count) 
	);

	assign ctr_load = multstart;
	assign ctr_enable = | count;
	assign next_result = result + multd;

	parallel_register_4_bit i1 
	( 
		.clk(clk), 
		.clear(multstart),
		.load(update_result), 
		.din(next_result), 
		.q(result) 
	);

	assign update_result = | count ;
	assign done = ~ ( count[3] | count[2] | count[1] | count[0] );
endmodule
//--------------------------------------------------------------------//

module down_counter_4_bit 
( 
	clk, 
	load, 
	din, 
	enable, 
	q 
);

input 		clk, load, enable; 
input  [3:0] din; 
output [3:0] q;

wire   [3:0] din; 
reg    [3:0] q;

always @( posedge clk ) 
begin
	if ( load ) 
		q <= din; 
	else if(enable) 
		q <= q - 1;
	end
endmodule
//--------------------------------------------------------------------//

module parallel_register_4_bit 
( 
	clk, 
	clear, 
	load, 
	din, 
	q 
);

input 		 clk, clear, load; 
input  [3:0] din; 
output [3:0] q;
wire 	 [3:0] din; 
reg 	 [3:0] q;

always @( posedge clk ) 
	if(clear) 
		q <= 0; 
	else if (load) 
		q <= din;
endmodule
//--------------------------------------------------------------------//

// --------------An input stimulus for â€œtest-benchingâ€ the design----------------------------
// In one of the forthcoming lectures we will discuss â€œtest-benchâ€ a little bit.
module test;
reg 		  clk, multstart; 
reg  [3:0] multd_in, multr_in;
wire [3:0] result;

successive_addition_mult_4_bit i0 
( 
	clk, 
	multstart, 
	multd_in, 
	multr_in, 
	result, 
	done 
);

initial 
begin
	clk = 1;
	#6 multstart=1; 
		multd_in = 4'd3; 
		multr_in = 4'b0100;
	#20 
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