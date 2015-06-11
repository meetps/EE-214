library verilog;
use verilog.vl_types.all;
entity vending_machine is
    generic(
        state_idle      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        state_idle2     : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        state_selectQuantity: vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        state_payment   : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        state_transactionStatus: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        state_endMessage: vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        state_refill    : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        pepsiPrice      : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0);
        cokePrice       : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        laysPrice       : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        pepsi           : in     vl_logic;
        lays            : in     vl_logic;
        coke            : in     vl_logic;
        quantity1       : in     vl_logic;
        quantity2       : in     vl_logic;
        quantity3       : in     vl_logic;
        oqLED1          : out    vl_logic;
        oqLED2          : out    vl_logic;
        oqLED3          : out    vl_logic;
        start_1         : out    vl_logic;
        done_1          : out    vl_logic;
        refill          : in     vl_logic;
        tenRs           : in     vl_logic;
        fiveRs          : in     vl_logic;
        twoRs           : in     vl_logic;
        oneRs           : in     vl_logic;
        changeAmount    : out    vl_logic_vector(7 downto 0);
        lcd             : out    vl_logic_vector(7 downto 0);
        lcd_rs          : out    vl_logic;
        lcd_rw          : out    vl_logic;
        lcd_en          : out    vl_logic;
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state_idle : constant is 1;
    attribute mti_svvh_generic_type of state_idle2 : constant is 1;
    attribute mti_svvh_generic_type of state_selectQuantity : constant is 1;
    attribute mti_svvh_generic_type of state_payment : constant is 1;
    attribute mti_svvh_generic_type of state_transactionStatus : constant is 1;
    attribute mti_svvh_generic_type of state_endMessage : constant is 1;
    attribute mti_svvh_generic_type of state_refill : constant is 1;
    attribute mti_svvh_generic_type of pepsiPrice : constant is 1;
    attribute mti_svvh_generic_type of cokePrice : constant is 1;
    attribute mti_svvh_generic_type of laysPrice : constant is 1;
end vending_machine;
