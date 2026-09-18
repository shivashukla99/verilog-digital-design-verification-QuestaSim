module jk_latch(
input enb ,rst , j,k ,output reg q, qbar

    );
    
    always@(enb , rst) begin
    if (rst) begin 
    q<= 1'b0;
    qbar<=1'b1;
    end
    
    
    if(enb)
    begin
    ///hold 
    if(j==0 && k==0)
    begin
    q<=q;
    qbar<=qbar;
    end
    //reset 
    else if (j==0 && k==1)
    begin
    
    q<=1'b0;
    qbar <= 1'b1;
    end
    //set
     else if (j==1 && k==0)
    begin
    
    q<=1'b1;
    qbar <= 1'b0;
    end
    
    //toggle 
    else 
    begin 
    q<=~q;
    qbar<=qbar;
    
    end 
    end 
    end
    
    
endmodule

