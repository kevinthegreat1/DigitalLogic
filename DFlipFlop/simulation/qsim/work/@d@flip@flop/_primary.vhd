library verilog;
use verilog.vl_types.all;
entity DFlipFlop is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end DFlipFlop;
