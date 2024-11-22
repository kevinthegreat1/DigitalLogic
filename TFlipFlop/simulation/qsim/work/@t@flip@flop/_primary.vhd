library verilog;
use verilog.vl_types.all;
entity TFlipFlop is
    port(
        T               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end TFlipFlop;
