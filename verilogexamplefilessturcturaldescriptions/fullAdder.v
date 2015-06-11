`timescale 1ns/100ps

module fullAdder(cout, sum, a, b, cin);
output cout, sum;
input a, b, cin;

assign {cout, sum} = a + b + cin;//Concatenation operator to assign MSB to cout, LSB to sum

endmodule

