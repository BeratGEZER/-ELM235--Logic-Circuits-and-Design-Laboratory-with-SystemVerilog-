`timescale 1ns/1ps

module sv1();

    // Testbench sinyalleri
    logic a_tb, b_tb;
    logic y_tb;

    // Test edilen modül (Device Under Test - DUT)
    lab3_g29_p2_and_gate dut (
        .a(a_tb),
        .b(b_tb),
        .y(y_tb)
    );

    // Test sinyalleri uygulanıyor
    initial begin
        // Test girişleri ve çıktıların kontrolü
        a_tb = 0; b_tb = 0;
        #10;
        $display("a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, y_tb);

        a_tb = 0; b_tb = 1;
        #10;
        $display("a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, y_tb);

        a_tb = 1; b_tb = 0;
        #10;
        $display("a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, y_tb);

        a_tb = 1; b_tb = 1;
        #10;
        $display("a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, y_tb);

        $finish; // Simülasyonu sonlandır
    end

endmodule
