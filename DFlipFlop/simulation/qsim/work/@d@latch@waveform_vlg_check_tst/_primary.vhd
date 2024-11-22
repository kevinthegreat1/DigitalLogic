library verilog;
use verilog.vl_types.all;
entity DLatchWaveform_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        Qbar            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end DLatchWaveform_vlg_check_tst;
