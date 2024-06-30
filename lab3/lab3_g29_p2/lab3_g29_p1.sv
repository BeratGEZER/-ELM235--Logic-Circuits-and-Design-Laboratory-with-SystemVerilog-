module lab3_g29_p1 (
    input logic a,
    input logic b,
    input logic sel,
    output logic y
);

logic sel_nand, not_sel_nand, a_sel_nand, b_not_sel_nand;

// NAND Kapılarıyla Mantık İfade Etme
assign not_sel_nand = ~(sel & sel); // NOT(sel) not kapısı     sel 0     notselec 1
assign a_sel_nand = ~(a & not_sel_nand); // A AND NOT(sel)     a=1    a_sel_nand=0 
assign b_not_sel_nand = ~(b & sel); // B AND sel               1   
assign y = ~(a_sel_nand & b_not_sel_nand); // Final Çıkış      y = 1

endmodule

