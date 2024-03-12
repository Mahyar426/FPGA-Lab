`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:21:02 04/03/2021
// Design Name:   binaryto7seg
// Module Name:   C:/Users/Mahyar Onsori/Desktop/New folder/AZ2/test1.v
// Project Name:  AZ2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binaryto7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg clk;
	reg [3:0] input_4bit;

	// Outputs
	wire [6:0] output_7seg;

	// Instantiate the Unit Under Test (UUT)
	binaryto7seg uut (
		.clk(clk), 
		.input_4bit(input_4bit), 
		.output_7seg(output_7seg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		input_4bit = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      input_4bit = 4'b0000;
      #100;
      input_4bit = 4'b0101;
      #100;
      input_4bit = 4'b1000;
      #100;
      input_4bit = 4'b1110;
     		
		// Add stimulus here

	end
 always #5 clk = ~clk;     
endmodule
