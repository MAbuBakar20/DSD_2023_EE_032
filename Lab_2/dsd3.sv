`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 09:51:05 AM
// Design Name: 
// Module Name: dsd3
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


module dsd3(output y,output x,
            input a,b,c
            );
     assign x=(~c)^(a|b);
     assign y=(a|b)&((~(a&b)^(a|b)));
     


endmodule
