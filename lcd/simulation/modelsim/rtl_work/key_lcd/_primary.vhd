library verilog;
use verilog.vl_types.all;
entity key_lcd is
    generic(
        S0              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S4              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        S5              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        D0              : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        D1              : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        D2              : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        lcd             : out    vl_logic_vector(7 downto 0);
        led             : out    vl_logic_vector(4 downto 0);
        col             : out    vl_logic_vector(3 downto 0);
        lcd_rs          : out    vl_logic;
        lcd_rw          : out    vl_logic;
        lcd_en          : out    vl_logic;
        row             : in     vl_logic_vector(3 downto 0);
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
    attribute mti_svvh_generic_type of D0 : constant is 1;
    attribute mti_svvh_generic_type of D1 : constant is 1;
    attribute mti_svvh_generic_type of D2 : constant is 1;
end key_lcd;
