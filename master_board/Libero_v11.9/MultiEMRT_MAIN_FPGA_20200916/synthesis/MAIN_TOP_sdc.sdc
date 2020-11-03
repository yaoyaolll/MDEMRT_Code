# Top Level Design Parameters

# Clocks

create_clock -name {MAIN_TOP|dsp_clk} -period 1000.000000 -waveform {0.000000 500.000000} dsp_clk
create_clock -name {MAIN_TOP|CLKA} -period 1000.000000 -waveform {0.000000 500.000000} CLKA

# False Paths Between Clocks


# False Path Constraints


# Maximum Delay Constraints


# Multicycle Constraints


# Virtual Clocks
# Output Load Constraints
# Driving Cell Constraints
# Wire Loads
# set_wire_load_mode top

# Other Constraints
