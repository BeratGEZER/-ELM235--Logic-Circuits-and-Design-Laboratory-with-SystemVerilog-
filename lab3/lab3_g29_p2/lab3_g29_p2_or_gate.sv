module lab3_g29_p2_or_gate (
    input logic a,
    input logic b,
    output logic y
);

lab3_g29_p1 mux (
    .a(a), // A girişini MUX'a bağlar
    .b(a | b), // A ve B'nin OR işlemi
    .sel(1), // Seçim sinyali sabit 1
    .y(y)
);

endmodule
