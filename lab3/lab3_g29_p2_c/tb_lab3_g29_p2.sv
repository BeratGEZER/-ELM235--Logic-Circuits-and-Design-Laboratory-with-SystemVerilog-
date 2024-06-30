`timescale 1ns / 1ps

module tb_lab3_g29_p2();

    // Giriş ve çıkış sinyallerini tanımla
    logic [0:3] a, b, c, d; // Sinyallerin boyutunu belirtmek önemlidir
    logic [0:1] sel;
    logic [0:3] y ;

    // lab3_g29_p2 modülünü çağır
    lab3_g29_p2 dut (
        .a(a[0:3]),
        .b(b[0:3]),
        .c(c[0:3]),
        .d(d[0:3]),
        .sel(sel),
        .y(y[0:3])
    );

    // Test senaryosu
    initial begin
        $monitor("At Time: %t, a=%b, b=%b, c=%b, d=%b, sel=%b, y=%b", $time, a, b, c, d, sel, y);
        
        // Test 1: a seçilir (sel = 00)
        a = 4'b0000; b = 4'b1111; c = 4'b1001; d = 4'b0110; sel = 2'b00;
        #10;
		  
		  // Test 2: c seçilir (sel = 10)
        a = 4'b0000; b = 4'b1111; c = 4'b1001; d = 4'b0110; sel = 2'b10;
        #10;

        
        // Test 3: b seçilir (sel = 01)
        a = 4'b0000; b = 4'b1111; c = 4'b1001; d = 4'b0110; sel = 2'b01;
        #10;

       
        // Test 4: d seçilir (sel = 11)
        a = 4'b0000; b = 4'b1111; c = 4'b1001; d = 4'b0110; sel = 2'b11;
        #10;

        // Sonlandırma
        $finish;
    end

endmodule