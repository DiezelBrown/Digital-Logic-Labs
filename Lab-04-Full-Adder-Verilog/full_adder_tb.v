module full_adder_tb();

reg a, b, cin;
wire sum, cout;

full_adder U0(a, b, cin, sum, cout);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars;

    $display("Time\ta\tb\tcin\tsum\tcout");
    $monitor("%2d\t%d\t%d\t%d\t%d\t%d",
             $time, a, b, cin, sum, cout);

    a = 0; b = 0; cin = 0;
    #10 cin = 1;
    #10 b = 1; cin = 0;
    #10 cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 cin = 1;
    #10 b = 1; cin = 0;
    #10 cin = 1;

    #10 $finish;
end

endmodule