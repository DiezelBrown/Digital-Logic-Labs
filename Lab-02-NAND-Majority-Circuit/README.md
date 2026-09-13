# Lab 2 - NAND Majority Circuit

## Overview

Built and tested a three-input combinational logic circuit using two
SN74LS00N quad 2-input NAND gate ICs on a breadboard.

The circuit implements a majority function, producing a HIGH output
when at least two of the three inputs are HIGH.

## Hardware

- 2x SN74LS00N quad 2-input NAND gate ICs
- Breadboard
- LED
- 470 ohm resistor
- Jumper wires
- 5 V power supply

## Boolean Function

M = AB + AC + BC

## Truth Table

| A | B | C | M |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |

## Hardware Testing

The circuit was tested by applying HIGH (5 V) and LOW (GND) logic
levels to inputs A, B, and C. An LED was used to indicate output M.

### Test 1: A = 0, B = 0, C = 0

Output: M = 0 (LED OFF)

### Test 2: A = 1, B = 0, C = 1

Output: M = 1 (LED ON)

## Skills Demonstrated

- Breadboard prototyping
- NAND gate implementation
- Boolean logic
- Combinational circuit design
- Truth table verification
- Hardware testing and debugging
