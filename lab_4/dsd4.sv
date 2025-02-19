
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/19/2025 01:46:16 PM
// Design Name: 
// Module Name: dsd4
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


module dsd4(

	input logic [1:0]a,
	input logic [1:0]b,
	output logic re, gr, bl
);
assign re = (a[0]&a[1]) | ((~b[0])&(~b[1])) | (a[0]&(~a[1])&(~b[0])) | (a[0]&b[0]&(~b[1])) | (a[1]&(~b[0]));

assign gr = ((~a[0])&(~a[1])) | (b[0]&b[1]) | ((~a[0])&(~b[0])&b[1]) | ((~a[0])&b[0]&(~b[1])) | (a[0]&b[0]&(~a[1]));

assign bl = ((~a[0])&b[0]) | (a[0]&(~b[0])) | (a[1]&(~b[1])) | ((~a[1])& b[1]);

endmodule


 
