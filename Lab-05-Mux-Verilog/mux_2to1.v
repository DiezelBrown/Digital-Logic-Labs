module mux_2to1 (
    input wire d0, d1, s,
    output wire y
);
    assign y = (~s & d0) | (s & d1);
endmodule
