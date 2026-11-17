
# RTL Design and Functional Verification of a 4-bit ALU using SystemVerilog

## Project Overview

An Arithmetic Logic Unit (ALU) is a fundamental component of a Central Processing Unit (CPU). It performs arithmetic and logical operations on binary data.

This project focuses on the RTL design and functional verification of a 4-bit Arithmetic Logic Unit (ALU) using Systemverilog. The ALU performs eight different operations selected through a 3-bit opcode.

## Features

- 4-bit input operands (A and B)
- 3-bit opcode for operation selection
- Eight arithmetic and logical operations
- Status flag generation:
  - Carry
  - Zero
  - Negative
  - Overflow
- Combinational logic design
- Simulation-based functional verification

## Supported Operations

| Opcode | Operation |
|:---:|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Shift Left |
| 111 | Shift Right |

## Tools Used

- SystemVerilog
- ModelSim Intel FPGA Starter Edition
- RTL Design
- Functional Verification


## Verification

A testbench was developed to verify all eight ALU operations using fixed input operands and sequential opcode selection.

The input operands A = 0110 and B = 0011 are applied, while the opcode changes from 000 to 111.

Simulation waveforms are used to observe and verify the corresponding ALU outputs.


## Status Flags

| Flag | Description |
|---|---|
| Carry | Indicates carry-out during arithmetic operations |
| Zero | High when the result is zero |
| Negative | Indicates the MSB of the result |
| Overflow | Indicates signed arithmetic overflow |


```

## Author

Tohid Bijalikhan

Electronics Engineering
VLSI Design and Technology


---

## Architecture and Block Diagram

### ALU Block Diagram

![4-bit ALU Block Diagram](docs/alu_block_diagram.png)

### ALU Architecture

![4-bit ALU Architecture](docs/alu_architecture.png)

## Simulation Waveform

The following waveform is included from the original project report and illustrates the ALU operations for the applied test inputs.

![ALU Simulation Waveform](docs/alu_simulation_waveform.png)

## Documentation


---

## Design Specifications

| Parameter | Description |
|---|---|
| Design | 4-bit Arithmetic Logic Unit |
| Input operands | Two 4-bit inputs (A and B) |
| Opcode width | 3 bits |
| Supported operations | 8 |
| Output | 4-bit result |
| Status flags | Carry, Zero, Negative, Overflow |
| Design type | Combinational logic |

## Supported ALU Operations

| Opcode | Operation |
|:---:|---|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Shift Left |
| 111 | Shift Right |

## Tools and Technologies

- Verilog / SystemVerilog RTL design
- ModelSim simulation
- Testbench development
- FPGA hardware implementation
- Functional verification

## Repository Structure

```text
4-bit-ALU-SystemVerilog/
│
├── README.md
├── alu_4bit.v
├── alu_4bit_tb.v
│
└── docs/
    ├── architecture.md
    ├── results.md
    ├── alu_architecture.png
    ├── alu_block_diagram.png
    ├── alu_simulation_waveform.png
    │
    ├── simulation_waveforms/
    │   ├── waveform_addition.png
    │   ├── waveform_subtraction.png
    │   ├── waveform_and.png
    │   ├── waveform_or.png
    │   ├── waveform_xor.png
    │   ├── waveform_not.png
    │   ├── waveform_shift_left.png
    │   └── waveform_shift_right.png
    │
    └── fpga_images/
        ├── fpga_addition.png
        ├── fpga_subtraction.png
        ├── fpga_and.png
        ├── fpga_or.png
        ├── fpga_xor.png
        ├── fpga_not.png
        ├── fpga_shift_left.png
        └── fpga_shift_right.png

## Detailed Documentation

- [ALU Architecture](docs/architecture.md)
- [Simulation Results and FPGA Implementation](docs/results.md)
- [ALU Block Diagram](docs/alu_block_diagram.png)
- [ALU Architecture Diagram](docs/alu_architecture.png)
- [Overall Simulation Waveform](docs/alu_simulation_waveform.png)

## Key Learning Outcomes

- Understanding RTL design of combinational circuits.
- Implementing arithmetic and logical operations using Verilog.
- Developing testbenches for functional verification.
- Analysing simulation waveforms.
- Understanding FPGA-based hardware implementation.



---
