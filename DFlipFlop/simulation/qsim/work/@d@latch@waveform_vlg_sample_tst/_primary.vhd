library verilog;
use verilog.vl_types.all;
entity DLatchWaveform_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DLatchWaveform_vlg_sample_tst;
