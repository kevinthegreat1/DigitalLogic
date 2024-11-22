library verilog;
use verilog.vl_types.all;
entity TFlipFlop_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TFlipFlop_vlg_sample_tst;
