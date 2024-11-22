library verilog;
use verilog.vl_types.all;
entity Elevator is
    port(
        up              : in     vl_logic;
        down            : in     vl_logic;
        CLK             : in     vl_logic;
        R               : in     vl_logic;
        lights          : out    vl_logic_vector(3 downto 0)
    );
end Elevator;
