`include "alu.v"
module checkalu;
reg [15:0] W,Y;
wire [15:0] V;
wire sign,carry,zero,overflow,parity;
 alu DTU(W,Y,V,sign,carry,zero,overflow,parity);
 initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,checkalu);
    $display($time,"X=%H,Y=%H,V=%H,zero=%h,sign =%h,carry=%h,overflow=%h,parity=%h",W,Y,V,zero,sign,carry,overflow,parity);
    #5 W= 16'h0fff; Y=16'h8000;
    #5 W= 16'hfffe;Y=16'h0002;
    #5 W=16'hAAAA;Y=16'h5555;
    #5 $finish; 
 end   
endmodule