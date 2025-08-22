`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2025 02:59:27 AM
// Design Name: 
// Module Name: DEMUX
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


module DEMUX(
    input [3:0] mux8,
    input A, B ,C,
    output reg [3:0] I0 , I1 , I2, I3 , I4 , I5 , I6 ,I7
    );
    
    
    always @(*)
    begin
    
    I0=0 ; I1=0 ; I2=0 ; I3=0 ; I4=0 ; I5=0 ; I6=0 ; I7=0 ;
    
    case({A , B , C})
        3'b000: I0 <= mux8 ;
        3'b001: I1 <= mux8 ;
        3'b010: I2 <= mux8 ;
        3'b011: I3 <= mux8 ;
        3'b100: I4 <= mux8 ;
        3'b101: I5 <= mux8 ;
        3'b110: I6 <= mux8 ;
        3'b111: I7 <= mux8 ;
     endcase
    end
endmodule
