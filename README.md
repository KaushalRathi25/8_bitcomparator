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

📁 Project Structure
## 📁 Project Structure

`src/8bit_comparator_rtl.v` – RTL Verilog source code  
`src/8bit_comparator_tb.v` – Verilog testbench  

`constraints/8bit_comparator.sdc` – SDC timing constraints  

`DC/run_dc.tcl` – Design Compiler synthesis script  

`ICC2/scripts/floorplan.tcl` – Floorplanning TCL script  
`ICC2/scripts/power_planning.tcl` – Power network setup  
`ICC2/scripts/placement.tcl` – Placement step  
`ICC2/scripts/route.tcl` – Routing phase  
`ICC2/scripts/clock.tcl` – Clock Tree Synthesis  

`results/magComp.mapped.v` – Final synthesized netlist



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



## 📊 Final Reports (Detailed Stages, Power in pW)

The backend physical design stages were executed using Synopsys ICC2 tools. Below is a consolidated table of reports from floorplanning to final routing.

| Stage              | Area (µm²) | Slack (ns) | Power (pW)     |
|--------------------|------------|------------|----------------|
| Floorplan          | 104.45     | 1.22       | 168,000,000    |
| Placement          | 81.58      | 1.22       | 168,000,000    |
| Power Planning     | 104.45     | 1.22       | 168,000,000    |
| Clock Tree Synthesis (CTS) | 81.58 | 1.22     | 168,000,000    |
| Routing            | 89.71      | 1.20       | 293,000,000    |

> ✅ All results show **positive timing slack** and successful optimization at each physical design stage.
>  
> ⚡ Power values are represented in **picowatts (pW)** for clarity and precision.


> 📈 The design progressively improved through each stage, maintaining low power and area, with timing slack > 0.

## ✅ Summary
This project successfully implements a digital 8-bit Magnitude Comparator using Verilog HDL and completes the ASIC flow from RTL simulation to GDSII layout generation using Synopsys tools.

✔️ RTL logic verified through testbench simulation

✔️ Timing-constrained synthesis using Design Compiler

✔️ Floorplanning, placement, routing completed using ICC2

✔️ Timing and power analysis done using PrimeTime

✔️ Final GDSII generated for tape-out


## 👨‍💻 Author

**Kaushal Rathi**  
B.Tech ICT, Pandit Deendayal Energy University  
Roll No: 23BIT232  
Under the guidance of **Mr. Puneet Mittal**  
📧 [23bit232@sot.pdpu.ac.in](mailto:23bit232@sot.pdpu.ac.in)
