module lab3_g29_p2_and_gate (
    input logic a,
    input logic b,
    output logic y
);

lab3_g29_p1 mux (
    .a(1), // MUX'un diğer girişi için 0 veriyoruz
    .b(a & b), // A ve B girişlerinin AND işlemi
    .sel(1), // Seçim sinyalini sabit 1 yapıyoruz
    .y(y)
);

endmodule

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


















































