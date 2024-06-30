module lab3_g29_p2_c (
    input logic [1:0] sel,
    input logic a, b, c, d,
    output logic y
);

logic y0, y1;

// Alt 2x1 MUX modülleri
lab3_g29_p1 mux0 (
    .a(a),
    .b(b),
    .sel(sel[0]),
    .y(y0)
);

lab3_g29_p1 mux1 (
    .a(c),
    .b(d),
    .sel(sel[0]),
    .y(y1)
);

// Üst 2x1 MUX modülü
lab3_g29_p1 mux2 (
    .a(y0),
    .b(y1),
    .sel(sel[1]),
    .y(y)
);

endmodule
