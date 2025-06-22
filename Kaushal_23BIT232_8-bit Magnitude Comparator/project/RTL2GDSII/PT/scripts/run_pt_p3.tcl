# Set significant digits for timing reports
set report_default_significant_digits 6 

# Set the path to the standard cell library
set link_path "/home/student/Downloads/project/RTL2GDSII/ref/lib/stdcell_rvt/saed32rvt_tt0p78vn40c.db"

# Create report directories
file mkdir ./reports
file mkdir ./reports/check_timing
file mkdir ./reports/timing
file mkdir ./reports/Clock
file mkdir ./reports/analysis_coverage

# Read the routed netlist
read_verilog "/home/student/Downloads/project/RTL2GDSII/ICCII/results/8bit_comparator.v"

# Set the top-level module name (verify it's correct)
link_design
current_design magComp

# Read constraints and parasitics
read_sdc "/home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc"
read_parasitics "/home/student/Downloads/project/RTL2GDSII/ICCII/results/8bit_comparator_func::nom.spef.p1_125.spef"

# Update timing
update_timing -full

# Generate reports
report_timing
report_design
check_timing -verbose > ./reports/check_timing/check_timing.p1_report
report_global_timing > ./reports/timing/report_global_timing.p1_report
report_clock -skew -attribute > ./reports/Clock/report_clock.p1_report
report_analysis_coverage > ./reports/analysis_coverage/report_analysis_coverage.p1_report
report_timing -slack_lesser_than 0.0 -delay min_max -nosplit -input -net > ./reports/timing/report_timing.p1_report

