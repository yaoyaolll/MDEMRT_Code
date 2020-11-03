library verilog;
use verilog.vl_types.all;
entity sd_sacq_state is
    generic(
        IDLE            : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S1              : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        S2              : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        S3              : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        S4              : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        S20             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        S30             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        S31             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S32             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S40             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S41             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S42             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S50             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S51             : vl_logic_vector(14 downto 0) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S52             : vl_logic_vector(14 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        S10             : vl_logic_vector(14 downto 0) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        dds             : in     vl_logic;
        rst_n           : in     vl_logic;
        i               : in     vl_logic_vector(10 downto 0);
        en              : out    vl_logic;
        stateover       : out    vl_logic
    );
    attribute IDLE_mti_vect_attrib : integer;
    attribute IDLE_mti_vect_attrib of IDLE : constant is 0;
    attribute S1_mti_vect_attrib : integer;
    attribute S1_mti_vect_attrib of S1 : constant is 1;
    attribute S2_mti_vect_attrib : integer;
    attribute S2_mti_vect_attrib of S2 : constant is 2;
    attribute S3_mti_vect_attrib : integer;
    attribute S3_mti_vect_attrib of S3 : constant is 4;
    attribute S4_mti_vect_attrib : integer;
    attribute S4_mti_vect_attrib of S4 : constant is 8;
    attribute S20_mti_vect_attrib : integer;
    attribute S20_mti_vect_attrib of S20 : constant is 16;
    attribute S30_mti_vect_attrib : integer;
    attribute S30_mti_vect_attrib of S30 : constant is 32;
    attribute S31_mti_vect_attrib : integer;
    attribute S31_mti_vect_attrib of S31 : constant is 64;
    attribute S32_mti_vect_attrib : integer;
    attribute S32_mti_vect_attrib of S32 : constant is 128;
    attribute S40_mti_vect_attrib : integer;
    attribute S40_mti_vect_attrib of S40 : constant is 256;
    attribute S41_mti_vect_attrib : integer;
    attribute S41_mti_vect_attrib of S41 : constant is 512;
    attribute S42_mti_vect_attrib : integer;
    attribute S42_mti_vect_attrib of S42 : constant is 1024;
    attribute S50_mti_vect_attrib : integer;
    attribute S50_mti_vect_attrib of S50 : constant is 2048;
    attribute S51_mti_vect_attrib : integer;
    attribute S51_mti_vect_attrib of S51 : constant is 4096;
    attribute S52_mti_vect_attrib : integer;
    attribute S52_mti_vect_attrib of S52 : constant is 8192;
    attribute S10_mti_vect_attrib : integer;
    attribute S10_mti_vect_attrib of S10 : constant is 16384;
end sd_sacq_state;
