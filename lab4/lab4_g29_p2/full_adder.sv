module full_adder (
    input logic A,      // Birinci giriş
    input logic B,      // İkinci giriş
    input logic Cin,    // Taşıma girişi
    output logic Sum,   // Toplam çıkışı
    output logic Cout   // Taşıma çıkışı
);
    logic sum1, carry1, carry2;

    // İlk Half-Adder
    half_adder HA1 (
        .A(A),
        .B(B),
        .Sum(sum1),
        .Carry(carry1)
    );

    // İkinci Half-Adder
    half_adder HA2 (
        .A(sum1),
        .B(Cin),
        .Sum(Sum),
        .Carry(carry2)
    );

    // Taşıma çıkışı
    assign Cout = carry1 | carry2;
endmodule
