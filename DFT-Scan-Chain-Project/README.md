# DFT Scan Chain Implementation (Verilog)

## 📌 Overview
This project demonstrates the implementation of a scan chain architecture to improve controllability and observability of sequential circuits for testing.

## 🎯 Objectives
- Convert sequential circuit into scan-testable design
- Implement scan shift and capture modes
- Perform fault injection (stuck-at fault)
- Verify functionality using testbench

## 🧠 Concepts Covered
- Scan Chain Architecture
- Scan Flip-Flops
- Shift & Capture Operation
- Stuck-at Fault Model

## 🏗️ Design Files
- src/scan_ff.v → Scan flip-flop
- src/scan_chain_design.v → Full scan chain design
- tb/tb_scan_chain.v → Testbench

## 🔄 Working
### Scan Mode
- scan_en = 1
- Data shifts through flip-flops

### Functional Mode
- scan_en = 0
- Normal circuit operation

## 💥 Fault Injection
- Simulated stuck-at-0 fault
- Observed output mismatch for fault detection

## 🛠️ Tools Used
- Verilog HDL
- Xilinx Vivado / ModelSim

## 📊 Results
- Verified scan shifting operation
- Successfully detected fault using test patterns

## 🚀 Future Improvements
- Add ATPG automation
- Implement BIST using LFSR
