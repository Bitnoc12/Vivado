`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 12:55:46
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


module tb();
  reg x, clock, reset;
  wire z;

  integer i;
  reg [21:0] tc = 22'b10101000010100010101000;
  parameter period = 10;

  vm test (
    .X(x),
    .CLK(clock),
    .RESET(reset),
    .Z(z)
  );

  initial begin
    reset = 1'b1;
    x = 1'b0;
    #(period);
    reset = 1'b0;

    for (i = 0; i < 22; i = i+1) begin
      #(period);
      x = tc[i];
    end

    $finish; // 仿真完成后结束仿真
  end

  always begin
     clock=1'b1;
     #(period);
     clock=1'b0;
     #(period);;
  end
endmodule

