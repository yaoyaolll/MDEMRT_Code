// edib_mode2_clkgen.v
module edib_mode2_clkgen(reset,clk_12m,clk_send);
    input reset,clk_12m;
    output clk_send;

    reg clk_send;
    reg [6:0] counter1;

    always @(posedge clk_12m or negedge reset)
    begin
        if(!reset)
        begin
            clk_send<=0;
            counter1<=0;
        end
        else
        begin
            if(counter1==71)
            begin
                counter1<=0;
                clk_send<=~clk_send;
            end
            else
                counter1<=counter1+1;
            
        end

    end


endmodule