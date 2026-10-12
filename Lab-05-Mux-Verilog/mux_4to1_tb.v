`timescale 1ns/1ps

module mux_4to1_tb;
    reg [3:0] d;
    reg [1:0] s;
    wire y;
    integer i, j, errors;

    mux_4to1 DUT (.d(d), .s(s), .y(y));

    initial begin
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);
        errors = 0;
        d = 0;
        s = 0;

        $display("Time(ns)\tData\tSelect\tOutput\tExpected");

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                d = i;
                s = j;
                #10;
                $display("%0d\t\t%b\t%b\t%b\t%b",
                         $time, d, s, y, d[s]);
                if (y !== d[s])
                    errors = errors + 1;
            end
        end

        if (errors == 0)
            $display("PASS: All 64 combinations passed.");
        else
            $display("FAIL: %0d errors.", errors);

        $finish;
    end
endmodule
