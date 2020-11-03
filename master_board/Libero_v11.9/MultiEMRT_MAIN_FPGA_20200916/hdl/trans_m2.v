// trans_m2.v
module trans_m2
(
 clock_system,clock_m2_up,reset_low, m2_start,wr_low,db,ma_en,m2_bzo,m2_boo,tst_loaddata,tst_shift,tst_inc_counter,tst_clr_counter,
 clr_reg_flag
);


parameter idle = 3'b001;
parameter data_sending = 3'b010;
parameter waiting = 3'b100;
parameter shift_head_bzo=6'b000111;
parameter shift_head_boo=6'b111000;
//parameter m2_address =  16'b0010001000000000;


input clock_system;
input clock_m2_up;
input reset_low;
input wr_low;
input m2_start;
input ma_en;
input [15:0]db;

output m2_bzo;
output m2_boo;
output tst_loaddata;
output tst_shift;
output tst_inc_counter;
output tst_clr_counter;
output clr_reg_flag;

reg shift,inc_counter,clr_counter,load_data,clr_reg;
reg m2_check;
reg [2:0] state;
reg [2:0] next_state;
reg [39:0] counter;
reg [15:0] m2_data;
reg [39:0] shift_reg_bzo;
reg [39:0] shift_reg_boo;
wire [33:0]m2_shift_data;

assign tst_loaddata=load_data;    //tst
assign tst_shift=shift;           //tst
assign tst_inc_counter=inc_counter; //tst
assign tst_clr_counter=clr_counter; //tst
assign clr_reg_flag=clr_reg;    //用作发送完成标志位
assign m2_bzo = shift_reg_bzo[39];
assign m2_boo = shift_reg_boo[39];

assign      m2_shift_data[1:0]   =m2_check?2'b10:2'b01;
assign		m2_shift_data[3:2]   =m2_data[0]?2'b10:2'b01;
assign		m2_shift_data[5:4]   =m2_data[1]?2'b10:2'b01;
assign		m2_shift_data[7:6]   =m2_data[2]?2'b10:2'b01;
assign		m2_shift_data[9:8]   =m2_data[3]?2'b10:2'b01;
assign		m2_shift_data[11:10] =m2_data[4]?2'b10:2'b01;
assign		m2_shift_data[13:12] =m2_data[5]?2'b10:2'b01;
assign		m2_shift_data[15:14] =m2_data[6]?2'b10:2'b01;
assign		m2_shift_data[17:16] =m2_data[7]?2'b10:2'b01;
assign		m2_shift_data[19:18] =m2_data[8]?2'b10:2'b01;
assign		m2_shift_data[21:20] =m2_data[9]?2'b10:2'b01;
assign		m2_shift_data[23:22] =m2_data[10]?2'b10:2'b01;
assign		m2_shift_data[25:24] =m2_data[11]?2'b10:2'b01;
assign		m2_shift_data[27:26] =m2_data[12]?2'b10:2'b01;
assign		m2_shift_data[29:28] =m2_data[13]?2'b10:2'b01;
assign		m2_shift_data[31:30] =m2_data[14]?2'b10:2'b01;
assign      m2_shift_data[33:32] =m2_data[15]?2'b10:2'b01;

always @(posedge clock_system,negedge reset_low)
begin
     if(!reset_low)
        begin
          m2_data  <= 16'b0000000000000000;
          m2_check <= 0;
        end
     else 
     begin
       if((!wr_low)&&(ma_en==1))
       begin
             m2_data  <= db;
             m2_check <= ~(^db);
       end
     end
end

always @(state,counter,m2_start)
begin
 
     shift=0;
     clr_reg=0;
     load_data=0;
     inc_counter=0;
     clr_counter=0;
     next_state=state;
    
  case(state)
     idle:
       if(m2_start)
         begin
           load_data=1;
           next_state=data_sending;
           clr_counter=1;
         end
     data_sending:
     begin
         if(counter!=40'b1000000000000000000000000000000000000000)
          begin
             shift=1;
             inc_counter=1;
          end
         else 
          begin
              next_state=waiting;
              clr_counter=1;
          end
      end
      waiting:
         begin
             if(!m2_start)
             begin
                clr_reg=1;
                next_state = idle;
             end
         end
      default:       
           next_state=idle;
   endcase
end

always @(posedge clock_m2_up,negedge reset_low)
begin
     if(!reset_low)
       state=idle;
     else
       state=next_state;
end




always @(posedge clock_m2_up,negedge reset_low)
begin
     if(!reset_low)
       begin
        shift_reg_boo <= 40'b1000000000000000000000000000000000000000;
        shift_reg_bzo <= 40'b1000000000000000000000000000000000000000;
        counter       <= 40'b0000000000000000000000000000000000000001;

       end
     else 
         begin
          if(load_data)
          begin
              shift_reg_bzo <= {shift_head_bzo,m2_shift_data};
              shift_reg_boo <= {shift_head_boo,~m2_shift_data};
          end
          if(shift)
          begin
              shift_reg_bzo <={shift_reg_bzo[38:0],1'b0};
              shift_reg_boo <={shift_reg_boo[38:0],1'b0};
          end
          if(inc_counter)
              counter <= {counter[38:0],1'b0};
          if(clr_counter)
              counter <= 40'b0000000000000000000000000000000000000001;
          if(clr_reg)
          begin
              shift_reg_bzo <= 40'b1000000000000000000000000000000000000000;
              shift_reg_boo <= 40'b1000000000000000000000000000000000000000;
          end
         end  

end




endmodule