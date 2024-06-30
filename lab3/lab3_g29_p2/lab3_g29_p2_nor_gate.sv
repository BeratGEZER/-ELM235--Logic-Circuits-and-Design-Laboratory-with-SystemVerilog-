module lab3_g29_p2_nor_gate (
    input logic a,
    input logic b,
    output logic y
);

lab3_g29_p1 mux (
    .a(1), // NOR işlemi için A girişini ters çeviriyoruz
    .b(~(a | b)), // A ve B'nin NOR işlemi
    .sel(1), // Seçim sinyali sabit 1
    .y(y)
);

endmodule


