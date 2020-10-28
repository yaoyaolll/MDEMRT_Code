// edib_m5m7_clkgen.v
module edib_m2m5m7_clkgen
(
    reset,clk_12m,clk_m2_rcv
);


    input reset,clk_12m;
    output clk_m2_rcv;

    reg clk_m2_rcv;
    reg [4:0] counter;

    always @(posedge clk_12m or negedge reset)
    begin
        if(!reset)
        begin
            clk_m2_rcv<=0;
            counter<=0;
        end
        else
        begin
            if(counter==5)
            begin
                counter<=0;
                clk_m2_rcv<=~clk_m2_rcv;
            end
            else
                counter<=counter+1;
            
        end

    end

endmodule