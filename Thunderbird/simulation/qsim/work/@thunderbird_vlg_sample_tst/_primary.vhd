library verilog;
use verilog.vl_types.all;
entity Thunderbird_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        L               : in     vl_logic;
        R               : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Thunderbird_vlg_sample_tst;
