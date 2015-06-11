module fsm_light_sequence (clk, left, right, haz, La, Lb, Lc, Ra, Rb, Rc);

input clk, left, right, haz;

output La, Lb, Lc, Ra, Rb, Rc; /*lamps*/

reg La, Lb, Lc, Ra, Rb, Rc;
wire clk, left, right, haz;

// Definition of the States 
reg [2:0] state_n, state_p;

initial begin
state_n = 3'b000;
state_p = 3'b000;
end
 
parameter IDLE = 3'b000;
parameter L1   = 3'b001;
parameter L2   = 3'b010;
parameter L3   = 3'b011;
parameter R1   = 3'b100;
parameter R2   = 3'b101;
parameter R3   = 3'b110;
parameter LR3  = 3'b111;
 
// State Machine Defninition
always@(posedge clk)
begin
	case(state_n)
		IDLE:
			begin
				La <= 1'b0;
						Lb <= 1'b0;
						Lc <= 1'b0;
						Ra <= 1'b0;
						Rb <= 1'b0;
						Rc <= 1'b0;
				if(~((left || right )|| haz))
					begin
						state_p <= IDLE;
					end 
				else if(haz || (left && right))
					begin
						state_p <= LR3;
					end
				else if(left&&(~haz)&&(~right))
					begin
						state_p <= L1;
					end
				else if((~left)&&(~haz)&&(right))
					begin
						state_p <= R1;
					end
			end
		L1:
			begin
				if(~haz)
					begin 
						La <= 1'b1;
						Lb <= 1'b0;
						Lc <= 1'b0;
						Ra <= 1'b0;
						Rb <= 1'b0;
						Rc <= 1'b0;
						state_p <= L2;
					end
				else if (haz)
					begin
						state_p <= LR3;
					end			
			end
		L2:
			begin
				if(~haz)
					begin 
						La <= 1'b1;
						Lb <= 1'b1;
						Lc <= 1'b0;
						Ra <= 1'b0;
						Rb <= 1'b0;
						Rc <= 1'b0;
						state_p <= L3;
					end
				else if (haz)
					begin
						state_p <= LR3;
					end			
			end
		L3: 
			begin
				La <= 1'b1;
				Lb <= 1'b1;
				Lc <= 1'b1;
				Ra <= 1'b0;
				Rb <= 1'b0;
				Rc <= 1'b0;
				state_p <= IDLE;					
			end
		R1:
			begin
				if(~haz)
					begin 
						La <= 1'b0;
						Lb <= 1'b0;
						Lc <= 1'b0;
						Ra <= 1'b1;
						Rb <= 1'b0;
						Rc <= 1'b0;
						state_p <= R2;
					end
				else if (haz)
					begin
						state_p <= LR3;
					end			
			end
		R2:
			begin
				if(~haz)
					begin 
						La <= 1'b0;
						Lb <= 1'b0;
						Lc <= 1'b0;
						Ra <= 1'b1;
						Rb <= 1'b1;
						Rc <= 1'b0;
						state_p <= R3;
					end
				else if (haz)
					begin
						state_p <= LR3;
					end			
			end
		R3: 
			begin
				La <= 1'b0;
				Lb <= 1'b0;
				Lc <= 1'b0;
				Ra <= 1'b1;
				Rb <= 1'b1;
				Rc <= 1'b1;
				state_p <= IDLE;					
			end
		LR3:
			begin
						La <= 1'b1;
						Lb <= 1'b1;
						Lc <= 1'b1;
						Ra <= 1'b1;
						Rb <= 1'b1;
						Rc <= 1'b1;
				if(haz || (left && right))
					begin
						state_p <= LR3;
					end
				else
					begin
						state_p <= IDLE;
					end
			end
endcase
state_n <= state_p;
end
endmodule