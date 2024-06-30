module lab4_g29_p1_latch (
    input logic S,   // Set girişi
    input logic R,   // Reset girişi
    output logic Q,  // Çıkış
    output logic Qn  // Q'nun komplemanı
);

    logic Q_int, Qn_int;

    assign Q = Q_int;
    assign Qn = Qn_int;

    always_comb begin
        Q_int = ~(S | Qn_int); // NOR(S, Q')
        Qn_int = ~(R | Q_int); // NOR(R, Q)
    end

endmodule
