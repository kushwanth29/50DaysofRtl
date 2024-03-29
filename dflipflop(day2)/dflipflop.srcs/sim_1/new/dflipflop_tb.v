module tb_DFF;

   
    reg Clk;
    reg CE;
    reg reset;
    reg D;
    reg set;

    
    wire Q;

    
    DFF uut (
        .Clk(Clk), 
        .CE(CE), 
        .reset(reset), 
        .D(D), 
        .set(set), 
        .Q(Q)
    );

    initial Clk = 0;
    always #10 Clk =~Clk;
    
    initial begin
        //Initialize inputs.
        CE = 0;
        reset = 0;
        D = 0;
        set = 0;
        #100;
        //Apply the inputs.
        D=1;
        reset = 1; #100;
        reset = 0; #100;
        set = 1; #100;
        set = 0; #100;
        CE = 1; #100;
        D = 0;  #100;
        CE = 0; #100;
        D = 1;  #100;
        set = 1; #100;
        set = 0; #100;
    end
      
endmodule