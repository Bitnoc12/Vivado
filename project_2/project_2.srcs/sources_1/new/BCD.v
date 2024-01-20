`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 17:03:12
// Design Name: 
// Module Name: BCD
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
module BCD(input [3:0] num,output [3:0] numout);
   
   //计算W值
     assign numout[3]=(
     (
     ~(~num[3]|num[1])
     )
     |
     (
     ~(~num[2]|~num[1])
     )
     |
     (
     ~(~num[2]|~num[0])
     )
     );
    
    //计算X值
     assign numout[2]=(
     (
     ~(num[2]|~num[1])
     )
     |
     (
     ~(num[2]|~num[0])
     )
     |
     (
     ~(~num[2]|num[1]|num[0])
     )
     );
     
     //计算Y值
     assign numout[1]=(
     (
     ~(num[1]|num[0])
     )
     |
     (
     ~(~num[1]|~num[0])
     )
     );
     
     //计算Z值
     assign numout[0]=~num[0];
   
endmodule
