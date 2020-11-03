library verilog;
use verilog.vl_types.all;
entity signal_acq is
    port(
        un1_add_reg_4_i_0: out    vl_logic;
        un1_add_reg_4_i_2: out    vl_logic;
        ADC_c           : in     vl_logic_vector(2 downto 0);
        addresult_0_0   : out    vl_logic;
        addresult_0_2   : out    vl_logic;
        addresult_RNIJE5C: out    vl_logic_vector(14 downto 14);
        addresult       : out    vl_logic_vector(15 downto 12);
        un1_signal_acq_0: out    vl_logic_vector(3 downto 0);
        addresult_4_0   : out    vl_logic;
        addresult_4_2   : out    vl_logic;
        addresult_RNI8MQ7: out    vl_logic_vector(14 downto 14);
        s_stripnum      : in     vl_logic_vector(11 downto 0);
        s_periodnum     : in     vl_logic_vector(3 downto 0);
        s_acqnum        : in     vl_logic_vector(15 downto 0);
        un1_n_s_change_0_1: in     vl_logic_vector(11 downto 0);
        addresult_5_0   : out    vl_logic;
        addresult_5_2   : out    vl_logic;
        addresult_RNI7DQA: out    vl_logic_vector(14 downto 14);
        addresult_RNI5DQA: out    vl_logic_vector(12 downto 12);
        s_addchoice     : in     vl_logic_vector(4 downto 0);
        top_code_0_n_s_ctrl_0: in     vl_logic;
        N_104           : out    vl_logic;
        N_88            : out    vl_logic;
        N_86            : out    vl_logic;
        N_27_i_0        : out    vl_logic;
        N_22_i_0        : out    vl_logic;
        N_18_i_0        : out    vl_logic;
        N_16_i_0        : out    vl_logic;
        N_14_i_0        : out    vl_logic;
        N_12_i_0        : out    vl_logic;
        N_20_i_0        : out    vl_logic;
        N_25_i_0        : out    vl_logic;
        N_92            : out    vl_logic;
        N_108           : out    vl_logic;
        N_99            : out    vl_logic;
        N_115           : out    vl_logic;
        N_107           : out    vl_logic;
        N_91            : out    vl_logic;
        N_97            : out    vl_logic;
        N_113           : out    vl_logic;
        N_105           : out    vl_logic;
        N_89            : out    vl_logic;
        N_87            : out    vl_logic;
        N_95            : out    vl_logic;
        N_111           : out    vl_logic;
        signal_acq_0_Signal_acq_clk: out    vl_logic;
        GLA             : in     vl_logic;
        s_acq_change_0_s_load: in     vl_logic;
        s_acq_change_0_s_load_0: in     vl_logic;
        scan_scale_sw_0_s_start: in     vl_logic;
        ddsclkout_c     : in     vl_logic;
        s_acq_change_0_s_rst: in     vl_logic;
        N_33            : out    vl_logic;
        N_256           : out    vl_logic;
        N_255           : out    vl_logic;
        N_253           : out    vl_logic;
        N_251           : out    vl_logic;
        N_39            : out    vl_logic
    );
end signal_acq;
