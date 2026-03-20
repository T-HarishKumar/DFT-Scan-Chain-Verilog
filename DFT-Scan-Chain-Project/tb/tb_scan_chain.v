module tb;

reg clk, scan_en, scan_in, d;
wire scan_out, q1, q2;

scan_chain_design uut (
    .clk(clk),
    .scan_en(scan_en),
    .scan_in(scan_in),
    .d(d),
    .scan_out(scan_out),
    .q1(q1),
    .q2(q2)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;

    // Scan shift
    scan_en = 1;
    scan_in = 1; #10;
    scan_in = 0; #10;

    // Functional capture
    scan_en = 0;
    d = 1; #10;

    $display("q1=%b q2=%b scan_out=%b", q1, q2, scan_out);

    #20;
    $finish;
end

endmodule
