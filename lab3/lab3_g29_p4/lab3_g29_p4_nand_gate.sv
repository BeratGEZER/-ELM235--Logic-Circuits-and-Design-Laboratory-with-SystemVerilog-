module lab3_g29_p4_nand_gate2(
    input logic A0, A1, A2, A3,
    output logic a0, a1, a2, a3,
    output logic b0, b1, b2, b3,
    output logic c0, c1, c2, c3,
    output logic d0, d1, d2, d3
);

    logic q0, q1, q2, q3;

    // A0 ve A1 girişlerine göre q0 - q3 değerleri
    assign q0 = ~A0 & ~A1; // 00
    assign q1 = ~A0 & A1;  // 01
    assign q2 = A0 & ~A1;  // 10
    assign q3 = A0 & A1;   // 11

    // q0 - q3'ten gelen verilere göre diğer çıkışlar
    assign a0 = ~(q0 & ~A2 & ~A3); // 0000
    assign a1 = ~(q0 & ~A2 & A3);  // 0001
    assign a2 = ~(q0 & A2 & ~A3);  // 0010
    assign a3 = ~(q0 & A2 & A3);   // 0011

    assign b0 = ~(q1 & ~A2 & ~A3); // 0100
    assign b1 = ~(q1 & ~A2 & A3);  // 0101
    assign b2 = ~(q1 & A2 & ~A3);  // 0110
    assign b3 = ~(q1 & A2 & A3);   // 0111

    assign c0 = ~(q2 & ~A2 & ~A3); // 1000
    assign c1 = ~(q2 & ~A2 & A3);  // 1001
    assign c2 = ~(q2 & A2 & ~A3);  // 1010
    assign c3 = ~(q2 & A2 & A3);   // 1011

    assign d0 = ~(q3 & ~A2 & ~A3); // 1100
    assign d1 = ~(q3 & ~A2 & A3);  // 1101
    assign d2 = ~(q3 & A2 & ~A3);  // 1110
    assign d3 = ~(q3 & A2 & A3);   // 1111

endmodule
