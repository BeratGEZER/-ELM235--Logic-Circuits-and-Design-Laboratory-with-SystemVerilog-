`timescale 1ns / 1ps

module tb_lab3_g29_p2_mux_8x1();

    // Giriş ve çıkış sinyallerini tanımla
    logic [3:0] in0, in1, in2, in3, in4, in5, in6, in7; // Sinyallerin boyutunu belirtmek önemlidir
    logic [2:0] sel;
    logic [2:0] y;

    // test edilecek MUX modülünü çağır
    lab3_g29_p2_mux_8x1 dut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .in6(in6),
        .in7(in7),
        .sel(sel),
        .y(y)
    );

    // Test senaryosu
    initial begin
        $monitor("Time: %t | sel=%b, y=%b", $time, sel, y);

        // Test 1: sel = 000, in0 seçilir
        in0 = 0001; in1 = 2; in2 = 3; in3 = 4;
        in4 = 5; in5 = 6; in6 = 7; in7 = 8;
		  
		  // Test 8: sel = 111, in7 seçilir
        sel = 3'b111;
        #10;
		  
        sel = 3'b000;
        #10;
		  
		  // Test 3: sel = 010, in2 seçilir
        sel = 3'b010;
        #10;

        // Test 2: sel = 001, in1 seçilir
        sel = 3'b001;
        #10;

        // Test 3: sel = 010, in2 seçilir
        sel = 3'b010;
        #10;

        // Test 4: sel = 011, in3 seçilir
        sel = 3'b011;
        #10;

        // Test 5: sel = 100, in4 seçilir
        sel = 3'b100;
        #10;

        // Test 6: sel = 101, in5 seçilir
        sel = 3'b101;
        #10;

        // Test 7: sel = 110, in6 seçilir
        sel = 3'b110;
        #10;

        // Test 8: sel = 111, in7 seçilir
        sel = 3'b111;
        #10;

        $finish;
    end

endmodule
