`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:17 04/03/2021 
// Design Name: 
// Module Name:    binaryto7seg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binaryto7seg(
    input clk,
    input [3:0] input_4bit,
    output reg [6:0] output_7seg=0
    );
    always @(posedge clk)
	   begin
             if(input_4bit == 4'b0000) output_7seg = 7'b0111111;
				 else if(input_4bit == 4'b0001) output_7seg = 7'b0000110;
				 else if(input_4bit == 4'b0010) output_7seg = 7'b1101101;
				 else if(input_4bit == 4'b0011) output_7seg = 7'b1111001;
				 else if(input_4bit == 4'b0100) output_7seg = 7'b0110011;
		   	 else if(input_4bit == 4'b0101) output_7seg = 7'b1011011;
				 else if(input_4bit == 4'b0110) output_7seg = 7'b1011111;
				 else if(input_4bit == 4'b0111) output_7seg = 7'b1110000;
				 else if(input_4bit == 4'b1000) output_7seg = 7'b1111111;
				 else if(input_4bit == 4'b1001) output_7seg = 7'b1111011;
				 else if(input_4bit == 4'b1010) output_7seg = 7'b1110111;
				 else if(input_4bit == 4'b1011) output_7seg = 7'b0011111;
				 else if(input_4bit == 4'b1100) output_7seg = 7'b1001110;
				 else if(input_4bit == 4'b1101) output_7seg = 7'b0111101;
				 else if(input_4bit == 4'b1110) output_7seg = 7'b1001111;
             else if(input_4bit == 4'b1111) output_7seg = 7'b1000111; 
				 else output_7seg = 7'bzzzzzzz;
	     end

endmodule
