module tb_s_r( 

    );
    
    reg enb , s, r , rst;
    wire q, qbar;
    
    s_r_latch dut(enb,s, r, rst, q, qbar);
    initial
    begin
    
    {enb, s,r,rst}=0;
 
    end
    
always #5 enb = ~enb;

//drive input 
initial
begin
rst=1;
#10;
rst =0;
//hold condition 

s=0;
r=0;
// set condition 

#10;
s=1;
r=0;

//reset condition

#10;
s=0;
r=1;

//invalid condition
#10;
s=1;
r=1;


end    
endmodule
