module tb_lab3_g29_p4_nand_gate();

	logic A0,A1,A2;
	logic q0,q1,q2,q3,q4,q5,q6,q7;

lab3_g29_p4_nand_gate dut  (A0,A1,A2, q0,q1,q2,q3,q4,q5,q6,q7);

  // Test senaryosu
    initial begin
        $monitor("Time: %t | A2=%b, A1=%b, A0=%b | q0=%b, q1=%b, q2=%b, q3=%b, q4=%b, q5=%b, q6=%b, q7=%b",
                 $time, A2, A1, A0, q0, q1, q2, q3, q4, q5, q6, q7);

        // Test 1: A2=0, A1=0, A0=0
        A2 = 0; A1 = 0; A0 = 0; #10;

        // Test 2: A2=0, A1=0, A0=1
        A2 = 0; A1 = 0; A0 = 1; #10;

        // Test 3: A2=0, A1=1, A0=0
        A2 = 0; A1 = 1; A0 = 0; #10;

        // Test 4: A2=0, A1=1, A0=1
        A2 = 0; A1 = 1; A0 = 1; #10;

        // Test 5: A2=1, A1=0, A0=0
        A2 = 1; A1 = 0; A0 = 0; #10;

        // Test 6: A2=1, A1=0, A0=1
        A2 = 1; A1 = 0; A0 = 1; #10;

        // Test 7: A2=1, A1=1, A0=0
        A2 = 1; A1 = 1; A0 = 0; #10;

        // Test 8: A2=1, A1=1, A0=1
        A2 = 1; A1 = 1; A0 = 1; #10;

        $stop;
    end

endmodule