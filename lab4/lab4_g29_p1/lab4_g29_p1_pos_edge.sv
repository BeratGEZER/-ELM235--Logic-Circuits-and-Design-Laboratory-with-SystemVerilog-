module lab4_g29_p1_pos_edge (
    input logic D,     // Veri girişi
    input logic clk,   // Saat sinyali
    output logic Q     // Çıkış
);
    always @(posedge clk) begin
        Q <= D;        // Saat sinyalinin pozitif kenarında D'yi Q'ya ata
    end
endmodule
