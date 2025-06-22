################################################################################
#
# Design name:  magComp
#
# Created by icc2 write_sdc on Tue Jun  3 10:00:32 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 1
create_clock -name Clock -period 2.38 -waveform {0 1.19} [get_ports {Clock}]
set_propagated_clock [get_clocks {Clock}]
# Warning: Libcell power domain derates are skipped!

# Set latency for io paths.
# -origin useful_skew
set_clock_latency -min 0.0264168 [get_clocks {Clock}]
# -origin useful_skew
set_clock_latency -max 0.0284958 [get_clocks {Clock}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {Clock}]
set_clock_uncertainty -setup 0.3 [get_clocks {Clock}]
set_clock_uncertainty -hold 0.1 [get_clocks {Clock}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {Clock}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[7]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[6]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[5]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[4]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[3]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[2]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[1]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {A[0]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[7]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[6]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[5]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[4]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[3]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[2]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[1]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 4
set_input_transition 0.5 [get_ports {B[0]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Clock}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[7]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[6]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[5]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[4]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[3]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[2]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[1]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {A[0]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[7]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[6]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[5]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[4]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[3]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[2]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[1]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 3
set_input_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {B[0]}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Gt}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Lt}]
# /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc, \
#   line 6
set_output_delay -clock [get_clocks {Clock}] -max 0.5 [get_ports {Eq}]
set_max_transition 0.25 [current_design]
set_max_transition 0.15 [get_clocks {Clock}] -clock_path
