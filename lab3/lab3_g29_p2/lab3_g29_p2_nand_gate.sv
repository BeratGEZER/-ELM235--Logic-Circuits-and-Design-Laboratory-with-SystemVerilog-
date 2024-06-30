module lab3_g29_p2_nand_gate (
    input logic a,
    input logic b,
    output logic y
);

lab3_g29_p1 mux (
    .a(1), // NAND işlemi için A girişini ters çeviriyoruz
    .b(~(a & b)), // A ve B'nin NAND işlemi
    .sel(1), // Seçim sinyali sabit 1
    .y(y)
);

endmodule
