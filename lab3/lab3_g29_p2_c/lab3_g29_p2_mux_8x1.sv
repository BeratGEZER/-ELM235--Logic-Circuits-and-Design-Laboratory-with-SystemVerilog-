module lab3_g29_p2_mux_8x1 (
    input logic [3:0] in0, // İlk 4-bit giriş
    input logic [3:0] in1, // İkinci 4-bit giriş
    input logic [3:0] in2, // Üçüncü 4-bit giriş
    input logic [3:0] in3, // Dördüncü 4-bit giriş
    input logic [3:0] in4, // Beşinci 4-bit giriş
    input logic [3:0] in5, // Altıncı 4-bit giriş
    input logic [3:0] in6, // Yedinci 4-bit giriş
    input logic [3:0] in7, // Sekizinci 4-bit giriş
    input logic [2:0] sel, // 3-bit seçici
    output logic [2:0] y // 3-bit çıkış
);

    logic [3:0] mux1_out, mux2_out;

    // İlk 4x1 MUX: in0, in1, in2 ve in3 girişlerini işler
    lab3_g29_p2 mux1 (
        .a(in7),
        .b(in1),
        .c(in0),
        .d(in2),
        .sel(sel[1:0]),
        .y(mux1_out)
    );

    // İkinci 4x1 MUX: in4, in5, in6 ve in7 girişlerini işler
    lab3_g29_p2 mux2 (
        .a(in3),
        .b(in6),
        .c(in4),
        .d(in5),
        .sel(sel[1:0]),
        .y(mux2_out)
    );

    // Üçüncü 2x1 MUX: ilk iki MUX'un çıktıları arasında seçim yapar
    lab3_g29_p1 mux3 (
        .a(mux1_out),
        .b(mux2_out),
        .sel(sel[2]),
        .y(y)
    );

endmodule
