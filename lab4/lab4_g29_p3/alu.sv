module alu (
    input logic [31:0] A,        // 32-bitlik giriş A
    input logic [31:0] B,        // 32-bitlik giriş B
    input logic [3:0] OPCODE,    // 4-bitlik OPCODE
    output logic [31:0] Result,  // 32-bitlik sonuç
    output logic N,              // Negatif bayrak
    output logic Z,              // Sıfır bayrak
    output logic V,              // Taşma bayrağı
    output logic C,              // Taşıma bayrağı
    output logic Error           // Hata bayrağı
);

    // Shift işlemleri için B'nin son 5 bitinin çıkarılması
    logic [4:0] shift_amount;
    assign shift_amount = B[4:0];

    always_comb begin
        // Bayrakların sıfırlanması
        N = 0;
        Z = 0;
        V = 0;
        C = 0; 
        Error = 0;
        Result = 0; // Default olarak sıfırlayalım
        
        case (OPCODE)
            4'b0000: {C, Result} = A + B; // Toplama
            4'b1000: {C, Result} = A - B; // Çıkarma
            4'b0001: Result = A << shift_amount; // Sola kaydırma
            4'b0010: Result = (A > B) ? 32'h1 : 32'h0; // İşaretli karşılaştırma
            4'b0011: Result = ($unsigned(A) > $unsigned(B)) ? 32'h1 : 32'h0; // İşaretsiz karşılaştırma
            4'b0100: Result = A ^ B;      // XOR
            4'b0101: Result = A >> shift_amount; // Sağ kaydırma (logical)
            4'b1101: Result = $signed(A) >>> shift_amount; // Sağ kaydırma (arithmetic)
            4'b0110: Result = A | B;      // OR
            4'b0111: Result = A & B;      // AND
            default: Error = 1;           // Bilinmeyen OPCODE
        endcase

        // NZVC bayraklarının güncellenmesi
        N = Result[31];          // Negatif bayrak
        Z = (Result == 0);       // Sıfır bayrak
        V = ((OPCODE == 4'b0000 && ((A[31] == B[31]) && (Result[31] != A[31]))) || 
             (OPCODE == 4'b1000 && ((A[31] != B[31]) && (Result[31] != A[31])))); // Taşma bayrağı
        C = ((OPCODE == 4'b0000 && A > (32'hFFFFFFFF - B)) || 
             (OPCODE == 4'b1000 && A < B));    // Taşıma bayrağı
    end

endmodule




























