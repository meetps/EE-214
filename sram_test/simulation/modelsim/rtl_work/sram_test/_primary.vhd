library verilog;
use verilog.vl_types.all;
entity sram_test is
    generic(
        datawidth       : integer := 8;
        addrwidth       : integer := 15;
        S0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        S1              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        S2              : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        enable          : in     vl_logic;
        addr_in         : in     vl_logic_vector;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector;
        writeenable     : in     vl_logic;
        readenable      : in     vl_logic;
        rd_done         : out    vl_logic;
        wr_done         : out    vl_logic;
        sram_addr_out   : out    vl_logic_vector;
        sram_data       : inout  vl_logic_vector;
        sram_cs_n       : out    vl_logic;
        sram_we_n       : out    vl_logic;
        sram_oe_n       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of datawidth : constant is 1;
    attribute mti_svvh_generic_type of addrwidth : constant is 1;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
end sram_test;
