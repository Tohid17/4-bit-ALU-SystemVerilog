
# 4-bit ALU Architecture

## 1. Introduction

The proposed 4-bit Arithmetic Logic Unit (ALU) is designed using combinational logic and performs arithmetic, logical, and shift operations on two 4-bit input operands.

The ALU consists of three major functional units:

- Arithmetic Unit
- Logical Unit
- Shift Unit

A 3-bit opcode selects the required operation. The ALU also generates status flags such as Carry, Zero, Negative, and Overflow.

## 2. ALU Inputs and Outputs

### Inputs

| Signal | Width | Description |
|---|---|---|
| A | 4-bit | First input operand |
| B | 4-bit | Second input operand |
| Opcode | 3-bit | Operation selection signal |

### Outputs

| Signal | Width | Description |
|---|---|---|
| Result | 4-bit | Operation result |
| Carry | 1-bit | Carry status flag |
| Zero | 1-bit | Zero status flag |
| Negative | 1-bit | Negative status flag |
| Overflow | 1-bit | Overflow status flag |

## 3. Functional Units

### 3.1 Arithmetic Unit

The Arithmetic Unit performs:

- Addition
- Subtraction

It operates on the two 4-bit input operands A and B. Carry and Overflow flags are generated during arithmetic operations.

### 3.2 Logical Unit

The Logical Unit performs bitwise operations:

- AND
- OR
- XOR
- NOT

These operations are used for data manipulation and logical processing.

### 3.3 Shift Unit

The Shift Unit performs:

- Shift Left
- Shift Right

The shift operations move the bits of operand A by one position.

## 4. Operation Selection Logic

The operation selection logic is controlled by a 3-bit opcode.

An 8:1 multiplexer is used in the proposed architecture to select the output corresponding to the required operation.

## 5. Opcode Table

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

## 6. Status Flags

### Carry Flag
Indicates the presence of a carry-out generated during arithmetic operations.

### Zero Flag
Becomes logic HIGH when the result is equal to zero.

### Negative Flag
Indicates whether the most significant bit (MSB) of the result is HIGH.

### Overflow Flag
Indicates that the result of a signed arithmetic operation exceeds the representable range of a 4-bit number.

## 7. ALU Operation Equations

| Operation | Equation |
|---|---|
| Addition | Result = A + B |
| Subtraction | Result = A - B |
| AND | Result = A & B |
| OR | Result = A \| B |
| XOR | Result = A ^ B |
| NOT | Result = ~A |
| Shift Left | Result = A << 1 |
| Shift Right | Result = A >> 1 |
