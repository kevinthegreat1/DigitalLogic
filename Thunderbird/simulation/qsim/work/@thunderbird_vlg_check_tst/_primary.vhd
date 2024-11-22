library verilog;
use verilog.vl_types.all;
entity Thunderbird_vlg_check_tst is
    port(
        Lout            : in     vl_logic_vector(2 downto 0);
        Rout            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Thunderbird_vlg_check_tst;
