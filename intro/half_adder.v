// Half Adder
module half_adder (x, y, out_sum, out_carry);
input  x;
input  y;
output out_sum;
output out_carry;

assign out_sum = x^y;
assign out_carry = x&y;

endmodule 