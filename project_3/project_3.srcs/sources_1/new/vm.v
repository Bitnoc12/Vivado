`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 12:34:08
// Design Name: ����
// Module Name: vm
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


module vm(X,Z,CLK,RESET);
    input X;
    input CLK;
    input RESET;
    output Z;
    reg[0:1] state,next_state;
    //״̬����
    parameter A=2'b00,B=2'b01,C=2'b10,D=2'b11;
    reg Z;
    
    //��ʱ������͸�λ���봥��
    always @(posedge CLK or posedge RESET)
    begin
        if(RESET)
            state<=A;
        else
            state<=next_state;
    end 
    
    //ʵ�����
    always @(X or state)
    begin
        case(state)
            A:Z=1'b0;
            B:Z=1'b0;
            C:Z=1'b0;
            D:Z=X?1'b1:1'b0;
        endcase
      end
    
   //ʵ��״̬�л�
   always @(X or state)
   begin
       case(state)
          A:next_state<=X?B:A;
          B:next_state<=X?C:A;
          C:next_state<=X?D:A;
          D:next_state<=X?A:D;  
        endcase
   end

endmodule
