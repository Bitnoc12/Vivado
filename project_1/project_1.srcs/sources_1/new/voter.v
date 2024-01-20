`timescale 1ns / 1ps

module voter(
       input a,
       input b,
       input c,
       output f

    );
wire ab,ac,bc;
and and1(ab,a,b);
and and2(ac,a,c);
and and3(bc,b,c);
    
or or1(f,ab,ac,bc);
    
endmodule
