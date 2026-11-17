
# Simulation Results and Discussion

## 1. Overview

The 4-bit Arithmetic Logic Unit (ALU) was functionally verified using ModelSim simulation.

The testbench applies fixed input operands and changes the opcode sequentially from 000 to 111 to verify all eight supported operations.

### Test Inputs

| Signal | Value | Decimal |
|---|---|---|
| A | 0110 | 6 |
| B | 0011 | 3 |

## 2. Simulation Results

### 2.1 Addition

- Opcode: 000
- Operation: A + B
- Input A: 0110
- Input B: 0011
- Expected Result: 1001

### 2.2 Subtraction

- Opcode: 001
- Operation: A - B
- Input A: 0110
- Input B: 0011
- Expected Result: 0011

### 2.3 AND Operation

- Opcode: 010
- Operation: A & B
- Input A: 0110
- Input B: 0011
- Expected Result: 0010

### 2.4 OR Operation

- Opcode: 011
- Operation: A | B
- Input A: 0110
- Input B: 0011
- Expected Result: 0111

### 2.5 XOR Operation

- Opcode: 100
- Operation: A ^ B
- Input A: 0110
- Input B: 0011
- Expected Result: 0101

### 2.6 NOT Operation

- Opcode: 101
- Operation: ~A
- Input A: 0110
- Expected Result: 1001

### 2.7 Shift Left Operation

- Opcode: 110
- Operation: A << 1
- Input A: 0110
- Expected Result: 1100

### 2.8 Shift Right Operation

- Opcode: 111
- Operation: A >> 1
- Input A: 0110
- Expected Result: 0011

## 3. Overall Results Summary

| Opcode | Operation | Expected Result |
|:---:|---|:---:|
| 000 | Addition | 1001 |
| 001 | Subtraction | 0011 |
| 010 | AND | 0010 |
| 011 | OR | 0111 |
| 100 | XOR | 0101 |
| 101 | NOT | 1001 |
| 110 | Shift Left | 1100 |
| 111 | Shift Right | 0011 |

## 4. Conclusion

The simulation results documented in the project report demonstrate the execution of all eight ALU operations.

The testbench applies different opcode values and allows observation of the corresponding output and status flags.

The project demonstrates the application of RTL design, combinational logic, and simulation-based functional verification.
