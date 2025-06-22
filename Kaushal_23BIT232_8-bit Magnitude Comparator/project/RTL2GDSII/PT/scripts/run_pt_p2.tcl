set report_default_significant_digits 6 ;
set link_path "/home/student/Downloads/project/RTL2GDSII/ref/lib/stdcell_rvt/saed32rvt_tt0p78vn40c.db"

read_verilog "/home/student/Downloads/project/RTL2GDSII/ICCII/results/8bit_comparator.v"
link_design
current_design magComp

read_sdc /home/student/Downloads/project/RTL2GDSII/CONSTRAINTS/8bit_comparator.sdc

read_parasitics "/home/student/Downloads/project/RTL2GDSII/ICCII/results/8bit_comparator_func::nom.spef.p1_125.spef"

update_timing -full

report_timing
report_design


check_timing -verbose > /home/student/Downloads/project/RTL2GDSII/PT/reports/check_timing/check_timing.p2_report
report_global_timing > /home/student/Downloads/project/RTL2GDSII/PT/reports/timing/report_global_timing.p2_report
report_clock -skew -attribute > /home/student/Downloads/project/RTL2GDSII/PT/reports/clock/report_clock.p2_report
report_analysis_coverage > /home/student/Downloads/project/RTL2GDSII/PT/reports/analysis_coverage/report_analysis_coverage.p2_report
report_timing -slack_lesser_than 0.0 -delay min_max -nosplit -input -net  > /home/student/Downloads/project/RTL2GDSII/PT/reports/timing/report_timing.p2_report
