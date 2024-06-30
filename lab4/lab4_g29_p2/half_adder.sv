module half_adder (
    input logic A,     // Birinci giriş
    input logic B,     // İkinci giriş
    output logic Sum,  // Toplam çıkışı
    output logic Carry // Taşıma çıkışı
);
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule
