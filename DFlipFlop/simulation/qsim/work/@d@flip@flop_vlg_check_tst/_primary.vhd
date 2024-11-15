library verilog;
use verilog.vl_types.all;
entity DFlipFlop_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        Qbar            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end DFlipFlop_vlg_check_tst;
