`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2025 03:07:19 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [3:0] A , B,
    input [1:0] sel,
    output [3:0] out,
    output carry
    );
    
    reg [3:0] out ; 
    reg carry ;
    
    
    always @(*)
    case(sel)
        2'b00: {carry , out} <= A + B ;
        2'b01: {carry , out} <= A - B ;
        2'b10: begin carry <= 0 ; out <= A && B ;end 
        2'b11: begin carry <= 0 ; out <= A | B ;end 
        default: begin carry <= 0 ; out <= 0 ; end   
     endcase         
endmodule
