library verilog;
use verilog.vl_types.all;
entity Elevator_vlg_check_tst is
    port(
        lights          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Elevator_vlg_check_tst;
