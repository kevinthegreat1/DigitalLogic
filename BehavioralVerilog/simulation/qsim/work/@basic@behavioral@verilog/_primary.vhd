library verilog;
use verilog.vl_types.all;
entity BasicBehavioralVerilog is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        Qa              : out    vl_logic;
        Qb              : out    vl_logic;
        Qc              : out    vl_logic
    );
end BasicBehavioralVerilog;
