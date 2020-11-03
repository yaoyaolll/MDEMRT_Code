// edib_ctrl_reg.v
module edib_ctrl_reg
(
  dsp_clkout,m2_clr_reg_flag,reset,m2_send,m2_sendone_flag,m2_sendone_reg_en,rdh_wrl,dsp_data_out,rcvd_data,rcvd_datareg_en,m2rxiqb,
  m5_loadone_reg_en,load_data_shift_m5,clr_m5_loadone_flag,tst_m5_loadone_flag,m7_loadone_reg_en,load_data_shift_m7,clr_m7_loadone_flag,
  tst_m7_loadone_flag,rcvreg_load
);
input reset;
input dsp_clkout;
input m2_clr_reg_flag;
input m2_send;
input m2_sendone_reg_en,rdh_wrl;
input rcvd_datareg_en,m2rxiqb,rcvreg_load;
input [15:0]rcvd_data;
input m5_loadone_reg_en,load_data_shift_m5,clr_m5_loadone_flag;
input m7_loadone_reg_en,load_data_shift_m7,clr_m7_loadone_flag;
output m2_sendone_flag;
output [15:0]dsp_data_out;
output tst_m5_loadone_flag;
output tst_m7_loadone_flag;


reg m2_sendone_flag;
reg m5_loadone_flag;
reg m7_loadone_flag;
reg [15:0]m2_sendone_reg;
reg [15:0]databuffer;
reg [15:0] rcv_reg;
reg [15:0] m5_loadone_reg;
reg [15:0] m7_loadone_reg;
wire edib_zone_en;

assign dsp_data_out=((edib_zone_en==1)&&(rdh_wrl==1))?databuffer:16'hzzzz;
assign edib_zone_en=m2_sendone_reg_en||rcvd_datareg_en||m5_loadone_reg_en||m7_loadone_reg_en;
assign tst_m5_loadone_flag=m5_loadone_flag;
assign tst_m7_loadone_flag=m7_loadone_flag;


always @(negedge m2_clr_reg_flag, posedge m2_send,negedge reset)
begin
    if(!reset)
       m2_sendone_flag<=1;
    else
    begin
        if(m2_send==0)
            m2_sendone_flag<=1;
        else
            m2_sendone_flag<=0; 
    end
end

always @(negedge load_data_shift_m5,posedge clr_m5_loadone_flag,negedge reset)
begin
    if(!reset)
       m5_loadone_flag<=1;
    else
    begin
        if(clr_m5_loadone_flag==0)
            m5_loadone_flag<=1;
        else
            m5_loadone_flag<=0;
    end        
end

always @(negedge load_data_shift_m7,posedge clr_m7_loadone_flag,negedge reset)
begin
    if(!reset)
       m7_loadone_flag<=1;
    else
    begin
        if(clr_m7_loadone_flag==0)
            m7_loadone_flag<=1;
        else
            m7_loadone_flag<=0;
    end        
end


always @(negedge dsp_clkout, negedge reset)
begin
    if(!reset)
    begin
       m5_loadone_reg<=16'b1111_1111_1111_1111;
       m7_loadone_reg<=16'b1111_1111_1111_1111;
       m2_sendone_reg<=16'b1111_1111_1111_1111;
       rcv_reg<=16'h0000_0000_0000_0000;
    end
    else
    begin
        if((m2rxiqb==1)&&(rcvreg_load==0))
            rcv_reg<=rcvd_data;
        if(m5_loadone_flag==1)
        begin
            m5_loadone_reg<=16'b1111_1111_1111_1111;
        end
        else
        begin
            m5_loadone_reg<=16'b0000_0000_0000_0000;
        end
        if(m7_loadone_flag==1)
        begin
            m7_loadone_reg<=16'b1111_1111_1111_1111;
        end
        else
        begin
            m7_loadone_reg<=16'b0000_0000_0000_0000;
        end
        if(m2_sendone_flag==1)
            m2_sendone_reg<=16'b1111_1111_1111_1111;
        else
            begin
            m2_sendone_reg<=16'b0000_0000_0000_0000;
            end
    end
end

always @(posedge dsp_clkout,negedge reset)
begin
    if(!reset)
    begin
        databuffer<=16'b000_0000_0000_0000;
    end
    else
    begin
        if(m2_sendone_reg_en==1)
            databuffer<=m2_sendone_reg;
        else
        begin
            if(rcvd_datareg_en==1)
                databuffer<=rcv_reg;
            else
            begin
                if(m5_loadone_reg_en==1)
                    databuffer<=m5_loadone_reg;
                else
                begin
                   if(m7_loadone_reg_en==1)
                    databuffer<=m7_loadone_reg; 
                end
            end
        end
    end
end


endmodule