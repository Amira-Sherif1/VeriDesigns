`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2025 02:42:35 AM
// Design Name: 
// Module Name: MUX8
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


module MUX8(
    input [3:0] I0 , I1 , I2 , I3 , I4 , I5 , I6 , I7,
    input A , B , C,
    output reg [3:0] out
    );
    
    
    always @(*)
     
    case ({A , B , C})
        3'b000 : out <= I0 ;
        3'b001 : out <= I1 ;
        3'b010 : out <= I2 ;
        3'b011 : out <= I3 ;
        3'b100 : out <= I4 ;
        3'b101 : out <= I5 ;
        3'b110 : out <= I6 ;
        3'b111 : out <= I7 ;
    
    endcase
endmodule
