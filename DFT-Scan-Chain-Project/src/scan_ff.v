module scan_ff (
    input clk,
    input scan_in,
    input d,
    input scan_en,
    output reg q,
    output scan_out
);

always @(posedge clk) begin
    if (scan_en)
        q <= scan_in;   // shift mode
    else
        q <= d;         // normal mode
end

assign scan_out = q;

endmodule
