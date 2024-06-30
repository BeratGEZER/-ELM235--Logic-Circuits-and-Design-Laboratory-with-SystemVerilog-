module lab3_g29_p2_mux_16x1 (
    input logic [3:0] in0, // İlk 4-bit giriş
    input logic [3:0] in1, // İkinci 4-bit giriş
    input logic [3:0] in2, // Üçüncü 4-bit giriş
    input logic [3:0] in3, // Dördüncü 4-bit giriş
    input logic [3:0] in4, // Beşinci 4-bit giriş
    input logic [3:0] in5, // Altıncı 4-bit giriş
    input logic [3:0] in6, // Yedinci 4-bit giriş
    input logic [3:0] in7, // Sekizinci 4-bit giriş
    input logic [3:0] in8, // Dokuzuncu 4-bit giriş
    input logic [3:0] in9, // Onuncu 4-bit giriş
    input logic [3:0] in10, // Onbirinci 4-bit giriş
    input logic [3:0] in11, // Onikinci 4-bit giriş
    input logic [3:0] in12, // Onüçüncü 4-bit giriş
    input logic [3:0] in13, // Ondördüncü 4-bit giriş
    input logic [3:0] in14, // Onbeşinci 4-bit giriş
    input logic [3:0] in15, // Onaltıncı 4-bit giriş
    input logic [3:0] sel, // 4-bit seçici
    output logic [3:0] y // 4-bit çıkış
);

    logic [3:0] mux1_out, mux2_out;

    // İlk 8x1 MUX: in0 - in7 girişlerini işler
    lab3_g29_p2_mux_8x1 mux1 (
        .in0(in1),
        .in1(in2),
        .in2(in3),
        .in3(in4),
        .in4(in5),
        .in5(in6),
        .in6(in7),
        .in7(in0),
        .sel(sel[2:0]),
        .y(mux1_out)
    );

    // İkinci 8x1 MUX: in8 - in15 girişlerini işler
    lab3_g29_p2_mux_8x1 mux2 (
        .in0(in8),
        .in1(in9),
        .in2(in10),
        .in3(in11),
        .in4(in12),
        .in5(in13),
        .in6(in14),
        .in7(in15),
        .sel(sel[2:0]),
        .y(mux2_out)
    );

    // Üçüncü 2x1 MUX: ilk iki MUX'un çıktıları arasında seçim yapar
    lab3_g29_p1 mux3 (
        .a(mux1_out),
        .b(mux2_out),
        .sel(sel[3]),
        .y(y)
    );

endmodule
