//`timescale 1ns/1ps 
//module lab2_g29_p1( 
//input logic a, b, c, d, 
//output logic y
//);
 // Intermediate signals with delays
// assign #2 n1 = ~b; 
//assign #2 n2 = ~c; 
//assign #2 n3 =a&c; 
//assign #2 n5= n3 & n1;
//assign #2 n4 = n2 & d; 
//assign #2 y = n4| n5; 
//endmodule*//
`timescale 1ns/1ps module lab2_g29_p1(  
   input logic a, b, c, d,   
	output logic y 
); 
 
    // Intermediate signals with delays   
	 assign #2 n1 = ~b;     
	 assign #2 n2 = ~c;    
	 assign #2 n3 = n1 & a & c; 
    assign #2 n4 = n2 & d;  
	 assign #2 n5 = d & a  & ~b; //glich önlemek için yapıldı !! 
    assign #2 y = n3 | n4|n5; 
 	  
 	  
 	  
 endmodule 
