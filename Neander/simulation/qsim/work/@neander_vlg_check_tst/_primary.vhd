library verilog;
use verilog.vl_types.all;
entity Neander_vlg_check_tst is
    port(
        acumuladorOut   : in     vl_logic_vector(7 downto 0);
        estadoAtual     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Neander_vlg_check_tst;
