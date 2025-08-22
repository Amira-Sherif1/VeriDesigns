`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2025 02:22:26 AM
// Design Name: 
// Module Name: FA
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


module FA(
    input  A , B , C,
    output  Sum,
    output carry
    );
    
    // Behavioral Realization
  // assign {carry , Sum} = A + B + C ;
   
   // data flow 
   assign Sum = A ^ B ^ C ; 
   assign carry = (A & B ) | (A & C) | (B & C) ; 
   
    
endmodule
