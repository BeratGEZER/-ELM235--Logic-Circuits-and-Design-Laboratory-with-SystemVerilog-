	`timescale 1ns/1ps

	module all_gates_testbench();

		 logic a_tb, b_tb;
		 logic and_out_tb, or_out_tb, nand_out_tb, nor_out_tb;

		 main initial_main(a_tb,b_tb,and_out_tb,or_out_tb,nand_out_tb,nor_out_tb);
		 // Test sinyalleri uygulanıyor
		 initial begin
			  // Giriş sinyalleri: 0 0
			  a_tb = 0; b_tb = 0;
			  #10;
			  $display("AND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, and_out_tb);
			  $display("OR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, or_out_tb);
			  $display("NAND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nand_out_tb);
			  $display("NOR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nor_out_tb);

			  // Giriş sinyalleri: 0 1
			  a_tb = 0; b_tb = 1;
			  #10;
			  $display("AND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, and_out_tb);
			  $display("OR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, or_out_tb);
			  $display("NAND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nand_out_tb);
			  $display("NOR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nor_out_tb);

			  // Giriş sinyalleri: 1 0
			  a_tb = 1; b_tb = 0;
			  #10;
			  $display("AND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, and_out_tb);
			  $display("OR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, or_out_tb);
			  $display("NAND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nand_out_tb);
			  $display("NOR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nor_out_tb);

			  // Giriş sinyalleri: 1 1
			  a_tb = 1; b_tb = 1;
			  #10;
			  $display("AND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, and_out_tb);
			  $display("OR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, or_out_tb);
			  $display("NAND: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nand_out_tb);
			  $display("NOR: a_tb = %b, b_tb = %b, y_tb = %b", a_tb, b_tb, nor_out_tb);

			  $finish; // Simülasyonu sonlandır
		 end

	endmodule
