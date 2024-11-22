library verilog;
use verilog.vl_types.all;
entity Elevator_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        R               : in     vl_logic;
        down            : in     vl_logic;
        up              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Elevator_vlg_sample_tst;
