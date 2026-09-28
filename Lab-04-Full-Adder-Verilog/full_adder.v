module full_adder(a, b, cin, sum, cout);

input a, b, cin;
output sum, cout;

wire x, n1, n2;

xor(x, a, b);
xor(sum, x, cin);

nand(n1, a, b);
nand(n2, x, cin);
nand(cout, n1, n2);

endmodule