# 🔍 8-BIT MAGNITUDE COMPARATOR (RTL to GDSII) – Verilog | Synopsys Tools

## 📘 Introduction
This project implements an **8-bit Magnitude Comparator** in Verilog HDL and performs the complete **RTL to GDSII flow** using industry-standard Synopsys EDA tools. The design compares two 8-bit binary numbers and outputs whether one is **greater than**, **equal to**, or **less than** the other.

This is commonly used in:
- Digital processors and ALUs
- Sorting circuits
- Memory address matching
- Control and decision-making logic

---

## 🧠 Comparator Logic
Given inputs `A[7:0]` and `B[7:0]`, the comparator outputs:
- `A_gt_B` = 1 if A > B  
- `A_eq_B` = 1 if A == B  
- `A_lt_B` = 1 if A < B

Logic implemented using binary comparison cascaded from MSB to LSB.

---

## ⚙️ Tools Used

| Tool                     | Purpose                                      |
|--------------------------|----------------------------------------------|
| **Synopsys VCS**         | RTL Simulation                               |
| **Verdi**                | Waveform Viewer                              |
| **Design Compiler**      | Logic Synthesis                              |
| **ICC2**                 | Physical Design: Floorplan, Placement, Routing |
| **PrimeTime**            | Static Timing and Power Analysis             |
| **Rocky Linux**          | Operating System for EDA tools               |
| **SAED 32nm Library**    | Standard Cell Library used for physical design |

---

## 📁 Project Structure

├── src/
│   ├── 8bit_comparator_rtl.v
│   └── 8bit_comparator_tb.v
├── constraints/
│   └── 8bit_comparator.sdc
├── DC/
│   └── run_dc.tcl
├── ICC2/scripts/
│   ├── floorplan.tcl
│   ├── power_planning.tcl
│   ├── placement.tcl
│   ├── route.tcl
│   └── clock.tcl
└── results/
    └── magComp.mapped.v

---

## 🔬 Design Flow Summary
## ✅ Step 1: RTL Simulation

vcs -full64 comparator_8bit.v comparator_8bit_tb.v -debug_access+all -lca -kdb
./simv
verdi -ssf novas.fsdb -nologo

## ✅ Step 2: Synthesis (Design Compiler)

dc_shell
source run_dc.tcl
Reports:
report_qor

report_timing

report_power

## ✅ Step 3: Physical Design (ICC2)

icc2_shell
start_gui
source scripts/floorplan.tcl
source scripts/placement.tcl
source scripts/power_planning.tcl
source scripts/clock.tcl
source scripts/route.tcl
## ✅ Step 4: Timing and Power Analysis (PrimeTime)

pt_shell
report_timing
report_power

## 📊 Results Summary
Metric	Post-Synthesis	Post-Layout (ICC2)
Cell Area	~300 µm²	~270 µm²
Slack	+0.92 ns	+0.15 ns
Clock Frequency	100 MHz	111 MHz
Power	~5 µW	~6 µW
Leaf Cells	~120	~98



## ✅ Summary
This project successfully implements a digital 8-bit Magnitude Comparator using Verilog HDL and completes the ASIC flow from RTL simulation to GDSII layout generation using Synopsys tools.

✔️ RTL logic verified through testbench simulation
✔️ Timing-constrained synthesis using Design Compiler
✔️ Floorplanning, placement, routing completed using ICC2
✔️ Timing and power analysis done using PrimeTime
✔️ Final GDSII generated for tape-out

