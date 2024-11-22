library verilog;
use verilog.vl_types.all;
entity BinaryCounter is
    port(
        T               : in     vl_logic;
        CLK             : in     vl_logic;
        counter         : out    vl_logic_vector(7 downto 0)
    );
end BinaryCounter;
