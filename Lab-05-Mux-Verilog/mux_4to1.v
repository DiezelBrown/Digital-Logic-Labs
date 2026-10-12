module mux_4to1 (
    input wire [3:0] d,
    input wire [1:0] s,
    output wire y
);
    wire lower_out, upper_out;

    mux_2to1 M0 (.d0(d[0]), .d1(d[1]), .s(s[0]), .y(lower_out));
    mux_2to1 M1 (.d0(d[2]), .d1(d[3]), .s(s[0]), .y(upper_out));
    mux_2to1 M2 (.d0(lower_out), .d1(upper_out), .s(s[1]), .y(y));
endmodule
