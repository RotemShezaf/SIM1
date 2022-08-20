// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
    logic d0;          // Data input 0
    logic d1;          // Data input 1
    logic d2;          // Data input 2
    logic d3;          // Data input 3
    logic [1:0] sel;   // Select input
    logic z;           // Output
// End of your code
	mux4 uut(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(sel), .z(z));
	initial begin
		d0 = 1'b1;
		d1 = 1'b0;
		d2 = 1'b0;
		d3 = 1'b1;
		sel[0] = 1'b0;
		sel[1] = 1'b0;
		#10
		d0 = 1'b1;
		d1 = 1'b0;
		d2 = 1'b0;
		d3 = 1'b1;
		sel[0] = 1'b1;
		sel[1] = 1'b0;
		#10
		d0 = 1'b1;
		d1 = 1'b0;
		d2 = 1'b0;
		d3 = 1'b1;
		sel[0] = 1'b0;
		sel[1] = 1'b0;
		#10;
	end
endmodule
