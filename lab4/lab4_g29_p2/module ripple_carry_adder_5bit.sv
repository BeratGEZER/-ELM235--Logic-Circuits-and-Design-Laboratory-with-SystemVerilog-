module ripple_carry_adder_5bit (
    input logic [4:0] A,     // 5-bitlik birinci giriş
    input logic [4:0] B,     // 5-bitlik ikinci giriş
    input logic Cin,         // Taşıma girişi
    output logic [4:0] Sum,  // 5-bitlik toplam çıkışı
    output logic Cout        // Taşıma çıkışı
);
    logic [3:0] carry; // Ara taşıma sinyalleri

    // Birinci Full-Adder
    full_adder FA0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Cout(carry[0])
    );

    // İkinci Full-Adder
    full_adder FA1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(carry[0]),
        .Sum(Sum[1]),
        .Cout(carry[1])
    );

    // Üçüncü Full-Adder
    full_adder FA2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(carry[1]),
        .Sum(Sum[2]),
        .Cout(carry[2])
    );

    // Dördüncü Full-Adder
    full_adder FA3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(carry[2]),
        .Sum(Sum[3]),
        .Cout(carry[3])
    );

    // Beşinci Full-Adder
    full_adder FA4 (
        .A(A[4]),
        .B(B[4]),
        .Cin(carry[3]),
        .Sum(Sum[4]),
        .Cout(Cout)
    );
endmodule














































