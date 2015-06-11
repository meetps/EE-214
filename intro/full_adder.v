module full_adder(x, y, carry_in, sum_out, carry_out);

input  x; 
input  y;
input  carry_in;
output sum_out;
output carry_out;

wire w_sum1;
wire w_carry1;
wire w_carry2;

assign carry_out = w_carry1 | w_carry2;

half_adder u1_half_adder(.x(x), .y(y), .out_sum(w_sum1), .out_carry(w_carry1));                    
half_adder u2_half_adder(.x(w_sum1), .y(carry_in), .out_sum(sum_out), .out_carry(w_carry2));               

endmodule 