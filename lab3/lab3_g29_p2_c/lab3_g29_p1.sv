module lab3_g29_p1 (
    input logic [3:0] a,  // First 4-bit input
    input logic [3:0] b,  // Second 4-bit input
    input logic sel,      // Select line
    output logic [3:0] y  // 4-bit output
);

    logic not_sel;
    logic [3:0] a_sel_nand, b_sel_nand;

    // NOT gate using NAND
    assign not_sel = ~(sel & sel);

    // Logic operations with NAND gates
    assign a_sel_nand = ~(a & {4{not_sel}});  // A AND NOT(sel)
    assign b_sel_nand = ~(b & {4{sel}});      // B AND sel

    // Final output using NAND gate logic
    assign y = ~(a_sel_nand & b_sel_nand);

endmodule
