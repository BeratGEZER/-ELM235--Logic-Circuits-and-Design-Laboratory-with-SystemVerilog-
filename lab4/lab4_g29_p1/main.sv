module main (
    input logic S_tb,
    input logic R_tb,
    input logic D_tb,
    input logic clk_tb,
    output logic pos_ff_out_tb,
    output logic neg_ff_out_tb,
    output logic latch_out_tb,     // Latch çıkışı
    output logic latch_outn_tb     // Latch komplemanı çıkışı
);

    // Yükselen kenar tetiklemeli D-FlipFlop örneği
    lab4_g29_p1_pos_edge pos_ff (
        .D(D_tb),
        .clk(clk_tb),
        .Q(pos_ff_out_tb)
    );

    // Düşen kenar tetiklemeli D-FlipFlop örneği
    lab4_g29_p1_neg_edge neg_ff (
        .D(D_tb),
        .clk(clk_tb),
        .Q(neg_ff_out_tb)
    );

    // SR Latch örneği
    lab4_g29_p1_latch latch (
        .S(S_tb),
        .R(R_tb),
        .Q(latch_out_tb),
        .Qn(latch_outn_tb)
    );

endmodule
