`timescale 1ns / 1ps

module tb_lab3_g29_p2_mux_16x1();

    // Giriş ve çıkış sinyallerini tanımla
    logic [3:0] in0, in1, in2, in3, in4, in5, in6, in7;
    logic [3:0] in8, in9, in10, in11, in12, in13, in14, in15;
    logic [3:0] sel;
    logic [3:0] y;

    // Test edilecek MUX modülünü çağır
    lab3_g29_p2_mux_16x1 dut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .in6(in6),
        .in7(in7),
        .in8(in8),
        .in9(in9),
        .in10(in10),
        .in11(in11),
        .in12(in12),
        .in13(in13),
        .in14(in14),
        .in15(in15),
        .sel(sel),
        .y(y)
    );

    // Test senaryosu
    initial begin
        $monitor("Time: %t | sel=%b, y=%b", $time, sel, y);

        // Test 1: sel = 0000, in0 seçilir
        in0 = 0000; in1 = 0001; in2 = 0010; in3 = 0011;
        in4 = 0100; in5 = 0101; in6 = 0110; in7 = 0111;
        in8 = 1000; in9 = 1001; in10 = 1010; in11 = 1011;
        in12 = 1100; in13 = 1101 ; in14 = 1110 ; in15 = 0111;
        sel = 4'b0000;
        #10;

        // Test 2: sel = 0001, in1 seçilir
        sel = 4'b0001;
        #10;

        // Test 3: sel = 0010, in2 seçilir
        sel = 4'b0010;
        #10;
		  
		  

        // Diğer seçiciler için de benzer testler ekleyebilirsiniz

        $finish;
    end

endmodule
