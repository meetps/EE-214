`timescale 1ns/100ps

module nBitAdder(cout, sum, in1, in2, cin);
output [3:0] sum;
output cout;
input [3:0] in1, in2;
input cin;

wire [2:0] auxCarry;//Intermediate carry values- output carry of 1 stage to input carry of next

//Component instantiation and port mapping in this format:
//Component type name should be exactly in the same order as in the smaller module fullAdder
//<Component type name> <instance name> (port mapping in correct order)

fullAdder fa1 (auxCarry[0], sum[0], in1[0], in2[0], cin);
fullAdder fa2 (auxCarry[1], sum[1], in1[1], in2[1], auxCarry[0]);
fullAdder fa2 (auxCarry[2], sum[2], in1[2], in2[2], auxCarry[1]);
fullAdder fa2 (cout, sum[3], in1[3], in2[3], auxCarry[2]);

endmodule
