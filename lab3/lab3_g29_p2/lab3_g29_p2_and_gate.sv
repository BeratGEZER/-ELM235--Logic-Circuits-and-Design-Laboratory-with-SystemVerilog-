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
