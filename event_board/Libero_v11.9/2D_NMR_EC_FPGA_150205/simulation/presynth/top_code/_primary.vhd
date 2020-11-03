library verilog;
use verilog.vl_types.all;
entity top_code is
    port(
        rst_n           : in     vl_logic;
        clk_sys         : in     vl_logic;
        xa              : in     vl_logic_vector(18 downto 0);
        code_en         : in     vl_logic;
        xdata           : in     vl_logic_vector(15 downto 0);
        scan_rst        : out    vl_logic;
        scan_start      : out    vl_logic;
        noise_rst       : out    vl_logic;
        noise_start     : out    vl_logic;
        dds_configdata  : out    vl_logic_vector(15 downto 0);
        dds_load        : out    vl_logic;
        dds_choice      : out    vl_logic;
        cal_load        : out    vl_logic;
        cal_data        : out    vl_logic_vector(5 downto 0);
        s_acqnum        : out    vl_logic_vector(15 downto 0);
        s_load          : out    vl_logic;
        change          : out    vl_logic_vector(1 downto 0);
        scale_rst       : out    vl_logic;
        scale_start     : out    vl_logic;
        scaleload       : out    vl_logic;
        bridge_load     : out    vl_logic;
        pn_change       : out    vl_logic;
        dumpload        : out    vl_logic;
        scaledatain     : out    vl_logic_vector(15 downto 0);
        scalechoice     : out    vl_logic_vector(4 downto 0);
        bri_datain      : out    vl_logic_vector(15 downto 0);
        halfdata        : out    vl_logic_vector(7 downto 0);
        dump_cho        : out    vl_logic_vector(2 downto 0);
        dumpdata        : out    vl_logic_vector(11 downto 0);
        scaleddsdiv     : out    vl_logic_vector(5 downto 0);
        pluse_noise_ctrl: out    vl_logic;
        pluse_scale     : out    vl_logic;
        pluse_str       : out    vl_logic;
        pluse_rst       : out    vl_logic;
        plusedata       : out    vl_logic_vector(15 downto 0);
        pluseload       : out    vl_logic;
        pluse_lc        : out    vl_logic;
        relayclose_on   : out    vl_logic_vector(15 downto 0);
        sigtimedata     : out    vl_logic_vector(15 downto 0);
        sigrst          : out    vl_logic;
        scanchoice      : out    vl_logic;
        scanload        : out    vl_logic;
        scandata        : out    vl_logic_vector(15 downto 0);
        nstateload      : out    vl_logic;
        nstatechoice    : out    vl_logic;
        noisedata       : out    vl_logic_vector(15 downto 0);
        acqclken        : out    vl_logic;
        k1              : out    vl_logic;
        k2              : out    vl_logic;
        state_1ms_rst_n : out    vl_logic;
        state_1ms_start : out    vl_logic;
        state_1ms_lc    : out    vl_logic_vector(3 downto 0);
        state_1ms_load  : out    vl_logic;
        state_1ms_data  : out    vl_logic_vector(15 downto 0);
        n_load          : out    vl_logic;
        n_s_ctrl        : out    vl_logic;
        n_divnum        : out    vl_logic_vector(9 downto 0);
        s_periodnum     : out    vl_logic_vector(3 downto 0);
        n_acqnum        : out    vl_logic_vector(11 downto 0);
        sd_sacq_choice  : out    vl_logic_vector(3 downto 0);
        sd_sacq_data    : out    vl_logic_vector(15 downto 0);
        sd_sacq_load    : out    vl_logic;
        pd_pluse_choice : out    vl_logic_vector(3 downto 0);
        pd_pluse_load   : out    vl_logic;
        pd_pluse_data   : out    vl_logic_vector(15 downto 0);
        RAM_Rd_rst      : out    vl_logic;
        n_rd_en         : out    vl_logic;
        s_addchoice     : out    vl_logic_vector(4 downto 0);
        dump_sustain    : out    vl_logic;
        dump_sustain_data: out    vl_logic_vector(3 downto 0);
        inv_turn        : out    vl_logic
    );
end top_code;
