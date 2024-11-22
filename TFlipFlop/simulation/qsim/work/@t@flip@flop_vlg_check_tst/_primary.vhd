library verilog;
use verilog.vl_types.all;
entity TFlipFlop_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        Qbar            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TFlipFlop_vlg_check_tst;
