// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

//my id : 211644406
// Put your code here
// ------------------
   logic 		out1, out2, selb;
	NAND2 #(
    .Tpdhl(1), .Tpdlh(1)
	) 	i1 (.Z(selb), .A(sel), .B(sel));
	
	NAND2 #(
    .Tpdhl(1), .Tpdlh(1)
	) 	a1 (.Z(out1), .A(d0), .B(selb));
	
	NAND2 #(
    .Tpdhl(1), .Tpdlh(1)
	) 	a2 (.Z(out2), .A(d1), .B(sel));
	
	NAND2 #(
    .Tpdhl(1), .Tpdlh(1)
	) result (.Z(z), .A(out1), .B(out2));


// End of your code

endmodule
