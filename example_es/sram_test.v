module sram_test;

reg s_clk, s_rst_n, s_enable, s_writeenable, s_readenable;
wire s_rd_done, s_wr_done, s_cs_n, s_we_n, s_oe_n;
reg [14:0] s_addr_in; //addrwidth-1
wire [14:0] s_addr_out;
reg [7:0] s_data_in;
wire [7:0] s_data_out, s_data_sram;
sram #(8, 15) ram1( s_clk, s_rst_n, s_enable, s_addr_in, s_data_in,
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