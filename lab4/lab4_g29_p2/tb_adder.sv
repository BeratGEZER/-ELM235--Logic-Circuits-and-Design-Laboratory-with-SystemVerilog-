`timescale 1ns/1ps

module tb_adder;

    // Half-Adder Test Sinyalleri
    logic ha_A;
    logic ha_B;
    logic ha_Sum;
    logic ha_Carry;

    // Half-Adder Örneği
    half_adder uut_ha (
        .A(ha_A),
        .B(ha_B),
        .Sum(ha_Sum),
        .Carry(ha_Carry)
    );

    // Full-Adder Test Sinyalleri
    logic fa_A;
    logic fa_B;
    logic fa_Cin;
    logic fa_Sum;
    logic fa_Cout;

    // Full-Adder Örneği
    full_adder uut_fa (
        .A(fa_A),
        .B(fa_B),
        .Cin(fa_Cin),
        .Sum(fa_Sum),
        .Cout(fa_Cout)
    );

    // 5-bit Ripple-Carry Adder Test Sinyalleri
    logic [4:0] rca_A;
    logic [4:0] rca_B;
    logic rca_Cin;
    logic [4:0] rca_Sum;
    logic rca_Cout;

    // 5-bit Ripple-Carry Adder Örneği
    ripple_carry_adder_5bit uut_rca (
        .A(rca_A),
        .B(rca_B),
        .Cin(rca_Cin),
        .Sum(rca_Sum),
        .Cout(rca_Cout)
    );

    initial begin
        // Half-Adder Test Vektörleri
        $display("Starting Half-Adder Tests");
        ha_A = 0; ha_B = 0; #10;
        $display("Half-Adder | A=%b, B=%b | Sum=%b, Carry=%b", ha_A, ha_B, ha_Sum, ha_Carry);

        ha_A = 0; ha_B = 1; #10;
        $display("Half-Adder | A=%b, B=%b | Sum=%b, Carry=%b", ha_A, ha_B, ha_Sum, ha_Carry);

        ha_A = 1; ha_B = 0; #10;
        $display("Half-Adder | A=%b, B=%b | Sum=%b, Carry=%b", ha_A, ha_B, ha_Sum, ha_Carry);

        ha_A = 1; ha_B = 1; #10;
        $display("Half-Adder | A=%b, B=%b | Sum=%b, Carry=%b", ha_A, ha_B, ha_Sum, ha_Carry);

        // Full-Adder Test Vektörleri
        $display("Starting Full-Adder Tests");
        fa_A = 0; fa_B = 0; fa_Cin = 0; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 0; fa_B = 1; fa_Cin = 0; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 1; fa_B = 0; fa_Cin = 0; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 1; fa_B = 1; fa_Cin = 0; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 0; fa_B = 0; fa_Cin = 1; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 0; fa_B = 1; fa_Cin = 1; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 1; fa_B = 0; fa_Cin = 1; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        fa_A = 1; fa_B = 1; fa_Cin = 1; #10;
        $display("Full-Adder | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", fa_A, fa_B, fa_Cin, fa_Sum, fa_Cout);

        // 5-bit Ripple-Carry Adder Test Vektörleri
        $display("Starting 5-bit Ripple-Carry Adder Tests");
        rca_A = 5'b00000; rca_B = 5'b00000; rca_Cin = 0; #10;
        $display("5-bit RCA | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", rca_A, rca_B, rca_Cin, rca_Sum, rca_Cout);

        rca_A = 5'b00001; rca_B = 5'b00001; rca_Cin = 0; #10;
        $display("5-bit RCA | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", rca_A, rca_B, rca_Cin, rca_Sum, rca_Cout);

        rca_A = 5'b11111; rca_B = 5'b11111; rca_Cin = 0; #10;
        $display("5-bit RCA | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", rca_A, rca_B, rca_Cin, rca_Sum, rca_Cout);

        rca_A = 5'b10101; rca_B = 5'b01010; rca_Cin = 0; #10;
        $display("5-bit RCA | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", rca_A, rca_B, rca_Cin, rca_Sum, rca_Cout);

        rca_A = 5'b10101; rca_B = 5'b01010; rca_Cin = 1; #10;
        $display("5-bit RCA | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b", rca_A, rca_B, rca_Cin, rca_Sum, rca_Cout);

        $display("Testbench Completed");
        $finish;
    end
endmodule








































