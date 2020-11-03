library verilog;
use verilog.vl_types.all;
entity scalestate is
    generic(
        IDLE            : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        INI_RST1        : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        INI_RST2        : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        START           : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        PLUSE90         : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        DUMP90          : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        SOFT_DUMP90     : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        CUT_DEC90       : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        RESET           : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DDSCONF         : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        PLUSE180        : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DUMP180         : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SOFT_DUMP180    : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        OPEN_DEC        : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        OPEN_SWITCH     : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        ECHO_ACQ        : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        CUT_DEC180      : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        JUMP            : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        STOP            : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        START_TEST      : vl_logic_vector(20 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        DDSCONF_TEST    : vl_logic_vector(20 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        CUT_DECI90      : vl_logic_vector(20 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk_sys         : in     vl_logic;
        clken_p         : in     vl_logic;
        rst_n           : in     vl_logic;
        soft_d          : out    vl_logic;
        rt_sw           : out    vl_logic;
        sw_acq1         : out    vl_logic;
        sw_acq2         : out    vl_logic;
        timecount       : out    vl_logic_vector(21 downto 0);
        s_acq           : out    vl_logic;
        dds_conf        : out    vl_logic;
        datain          : in     vl_logic_vector(15 downto 0);
        load            : in     vl_logic;
        loadchoice      : in     vl_logic_vector(4 downto 0);
        pn_change       : in     vl_logic;
        inv_turn        : in     vl_logic;
        dump_start      : out    vl_logic;
        pluse_start     : out    vl_logic;
        pn_out          : out    vl_logic;
        bb_ch           : out    vl_logic;
        reset_out       : out    vl_logic;
        load_out        : out    vl_logic;
        s_acqnum        : out    vl_logic_vector(15 downto 0);
        intertodsp      : out    vl_logic;
        state_over_n    : out    vl_logic;
        strippluse      : out    vl_logic_vector(11 downto 0);
        dumpoff_ctr     : out    vl_logic;
        off_test        : out    vl_logic;
        tetw_pluse      : out    vl_logic;
        s_acq180        : out    vl_logic;
        long_opentime   : out    vl_logic;
        dump_sustain_ctrl: out    vl_logic;
        ne_le           : out    vl_logic
    );
    attribute IDLE_mti_vect_attrib : integer;
    attribute IDLE_mti_vect_attrib of IDLE : constant is 0;
    attribute INI_RST1_mti_vect_attrib : integer;
    attribute INI_RST1_mti_vect_attrib of INI_RST1 : constant is 1;
    attribute INI_RST2_mti_vect_attrib : integer;
    attribute INI_RST2_mti_vect_attrib of INI_RST2 : constant is 2;
    attribute START_mti_vect_attrib : integer;
    attribute START_mti_vect_attrib of START : constant is 4;
    attribute PLUSE90_mti_vect_attrib : integer;
    attribute PLUSE90_mti_vect_attrib of PLUSE90 : constant is 8;
    attribute DUMP90_mti_vect_attrib : integer;
    attribute DUMP90_mti_vect_attrib of DUMP90 : constant is 16;
    attribute SOFT_DUMP90_mti_vect_attrib : integer;
    attribute SOFT_DUMP90_mti_vect_attrib of SOFT_DUMP90 : constant is 32;
    attribute CUT_DEC90_mti_vect_attrib : integer;
    attribute CUT_DEC90_mti_vect_attrib of CUT_DEC90 : constant is 64;
    attribute RESET_mti_vect_attrib : integer;
    attribute RESET_mti_vect_attrib of RESET : constant is 128;
    attribute DDSCONF_mti_vect_attrib : integer;
    attribute DDSCONF_mti_vect_attrib of DDSCONF : constant is 256;
    attribute PLUSE180_mti_vect_attrib : integer;
    attribute PLUSE180_mti_vect_attrib of PLUSE180 : constant is 512;
    attribute DUMP180_mti_vect_attrib : integer;
    attribute DUMP180_mti_vect_attrib of DUMP180 : constant is 1024;
    attribute SOFT_DUMP180_mti_vect_attrib : integer;
    attribute SOFT_DUMP180_mti_vect_attrib of SOFT_DUMP180 : constant is 2048;
    attribute OPEN_DEC_mti_vect_attrib : integer;
    attribute OPEN_DEC_mti_vect_attrib of OPEN_DEC : constant is 4096;
    attribute OPEN_SWITCH_mti_vect_attrib : integer;
    attribute OPEN_SWITCH_mti_vect_attrib of OPEN_SWITCH : constant is 8192;
    attribute ECHO_ACQ_mti_vect_attrib : integer;
    attribute ECHO_ACQ_mti_vect_attrib of ECHO_ACQ : constant is 16384;
    attribute CUT_DEC180_mti_vect_attrib : integer;
    attribute CUT_DEC180_mti_vect_attrib of CUT_DEC180 : constant is 32768;
    attribute JUMP_mti_vect_attrib : integer;
    attribute JUMP_mti_vect_attrib of JUMP : constant is 65536;
    attribute STOP_mti_vect_attrib : integer;
    attribute STOP_mti_vect_attrib of STOP : constant is 131072;
    attribute START_TEST_mti_vect_attrib : integer;
    attribute START_TEST_mti_vect_attrib of START_TEST : constant is 262144;
    attribute DDSCONF_TEST_mti_vect_attrib : integer;
    attribute DDSCONF_TEST_mti_vect_attrib of DDSCONF_TEST : constant is 524288;
    attribute CUT_DECI90_mti_vect_attrib : integer;
    attribute CUT_DECI90_mti_vect_attrib of CUT_DECI90 : constant is 1048576;
end scalestate;
