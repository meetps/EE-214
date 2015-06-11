module sram_test (clk,rst_n,enable,addr_in,data_in,
data_out,writeenable,readenable,rd_done,wr_done,
sram_addr_out,sram_data,sram_cs_n,sram_we_n,sram_oe_n);

parameter datawidth = 8;
parameter addrwidth = 15;

//Ports to communicate with SRAM controller where it is instantiated
input wire clk;

//50 Mhz clock = 20 ns Time Period
input wire rst_n; //Active Low Reset
input wire enable; //Active high Enable
input wire [addrwidth-1:0] addr_in; //Address lines
input wire [datawidth-1:0] data_in; //Data in lines
output reg[datawidth-1:0] data_out; //Data out lines
input wire writeenable; //Active High signal for data write
input wire readenable; //Active High signal for data read
output reg rd_done; //Active High signal output indicator for read done
output reg wr_done; //Active High signal output indicator for write done
//Ports to the SRAM chip(62256A) outside.
output reg [addrwidth-1:0] sram_addr_out; //out (addrwidth-1 downto 0);
inout wire [datawidth-1:0] sram_data;
//inout (datawidth-1 downto
// NOTE: Stress the fact that data has to be inout port for the
//controller -> How do you declare and access an inout port?
//NOTE: sram_data ( from sram_controller point of view) should be
//forced to some value while writing to the chip, whereas it should be
//held in high impedance while reading from the chip.
output reg sram_cs_n; //Active low chip select signal
output reg sram_we_n; //Active low write enable signal
output reg sram_oe_n; //Active low output enable signal
// FSM for SRAM Controller:
// Define states. Remember –> 6 write and 6 read states for write and read operation at 50MHz clk of operation.
parameter S0 = 2'b00; //IDLE
parameter S1 = 2'b01; //REAd
parameter S2 = 2'b10; //WRITE

//Temparary sram data holder
reg [datawidth-1:0] temp_sram_data;

//State Variable
reg [1:0] present_state; 

//Counters for Read and Write State
reg [2:0] read_count;
reg [2:0] write_count;

initial 
	begin
	present_state = 2'b00;
	read_count = 3'b000;
	write_count = 3'b000;
	end

always@(posedge clk)
begin
	if(~rst_n)
		begin
			present_state <= S0;
		end
	else
		begin
			case(present_state) 
			S0:
				begin
					write_count <= 3'b000;
					read_count <= 3'b000;
					rd_done <= 1'b0;
					wr_done <= 1'b0;
					if(readenable && enable)
						begin
							present_state <= S1;
							read_count <= 3'b000;
						end
					else if(writeenable && enable)
						begin
							present_state <= S2;
							write_count <= 3'b000;
						end
					else 
						begin
							present_state <= S0;
						end
				end
			S1:
				begin
					if(read_count < 3'b011)
						begin
							sram_cs_n <= 0;
							sram_we_n <= 1;
							sram_oe_n <= 0;
							sram_addr_out <= addr_in;
							data_out <= sram_data;
							read_count <= read_count + 1'b1;
						end
					else
						begin
							rd_done <= 1'b1;
							present_state <= S0;
						end
				end
			S2:
				begin
					if(write_count < 3'b011)
						begin
							sram_cs_n <= 0;
							sram_we_n <= 0;
							sram_oe_n <= 1;
							sram_addr_out <= addr_in;
							temp_sram_data <= data_in;
							write_count <= write_count + 1'b1;
						end
					else
						begin
							wr_done <= 1'b1;
							present_state <= S0;
						end
				end
		endcase
	end
end
assign sram_data = temp_sram_data;
endmodule



module sram;

reg s_clk, s_rst_n, s_enable, s_writeenable, s_readenable;
wire s_rd_done, s_wr_done, s_cs_n, s_we_n, s_oe_n;
reg [14:0] s_addr_in; //addrwidth-1
wire [14:0] s_addr_out;
reg [7:0] s_data_in;
wire [7:0] s_data_out, s_data_sram;
sram_test #(8, 15) ram1( s_clk, s_rst_n, s_enable, s_addr_in, s_data_in,
s_data_out, s_writeenable, s_readenable, s_rd_done,
s_wr_done, s_addr_out, s_data_sram, s_cs_n, s_we_n, s_oe_n );

initial 
begin
s_clk = 1;
//end
//always @(*) // forcing signals//begin
s_rst_n <= 0;
s_addr_in <= 0;
s_data_in <= 0;
s_enable<= 0;
s_writeenable <= 0;
s_readenable<= 0;
//writing AA to address A
#200
s_rst_n<= 1;
s_enable<= 0;
s_addr_in <= 'hA;
s_data_in <= 'hAA;
s_writeenable <= 0;
s_readenable<= 0;
#200
s_rst_n<= 1;
s_addr_in <= 'hA;
s_data_in <= 'hAA;
s_enable<= 1;
s_writeenable <= 1;
s_readenable<= 0;
wait (s_wr_done)//(s_wr_done ==1)
//#100
s_rst_n<= 1;
s_addr_in<= 'hA;
s_writeenable <= 0;
s_readenable<= 1;
wait (s_rd_done)
//#100
s_rst_n<= 0;
s_addr_in<= 'hA;
s_writeenable <= 0;
s_readenable<= 0;
end
always //clock definition
begin
#50 s_clk = ~s_clk; //100ps time period
end
endmodule