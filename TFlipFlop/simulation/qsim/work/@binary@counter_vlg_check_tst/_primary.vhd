library verilog;
use verilog.vl_types.all;
entity BinaryCounter_vlg_check_tst is
    port(
        counter         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end BinaryCounter_vlg_check_tst;
