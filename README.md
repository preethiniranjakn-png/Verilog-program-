# 32-bit ALU using Verilog HDL

## Project Overview

This project implements a 32-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU performs arithmetic and logical operations based on a 3-bit operation selector.

## Operations

| F | Operation |
|---|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Multiplication |
| 011 | Division |
| 100 | AND |
| 101 | OR |
| 110 | NOT A |
| 111 | NOT (A + B) |

## Project Flow

Specification  
↓  
Verilog RTL Design  
↓  
Testbench Development  
↓  
Simulation using Icarus Verilog  
↓  
Waveform Analysis using GTKWave  
↓  
RTL Synthesis using Yosys  
↓  
Synthesized Logic Diagram using Graphviz

## Files

- `alu.v` — 32-bit ALU RTL design
- `alutb.v` — Verilog testbench
- `alu.vcd` — Simulation waveform
- `alu_synth.dot` — Synthesized circuit Graphviz file
- `alu_synth.png` — Synthesized circuit diagram

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Yosys
- Graphviz
- Ubuntu / WSL

## Verification

The ALU was simulated with different operation-select inputs and the resulting outputs were verified using waveform analysis.

## Author

Preethi K N
