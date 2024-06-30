`timescale 1ns/1ps

module tb_alu;

    logic [31:0] A;
    logic [31:0] B;
    logic [3:0] OPCODE;
    logic [31:0] Result;
    logic N, Z, V, C, Error;

    alu uut (
        .A(A),
        .B(B),
        .OPCODE(OPCODE),
        .Result(Result),
        .N(N),
        .Z(Z),
        .V(V),
        .C(C),
        .Error(Error)
    );

    initial begin
        // Test başlangıcı
        $display("Starting ALU Tests");

        // Test 1: A + B
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0000; #10;
        $display("Test 1 - Addition: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 2: A - B
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b1000; #10;
        $display("Test 2 - Subtraction: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 3: A << B
        A = 32'h00000005; B = 32'h00000001; OPCODE = 4'b0001; #10;
        $display("Test 3 - Shift Left Logical: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 4: A > B (signed compare)
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0010; #10;
        $display("Test 4 - Signed Compare: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 5: A > B (unsigned compare)
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0011; #10;
        $display("Test 5 - Unsigned Compare: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 6: A ^ B
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0100; #10;
        $display("Test 6 - XOR: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 7: A >> B (logical)
        A = 32'h00000005; B = 32'h00000001; OPCODE = 4'b0101; #10;
        $display("Test 7 - Shift Right Logical: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 8: A >> B (arithmetic)
        A = 32'h80000005; B = 32'h00000001; OPCODE = 4'b1101; #10;
        $display("Test 8 - Shift Right Arithmetic: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 9: A | B
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0110; #10;
        $display("Test 9 - OR: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 10: A & B
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b0111; #10;
        $display("Test 10 - AND: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 11: Hatalı OPCODE
        A = 32'h00000005; B = 32'h00000003; OPCODE = 4'b1111; #10;
        $display("Test 11 - Invalid OPCODE: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Ekstra testler
        // Test 12: Büyük sayılarla toplama
        A = 32'hFFFFFFFF; B = 32'h00000001; OPCODE = 4'b0000; #10;
        $display("Test 12 - Large Numbers Addition: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 13: Taşma kontrolü (A + B)
        A = 32'h7FFFFFFF; B = 32'h00000001; OPCODE = 4'b0000; #10;
        $display("Test 13 - Overflow Check Addition: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 14: Taşma kontrolü (A - B)
        A = 32'h80000000; B = 32'h00000001; OPCODE = 4'b1000; #10;
        $display("Test 14 - Overflow Check Subtraction: Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        // Test 15: İşaretli karşılaştırma (negatif sayı)
        A = 32'hFFFFFFFF; B = 32'h00000001; OPCODE = 4'b0010; #10;
        $display("Test 15 - Signed Compare (Negative): Time: %0t | A: %h, B: %h, OPCODE: %b | Result: %h, N: %b, Z: %b, V: %b, C: %b, Error: %b", $time, A, B, OPCODE, Result, N, Z, V, C, Error);

        $display("Testbench Completed");
        $finish;
    end

endmodule
