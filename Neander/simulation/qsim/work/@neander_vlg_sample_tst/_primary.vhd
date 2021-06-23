library verilog;
use verilog.vl_types.all;
entity Neander_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Neander_vlg_sample_tst;
