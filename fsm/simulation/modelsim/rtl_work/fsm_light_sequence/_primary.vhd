library verilog;
use verilog.vl_types.all;
entity fsm_light_sequence is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        L1              : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        L2              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        L3              : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        R1              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        R2              : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        R3              : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        LR3             : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        left            : in     vl_logic;
        right           : in     vl_logic;
        haz             : in     vl_logic;
        La              : out    vl_logic;
        Lb              : out    vl_logic;
        Lc              : out    vl_logic;
        Ra              : out    vl_logic;
        Rb              : out    vl_logic;
        Rc              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of L1 : constant is 1;
    attribute mti_svvh_generic_type of L2 : constant is 1;
    attribute mti_svvh_generic_type of L3 : constant is 1;
    attribute mti_svvh_generic_type of R1 : constant is 1;
    attribute mti_svvh_generic_type of R2 : constant is 1;
    attribute mti_svvh_generic_type of R3 : constant is 1;
    attribute mti_svvh_generic_type of LR3 : constant is 1;
end fsm_light_sequence;
