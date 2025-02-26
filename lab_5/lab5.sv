`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 02:33:59 PM
// Design Name: 
// Module Name: lab5
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


module lab5(
input a,b,c,d,s1,s2,s3,
output seg1,seg2,seg3,seg4,seg5,seg6,seg7,an0,an1,an2,an3,an4,an5,an6,an7


    );
assign seg1 = ((~a) & (~b) & (~c) & (d) ) | (~a & b & ~c & ~d) | (a & b & ~c &
d) |(a & ~b & c & d);
assign seg2= (b & c & ~d) | (a & c & d) | (~a & b & ~c & d) | (a & b & ~d);
assign seg3= (~a & ~b & c & ~d) | (a & b & c) | (a & b & ~d);
assign seg4= (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (b & c & d) | (a & ~b & c & ~d);
assign seg5= (~a & b & ~c) | (~b & ~c & d) | (~a & d);
assign seg6= (~a & ~b & d) | (~a & c & d) | (~a & ~b & c) | (a & b & ~c & d);
assign seg7= (~a & ~b & ~c) | (a & b & ~c & ~d) | (~a & b & c & d);

assign an0= (s3 | s2 |s1);
assign an1= (s3 | s2 | ~s1);
assign an2= (s3 | ~s2 | s1);
assign an3= (s3 | ~s2 | ~s1);
assign an4= (~s3 | s2 | s1);
assign an5= (~s3 | s2 | ~s1);
assign an6= (~s3 | ~s2 | s1);
assign an7= (~s3 | ~s2 | ~s1);

endmodule
