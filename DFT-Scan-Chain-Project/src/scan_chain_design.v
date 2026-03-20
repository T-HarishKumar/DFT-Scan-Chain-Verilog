module scan_chain_design (
    input clk,
    input scan_en,
    input scan_in,
    input d,
    output scan_out,
    output q1, q2
);

wire so1;

// First scan FF
scan_ff ff1 (
    .clk(clk),
    .scan_in(scan_in),
    .d(d),
    .scan_en(scan_en),
    .q(q1),
    .scan_out(so1)
);

// Second scan FF
scan_ff ff2 (
    .clk(clk),
    .scan_in(so1),
    .d(q1 ^ d),
    .scan_en(scan_en),
    .q(q2),
    .scan_out(scan_out)
);

endmodule
