library verilog;
use verilog.vl_types.all;
entity DLatchWaveform is
    port(
        D               : in     vl_logic;
        E               : in     vl_logic;
        Q               : out    vl_logic;
        Qbar            : out    vl_logic
    );
end DLatchWaveform;
