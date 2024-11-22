library verilog;
use verilog.vl_types.all;
entity Thunderbird is
    port(
        L               : in     vl_logic;
        R               : in     vl_logic;
        Reset           : in     vl_logic;
        CLK             : in     vl_logic;
        Lout            : out    vl_logic_vector(2 downto 0);
        Rout            : out    vl_logic_vector(2 downto 0)
    );
end Thunderbird;
