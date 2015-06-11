module adder_8bit (input [7:0] IN1,IN2,input CIN, output [7:0] SUM, output CY,AC);
  
  wire c0,c1,c2,c4,c5,c6;
  
  full_adder inst1(.x(IN1[0]),.y(IN2[0]),.sum_out(SUM[0]),.carry_in(0),.carry_out(c0));
  
  full_adder inst2(.x(IN1[1]),.y(IN2[1]),.sum_out(SUM[1]),.carry_in(c0),.carry_out(c1));  
  
  full_adder inst3(.x(IN1[2]),.y(IN2[2]),.sum_out(SUM[2]),.carry_in(c1),.carry_out(c2));
  
  full_adder inst4(.x(IN1[3]),.y(IN2[3]),.sum_out(SUM[3]),.carry_in(c2),.carry_out(AC));
  
  full_adder inst5(.x(IN1[4]),.y(IN2[4]),.sum_out(SUM[4]),.carry_in(AC),.carry_out(c4));
  
  full_adder inst6(.x(IN1[5]),.y(IN2[5]),.sum_out(SUM[5]),.carry_in(c4),.carry_out(c5));

  full_adder inst7(.x(IN1[6]),.y(IN2[6]),.sum_out(SUM[6]),.carry_in(c5),.carry_out(c6));
      
  full_adder inst8(.x(IN1[7]),.y(IN2[7]),.sum_out(SUM[7]),.carry_in(c6),.carry_out(CY));
        
endmodule