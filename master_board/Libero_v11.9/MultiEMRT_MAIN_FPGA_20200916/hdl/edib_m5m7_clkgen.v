// edib_m5m7_clkgen.v
module edib_m5m7_clkgen
(
    reset,clk_12m,clk_m5m7
);


    input reset,clk_12m;
    output clk_m5m7;

    reg clk_m5m7;
    reg [4:0] counter;

    always @(posedge clk_12m or negedge reset)
    begin
        if(!reset)
        begin
            clk_m5m7<=0;
            counter<=0;
        end
        else
        begin
            if(counter==31)
            begin
                counter<=0;
                clk_m5m7<=~clk_m5m7;
            end
            else
                counter<=counter+1;
            
        end

    end

endmodule