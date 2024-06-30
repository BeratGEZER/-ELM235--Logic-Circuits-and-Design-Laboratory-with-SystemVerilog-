`timescale 1ns/1ps

module tb_flipflops;
    logic S;
    logic R;
    logic D;
    logic clk;
    logic pos_ff_out;
    logic neg_ff_out;
    logic latch_out;       // Latch çıkışı
    logic latch_outn;      // Latch komplemanı çıkışı

    // Main modül örneği
    main uut (
        .S_tb(S),
        .R_tb(R),
        .D_tb(D),
        .clk_tb(clk),
        .pos_ff_out_tb(pos_ff_out),
        .neg_ff_out_tb(neg_ff_out),
        .latch_out_tb(latch_out),    // Latch çıkışı
        .latch_outn_tb(latch_outn)   // Latch komplemanı çıkışı
    );

    // Saat sinyali üretimi
    always #5 clk = ~clk;

    // Test vektörleri
    initial begin
        // Başlangıç değerleri
        S = 0;
        R = 0;
        D = 0;
        clk = 0;

        // Test başlangıcı
        $display("Starting Testbench");

        // Test döngüsü
        repeat (8) begin
            #7 D = ~D;         // D sinyalini değiştir
            #3 S = ~S;         // S sinyalini değiştir
            #5 R = ~R;         // R sinyalini değiştir
            #7;
            $display("Time=%0t | S=%b, R=%b, D=%b, clk=%b | pos_ff_out=%b, neg_ff_out=%b, latch_out=%b, latch_outn=%b", $time, S, R, D, clk, pos_ff_out, neg_ff_out, latch_out, latch_outn);
        end

        // Test bitişi
        $display("Testbench Completed");
        $finish;
    end
endmodule
