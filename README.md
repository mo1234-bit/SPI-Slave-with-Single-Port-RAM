SPI Interface with Single Port RAM.
The serial peripheral interface (SPI) is one of the most widely used interfaces between microcontroller
and peripheral ICs such as sensors, ADCs, DACs, shift registers, SRAM, and others.
![68747470733a2f2f64726976652e676f6f676c652e636f6d2f75633f6578706f72743d766965772669643d3145486d4376614d5f745f787962794373686179415a6759536c48724e65624853](https://github.com/user-attachments/assets/a33ed461-fa7d-49b3-b170-2bfeb716c073)
Project Overview
The project consists of the following:-

Codes folder: which contain the following
run.do: do file to run simulation in QuestaSim or ModelSim
RTL folder:
SPI.v: design of SPI block
RAM.v: design of RAM block
instantiation.v: top module
run.tcl: tcl file to run design on Vivado and extract elaboration_shcematic.pdf, synthesized_shcematic.pdf, utilization report and report timing in addition to run elaboration, synthesis, implementation and generates bitstream file
Testbench folder:
SPI.v: Verilog file represent SPI Slave block
RAM.v: Verilog file represent Single Port Async RAM
project.v: Verilog file instantiate the two blocks RAM and SPi

