`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 21:24:42
// Design Name: 
// Module Name: tb
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

`timescale 1ps / 1ps
module tb(

    );
    reg[3:0] in;
    wire[3:0] out;
    
    BCD test(
      .num(in),
      .numout(out)
    );
    
    // ‰»Î0-9
    initial begin
        in<=4'd0;
        #20 in<=4'd1;
        #10 in<=4'd2;
        #10 in<=4'd3;
        #10 in<=4'd4;
        #10 in<=5'd5;
        #10 in<=6'd6;
        #10 in<=7'd7;
        #10 in<=8'd8;
        #10 in<=9'd9;
        #20;
    end  
    
endmodule
