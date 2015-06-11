library verilog;
use verilog.vl_types.all;
entity lcd is
    generic(
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        d0              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        d1              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        d2              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        d3              : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        d4              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        d5              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        d6              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        d7              : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1)
    );
    port(
        start           : in     vl_logic;
        done            : out    vl_logic;
        qty             : in     vl_logic_vector(2 downto 0);
        item            : in     vl_logic_vector(1 downto 0);
        price           : in     vl_logic_vector(7 downto 0);
        msg_index       : in     vl_logic_vector(3 downto 0);
        lcd             : out    vl_logic_vector(7 downto 0);
        lcd_rs          : out    vl_logic;
        lcd_rw          : out    vl_logic;
        lcd_en          : out    vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of d0 : constant is 1;
    attribute mti_svvh_generic_type of d1 : constant is 1;
    attribute mti_svvh_generic_type of d2 : constant is 1;
    attribute mti_svvh_generic_type of d3 : constant is 1;
    attribute mti_svvh_generic_type of d4 : constant is 1;
    attribute mti_svvh_generic_type of d5 : constant is 1;
    attribute mti_svvh_generic_type of d6 : constant is 1;
    attribute mti_svvh_generic_type of d7 : constant is 1;
end lcd;
