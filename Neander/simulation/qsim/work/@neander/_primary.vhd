library verilog;
use verilog.vl_types.all;
entity Neander is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        acumuladorOut   : out    vl_logic_vector(7 downto 0);
        estadoAtual     : out    vl_logic_vector(3 downto 0)
    );
end Neander;
