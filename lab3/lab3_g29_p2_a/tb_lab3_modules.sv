// lab3_testbench.sv

`timescale 1ns/1ps

module tb_lab3_g29_p2_gates();

    logic a_tb, b_tb; // Test tezgahı giriş sinyal tanımları
    logic y_and_tb, y_or_tb, y_nand_tb, y_nor_tb; // Çıkış sinyal tanımları

    // Test edilecek modüllerin oluşturulması
    lab3_g29_p2_and_gate and_gate_inst (.a(a_tb), .b(b_tb), .y(y_and_tb));
    lab3_g29_p2_or_gate or_gate_inst (.a(a_tb), .b(b_tb), .y(y_or_tb));
    lab3_g29_p2_nand_gate nand_gate_inst (.a(a_tb), .b(b_tb), .y(y_nand_tb));
    lab3_g29_p2_nor_gate nor_gate_inst (.a(a_tb), .b(b_tb), .y(y_nor_tb));

    // Giriş sinyallerinin sırayla devreye uygulanması
    initial begin
        // Başlangıç değerleri
        a_tb = 0; b_tb = 0;
        #10; // 10 ns bekle
        
        // Kombinasyon: a=0, b=1
        b_tb = 1;
        #10;
        
        // Kombinasyon: a=1, b=0
        a_tb = 1; b_tb = 0;
        #10;
        
        // Kombinasyon: a=1, b=1
        b_tb = 1;
        #10;
        
        // Simülasyonun sonlandırılması
        #20;
        $finish;
    end

endmodule
