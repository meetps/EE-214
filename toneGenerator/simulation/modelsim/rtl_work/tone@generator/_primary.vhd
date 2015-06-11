library verilog;
use verilog.vl_types.all;
entity toneGenerator is
    port(
        clk             : in     vl_logic;
        octaveSel       : in     vl_logic;
        keyIn           : in     vl_logic_vector(6 downto 0);
        toneOut         : out    vl_logic
    );
end toneGenerator;
